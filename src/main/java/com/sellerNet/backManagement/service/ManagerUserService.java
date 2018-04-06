package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.AgentUser;


/**
 * @author gxg
 * @time   2016年9月14日
 * 
 */
public interface ManagerUserService extends baseService<AgentUser, Long>{
	
	AgentUser findByNameAndPassowrd(String username,String password);
	
	AgentUser findByName(String username);
	
	List<AgentUser> findByRoleId(Long roleId);

	AgentUser findByUserId(Long userId);
	
}
