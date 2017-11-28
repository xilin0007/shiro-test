package com.fxl.application.auth.mapper;

import java.util.List;

import com.fxl.application.auth.model.po.ManagerMenuAuthority;
import com.fxl.common.base.BaseMapper;

public interface ManagerMenuAuthorityMapper extends BaseMapper<ManagerMenuAuthority> {
    
	/**
	 * @Description 获取用户权限
	 * @createTime 2017年11月24日,下午4:44:35
	 * @createAuthor fangxilin
	 * @param adminId
	 * @return
	 */
	List<String> listAuthByAdminId(int adminId);
}