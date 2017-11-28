package com.fxl.application.auth.mapper;

import com.fxl.application.auth.model.po.CrmAdmin;
import com.fxl.common.base.BaseMapper;

public interface CrmAdminMapper extends BaseMapper<CrmAdmin> {
    
	/**
	 * @Description 通过username查询用户信息
	 * @createTime 2017年11月24日,下午3:28:28
	 * @createAuthor fangxilin
	 * @param username
	 * @return
	 */
	CrmAdmin findCrmByUName(String username);
}