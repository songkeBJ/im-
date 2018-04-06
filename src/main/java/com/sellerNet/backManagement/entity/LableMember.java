package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author root
 * 标签
 *
 */
public class LableMember extends BasePojo implements Serializable{
	
	private static final long serialVersionUID = -402217056511998660L;
	private Long lableId;
	private String name;
	private Long userId;
	private Long friendId;
	private String avatar;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public Long getLableId() {
		return lableId;
	}
	public void setLableId(Long lableId) {
		this.lableId = lableId;
	}
	public Long getFriendId() {
		return friendId;
	}
	public void setFriendId(Long friendId) {
		this.friendId = friendId;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	
  
}