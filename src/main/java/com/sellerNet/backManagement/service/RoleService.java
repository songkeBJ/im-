package com.sellerNet.backManagement.service;

import com.sellerNet.backManagement.entity.Role;


/**
 * @author gxg
 * @time   2016年9月14日
 * 
 */
public interface RoleService extends baseService<Role, Long>{
	
	int updateRole(String authIds,Long roleId);
	
}
