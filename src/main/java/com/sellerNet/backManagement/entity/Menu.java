package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * 代理商菜单
 * @author gxg
 * @time   2016年9月13日
 * 
 */
public class Menu extends BasePojo implements Serializable{

	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -8463358485852871300L;

	/**
	 * 菜单名称
	 */
	private String authName;
	
	/**
	 * 菜单路径
	 */
	private String authPath;
	
	/**
	 * 菜单父类
	 */
	private Long parentId;
	
	/**
	 * 菜单描述
	 */
	private String authDescription;
	
	/**
	 * 菜单状态
	 */
	private String state;
	
	/**
	 * 菜单图片
	 */
	private String iconCls;

	public String getAuthName() {
		return authName;
	}

	public void setAuthName(String authName) {
		this.authName = authName;
	}

	public String getAuthPath() {
		return authPath;
	}

	public void setAuthPath(String authPath) {
		this.authPath = authPath;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	public String getAuthDescription() {
		return authDescription;
	}

	public void setAuthDescription(String authDescription) {
		this.authDescription = authDescription;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getIconCls() {
		return iconCls;
	}

	public void setIconCls(String iconCls) {
		this.iconCls = iconCls;
	}
	
	
    
}
