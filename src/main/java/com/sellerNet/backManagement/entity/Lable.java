package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author root
 * 标签
 *
 */
public class Lable extends BasePojo implements Serializable{
	
	private static final long serialVersionUID = -402217056511998660L;
	private Long friendId;
	private String name;
	private Long userId;
	
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
	public Long getFriendId() {
		return friendId;
	}
	public void setFriendId(Long friendId) {
		this.friendId = friendId;
	}
	
  
}