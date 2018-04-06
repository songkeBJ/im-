package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *关注项
 */
public class FocusItem implements Serializable{
	
	/*
	 * 关注用户id
	 */
	private Long userId;
	/*
	 * 关注用户手机号
	 */
	private String phoneNumber;
	/*
	 * 关注用户头像
	 */
	private String avatar;
	/*
	 * 关注用户昵称
	 */
	private String nickName;
	/*
	 * 发布资讯量
	 */
	private String newsCount;
	/*
	 * 被关注量
	 */
	private String focusCount;
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getNewsCount() {
		return newsCount;
	}
	public void setNewsCount(String newsCount) {
		this.newsCount = newsCount;
	}
	public String getFocusCount() {
		return focusCount;
	}
	public void setFocusCount(String focusCount) {
		this.focusCount = focusCount;
	}
	
}
