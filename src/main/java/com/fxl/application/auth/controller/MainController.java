package com.fxl.application.auth.controller;

import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Date;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.fxl.application.auth.model.po.CrmAdmin;
import com.fxl.application.auth.service.CrmAdminService;
import com.fxl.common.base.BaseController;
import com.fxl.common.util.ReturnMsg;
import com.fxl.common.util.TimeUtils;
import com.fxl.common.util.VerifyCodeUtil;

@Controller
@RequestMapping("/main")
public class MainController extends BaseController {
	
	@Autowired
    private CrmAdminService crmAdminService;
	
	@RequestMapping("/login")
	public ModelAndView login() {
		logger.info("进入登录页面！");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}
	
	/** 
     * 获取验证码图片和文本(验证码文本会保存在HttpSession中) 
     */  
    @RequestMapping("/getVerifyCodeImage")  
    public void getVerifyCodeImage(HttpServletRequest request, HttpServletResponse response) throws IOException {  
        //设置页面不缓存  
        response.setHeader("Pragma", "no-cache");  
        response.setHeader("Cache-Control", "no-cache");  
        response.setDateHeader("Expires", 0);  
        String verifyCode = VerifyCodeUtil.generateTextCode(VerifyCodeUtil.TYPE_NUM_ONLY, 4, null);
        //将验证码放到HttpSession里面  
        request.getSession().setAttribute("verifyCode", verifyCode);  
        System.out.println("本次生成的验证码为[" + verifyCode + "],已存放到HttpSession中");  
        //设置输出的内容的类型为JPEG图像  
        response.setContentType("image/jpeg");  
        BufferedImage bufferedImage = VerifyCodeUtil.generateImageCode(verifyCode, 90, 30, 3, true, Color.WHITE, Color.BLACK, null);  
        //写给浏览器  
        ImageIO.write(bufferedImage, "JPEG", response.getOutputStream());
    }
	
    @ResponseBody
	@RequestMapping("/dologin")
	public ReturnMsg dologin(@RequestParam String username, 
			@RequestParam String password) {
		// 获取用户请求表单中输入的验证码
		// String submitCode = WebUtils.getCleanParam(request, "verifyCode");
		// 获取HttpSession中的验证码
		/*String correctCode = (String) getRequest().getSession().getAttribute("verifyCode");
		System.out.println("用户[" + username + "]登录时输入的验证码为[" + verifyCode + "],HttpSession中的验证码为[" + correctCode + "]");  
		if (StringUtils.isEmpty(verifyCode) || !StringUtils.equals(correctCode, verifyCode.toLowerCase())) {
			return new ReturnMsg(ReturnMsg.FAIL, "验证码错误");
		}*/
		//获取异常名
		/*String exceptionClassName = (String) getRequest().getAttribute("shiroLoginFailure");
		if (StringUtils.isEmpty(exceptionClassName)) {//登录成功
			return new ReturnMsg(ReturnMsg.SUCCESS, "登录成功");
		}*/
    	UsernamePasswordToken token = new UsernamePasswordToken(username, password);  
        token.setRememberMe(true);
    	//获取当前的Subject  
        Subject currentUser = SecurityUtils.getSubject();
        //错误信息
        try {
        	currentUser.login(token);
		} catch (UnknownAccountException uae) {
			return new ReturnMsg(ReturnMsg.FAIL, "用户名不存在");
		} catch (LockedAccountException lae) {
			return new ReturnMsg(ReturnMsg.FAIL, "账号已锁定，请联系管理员处理");
		} catch (DisabledAccountException dae) {
			return new ReturnMsg(ReturnMsg.FAIL, "用户已被禁用");
		}  catch (IncorrectCredentialsException ice) {
			String error = "密码错误";
			//查询用户信息
			CrmAdmin admin = crmAdminService.findCrmByUName(username);
			// 时间为空
			if (null == admin.getLockedDate() || !TimeUtils.isSameDay(admin.getLockedDate(), new Date())) {
				admin.setLoginFailureCount(1);// 登录失败
			} else {
				admin.setLoginFailureCount(admin.getLoginFailureCount().intValue() + 1);
				//一天内密码错误5次，锁定账号
				if (admin.getLoginFailureCount().intValue() >= 5 && TimeUtils.isSameDay(admin.getLockedDate(), new Date())) {
					error = "账号已锁定，请联系管理员处理";
					admin.setLockedDate(new Date());
					admin.setIsLocked(true);
				}
			}
			//更新
			crmAdminService.update(admin);
			return new ReturnMsg(ReturnMsg.FAIL, error);
		} catch (AuthenticationException ae) {
			return new ReturnMsg(ReturnMsg.FAIL, "AuthenticationException");
		}
        return new ReturnMsg(ReturnMsg.SUCCESS, "登录成功", getRequest().getContextPath() + "/main/main");
	}
    
    /**
     * 登录成功后跳转的页面
     */
    @RequestMapping("/main")
	public ModelAndView main() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("main");
		return mv;
	}
    
    /** 
     * 用户登出 
     */  
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		SecurityUtils.getSubject().logout();
		return InternalResourceViewResolver.REDIRECT_URL_PREFIX + "/main/login";
	}
}
