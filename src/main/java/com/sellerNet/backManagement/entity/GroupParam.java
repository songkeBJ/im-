package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 发布朋友圈入参说明
 *
 */
public class GroupParam implements Serializable{
	
	/**
	 * 序列话
	 */
	private static final long serialVersionUID = 3310851616863006840L;

	/**
	 * 用户ID
	 */
	private Long id;
	
	/**
	 * 群组名称
	 */
	private String groupName;
	
	/**
	 * 帮派类型
	 */
	private String codeNumber;
	
	/**
	 * 帮派类型
	 */
	private String type;
	
	
	/**
	 * 邀请用户的集合
	 */
	private List<Long> userToInviteIds=new ArrayList<>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Long> getUserToInviteIds() {
		return userToInviteIds;
	}

	public void setUserToInviteIds(List<Long> userToInviteIds) {
		this.userToInviteIds = userToInviteIds;
	}

	public String getCodeNumber() {
		return codeNumber;
	}

	public void setCodeNumber(String codeNumber) {
		this.codeNumber = codeNumber;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	
}
