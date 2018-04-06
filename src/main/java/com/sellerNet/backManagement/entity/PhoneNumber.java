package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author 手机号集合
 *
 */
public class PhoneNumber extends BasePojo implements Serializable{
	
	private static final long serialVersionUID = -402217056511998660L;
	private Long friendId;
	private String phoneNumber;
	public Long getFriendId() {
		return friendId;
	}
	public void setFriendId(Long friendId) {
		this.friendId = friendId;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

  
}