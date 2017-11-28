package com.fxl.application.auth.service.impl;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.fxl.application.auth.mapper.CrmAdminMapper;
import com.fxl.application.auth.mapper.ManagerAdminRoleMapper;
import com.fxl.application.auth.mapper.ManagerMenuAuthorityMapper;
import com.fxl.application.auth.model.po.CrmAdmin;
import com.fxl.application.auth.service.CrmAdminService;
import com.fxl.common.base.BaseMapper;
import com.fxl.common.base.BaseServiceImpl;

@Service
public class CrmAdminServiceImpl extends BaseServiceImpl<CrmAdmin> implements CrmAdminService {

	@Autowired
	private CrmAdminMapper crmAdminMapper;
	@Autowired
	private ManagerAdminRoleMapper managerAdminRoleMapper;
	@Autowired
	private ManagerMenuAuthorityMapper managerMenuAuthorityMapper;
	
	@Override
	protected BaseMapper<CrmAdmin> getDao() {
		return crmAdminMapper;
	}

	@Override
	public CrmAdmin findCrmByUName(String username) {
		return crmAdminMapper.findCrmByUName(username);
	}
	
	@Override
	public Set<String> listRoleByAdminId(int adminId) {
		List<Integer> roleIds = managerAdminRoleMapper.listRoleByAdminId(adminId);
		Set<String> set = new HashSet<String>();
		for(Integer item : roleIds) {
			set.add(String.valueOf(item));
		}
		return set;
	}

	@Override
	public Set<String> listAuthByAdminId(int adminId) {
		List<String> list = managerMenuAuthorityMapper.listAuthByAdminId(adminId);
		Set<String> set = new HashSet<String>();
		for(String item : list) {
			set.add(item);
		}
		return set;
	}
}
