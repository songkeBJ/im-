package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class Role extends BasePojo implements Serializable{
	
	/**
	 * 用户实体类序列化
	 */
	private static final long serialVersionUID = 1L;

	/**
     * 角色名称
     */
    private String name; 
     
    /**
     * 菜单集合
     */
    private String authIds;   
    
    /**
     * 角色描述
     */
    private String roleDescription;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthIds() {
		return authIds;
	}

	public void setAuthIds(String authIds) {
		this.authIds = authIds;
	}

	public String getRoleDescription() {
		return roleDescription;
	}

	public void setRoleDescription(String roleDescription) {
		this.roleDescription = roleDescription;
	}

}
