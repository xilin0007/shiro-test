package com.fxl.application.auth.mapper;

import java.util.List;

import com.fxl.application.auth.model.po.ManagerAdminRole;
import com.fxl.common.base.BaseMapper;

public interface ManagerAdminRoleMapper extends BaseMapper<ManagerAdminRole> {
	/**
	 * @Description 获取用户角色
	 * @createTime 2017年11月24日,下午4:26:30
	 * @createAuthor fangxilin
	 * @param adminId
	 * @return
	 */
	List<Integer> listRoleByAdminId(int adminId);
}