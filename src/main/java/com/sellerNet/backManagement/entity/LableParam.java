package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class LableParam implements Serializable{
	
	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -5530893854617417884L;
	private Long id;
	private Long friendId;
	private String name;
	private List<Long> userToInviteIds;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Long getFriendId() {
		return friendId;
	}
	public void setFriendId(Long friendId) {
		this.friendId = friendId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public List<Long> getUserToInviteIds() {
		return userToInviteIds;
	}
	public void setUserToInviteIds(List<Long> userToInviteIds) {
		this.userToInviteIds = userToInviteIds;
	}
	
	
	
}
