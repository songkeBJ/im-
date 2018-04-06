package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.List;

public class LableParam2 implements Serializable{
	
	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -5530893854617417884L;
	private Long id;
	private Long lableId;
	private List<Long> userToInviteIds;
	public List<Long> getUserToInviteIds() {
		return userToInviteIds;
	}
	public void setUserToInviteIds(List<Long> userToInviteIds) {
		this.userToInviteIds = userToInviteIds;
	}
	public Long getLableId() {
		return lableId;
	}
	public void setLableId(Long lableId) {
		this.lableId = lableId;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	
}
