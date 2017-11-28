package com.fxl.shiro;

import java.util.Date;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.DisabledAccountException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;

import com.fxl.application.auth.model.po.CrmAdmin;
import com.fxl.application.auth.service.CrmAdminService;

/**
 * 自定义的指定Shiro验证用户登录的类
 */
public class UserRealm extends AuthorizingRealm{
    
    /*@Autowired
    private CrmAdminMapper crmAdminMapper;*/
    @Autowired
    private CrmAdminService crmAdminService; 
    
    /** 
     * 登录认证 ，验证当前登录的Subject(登录用到) 
     * @see 经测试:本例中该方法的调用时机为LoginController.login()方法中执行Subject.login()时 
     */ 
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
    	//获取登录用户名
    	String userName = (String) token.getPrincipal();
    	CrmAdmin admin = null;
    	try {
    		admin = crmAdminService.findCrmByUName(userName);
    	} catch(Exception e) {
    		e.printStackTrace();
    		throw new UnknownAccountException();
    	}
    	//没找到帐号
        if(admin == null) {
            throw new UnknownAccountException();
        }
        //禁用
        if(!admin.getIsEnabled()) {
        	throw new DisabledAccountException();
        }
        //锁住
        if(admin.getIsLocked()) {
        	throw new LockedAccountException();
        }
        //交给AuthenticatingRealm使用CredentialsMatcher进行密码匹配，如果觉得人家的不好可以自定义实现
        SimpleAuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(
        		admin.getUsername(), //用户名
        		admin.getPassword(), //密码
                this.getName()  //realm name
        );
        //得到session
        Subject subject = SecurityUtils.getSubject();
        Session session = subject.getSession(true);
        //保存用户信息
        session.setAttribute("user", admin);
        return authenticationInfo;
    }
  
    /** 
     * 授权查询回调函数, 进行鉴权但缓存中无用户的授权信息时调用 ，为当前登录的Subject授予角色和权限 
     * @see 经测试:本例中该方法的调用时机为需授权资源被访问时 
     * @see 经测试:并且每次访问需授权资源时都会执行该方法中的逻辑,这表明本例中默认并未启用AuthorizationCache 
     * @see 个人感觉若使用了Spring3.1开始提供的ConcurrentMapCache支持,则可灵活决定是否启用AuthorizationCache 
     * @see 比如说这里从数据库获取权限信息时,先去访问Spring3.1提供的缓存,而不使用Shior提供的AuthorizationCache 
     */  
    @Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {  
    	//获取登录用户名
    	String userName = (String) principals.getPrimaryPrincipal();
    	SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
    	try {
    		CrmAdmin admin = crmAdminService.findCrmByUName(userName);
    		if(null != admin) {
    			authorizationInfo.setRoles(crmAdminService.listRoleByAdminId(admin.getId()));
        		authorizationInfo.setStringPermissions(crmAdminService.listAuthByAdminId(admin.getId()));
        		//登录时间
                admin.setLoginDate(new Date());
        		//更新登录时间
        		//monitorAdminService.updateLoginDate(admin);
    		}
    	} catch(Exception e) {
    		e.printStackTrace();
    	}
    	return authorizationInfo;
    }  
      
	// 清除缓存  
    public void clearCached() {
        PrincipalCollection principals = SecurityUtils.getSubject().getPrincipals();  
        super.clearCache(principals);  
    }
    
    /** 
     * 将一些数据放到ShiroSession中,以便于其它地方使用 
     * @see 比如Controller,使用时直接用HttpSession.getAttribute(key)就可以取到 
     */  
    private void setSession(Object key, Object value){  
        Subject currentUser = SecurityUtils.getSubject();  
        if(null != currentUser){  
            Session session = currentUser.getSession();  
            System.out.println("Session默认超时时间为[" + session.getTimeout() + "]毫秒");  
            if(null != session){  
                session.setAttribute(key, value);  
            }  
        }  
    }
}
