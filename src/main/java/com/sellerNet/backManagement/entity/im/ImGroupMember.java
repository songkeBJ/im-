package com.sellerNet.backManagement.entity.im;

import java.util.Date;

import com.sellerNet.backManagement.entity.BasePojo;

public class ImGroupMember extends BasePojo{
	
	private static final long serialVersionUID = 6751250751789600244L;
	private Long groupId;
	private Long userId;
	private String role = ImGroupRole.USER.name();
	private Long groupGradeId;
	private Boolean isEnabled = Boolean.valueOf(true);
	private String imNumber;
	private String nameInGroup;
	private String title;

	public Long getGroupId(){
		return this.groupId;
	}

	public void setGroupId(Long groupId) {
		this.groupId = groupId;
	}

	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getRole() {
		return this.role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Long getGroupGradeId() {
		return this.groupGradeId;
	}

	public void setGroupGradeId(Long groupGradeId) {
		this.groupGradeId = groupGradeId;
	}

	public Boolean getIsEnabled() {
		return this.isEnabled;
	}

	public void setIsEnabled(Boolean isEnabled) {
		this.isEnabled = isEnabled;
	}

	public String getImNumber() {
		return this.imNumber;
	}

	public void setImNumber(String imNumber) {
		this.imNumber = imNumber;
	}

	public String getNameInGroup() {
		return this.nameInGroup;
	}

	public void setNameInGroup(String nameInGroup) {
		this.nameInGroup = nameInGroup;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public ImGroupMember(){
	}

	public ImGroupMember(Long id, Date createdTime, Long groupId, Long userId, String role, Long groupGradeId, Boolean isEnabled, String imNumber, String nameInGroup, String title){
		super.setId(id);
	    super.setCreatedTime(createdTime);
	    this.groupId = groupId;
	    this.userId = userId;
	    this.role = role;
	    this.groupGradeId = groupGradeId;
	    this.isEnabled = isEnabled;
	    this.imNumber = imNumber;
	    this.nameInGroup = nameInGroup;
	    this.title = title;
	}
}