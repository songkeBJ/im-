package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 关注用户资讯列表
 */
public class FocusNewsList extends BasePojo implements Serializable {
	
	/**
	 * 昵称
	 */
	private String nickName;
	/**
	 * 头像
	 */
	private String avatar;
	/*
	 * 个人签名
	 */
	private String sign;
	/*
	 * 被关注人手机号
	 */
	private String phoneNumber;
	/*
	 * 资讯列表
	 */
	private List<NewsIndex> newsIndexList;
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getSign() {
		return sign;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}
	public List<NewsIndex> getNewsIndexList() {
		return newsIndexList;
	}
	public void setNewsIndexList(List<NewsIndex> newsIndexList) {
		this.newsIndexList = newsIndexList;
	}
	
}