package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class LableParam4 implements Serializable{
	
	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -5530893854617417884L;
	private Long id;
	private Long friendId;
	private Long lableId;
	private String remark;//备注名称
	private String lableName;
	private List<String> phoneNumbers = new ArrayList<>();
	private String describe;
	private String avatar;
	
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
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public String getLableName() {
		return lableName;
	}
	public void setLableName(String lableName) {
		this.lableName = lableName;
	}
	public List<String> getPhoneNumbers() {
		return phoneNumbers;
	}
	public void setPhoneNumbers(List<String> phoneNumbers) {
		this.phoneNumbers = phoneNumbers;
	}
	public String getDescribe() {
		return describe;
	}
	public void setDescribe(String describe) {
		this.describe = describe;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public Long getLableId() {
		return lableId;
	}
	public void setLableId(Long lableId) {
		this.lableId = lableId;
	}
	
	
}
