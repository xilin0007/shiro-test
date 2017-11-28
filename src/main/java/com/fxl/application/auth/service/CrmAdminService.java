package com.fxl.application.auth.service;

import java.util.Set;

import com.fxl.application.auth.model.po.CrmAdmin;
import com.fxl.common.base.BaseService;

public interface CrmAdminService extends BaseService<CrmAdmin> {
	
	/**
	 * @Description 通过username查询用户信息
	 * @createTime 2017年11月27日,下午2:41:25
	 * @createAuthor fangxilin
	 * @param username
	 * @return
	 */
	CrmAdmin findCrmByUName(String username);
	
	/**
	 * @Description 获取用户角色id列表
	 * @createTime 2017年11月24日,下午4:27:17
	 * @createAuthor fangxilin
	 * @param adminId
	 * @return
	 */
	Set<String> listRoleByAdminId(int adminId);
	
	/**
	 * @Description 获取用户权限列表
	 * @createTime 2017年11月24日,下午4:46:37
	 * @createAuthor fangxilin
	 * @param adminId
	 * @return
	 */
	Set<String> listAuthByAdminId(int adminId);
}
