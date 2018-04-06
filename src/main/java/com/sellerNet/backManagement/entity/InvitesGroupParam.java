package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.List;

public class InvitesGroupParam implements Serializable{
	
	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -5530893854617417884L;
//	private Long userId;
	private List<Long> userToInviteIds;
	private Long groupId;
	public List<Long> getUserToInviteIds() {
		return userToInviteIds;
	}
	public void setUserToInviteIds(List<Long> userToInviteIds) {
		this.userToInviteIds = userToInviteIds;
	}
	public Long getGroupId() {
		return groupId;
	}
	public void setGroupId(Long groupId) {
		this.groupId = groupId;
	}
	
	
	
}
