package com.sellerNet.backManagement.dto;

import java.util.Date;

public class UserRelationDto {
	private Integer id;

	private Integer userId;
	
	private String nickName;
	
	private String userPhone;
	
	private Integer beUserId;
	
	private String beNickName;
	
	private String beUserPhone;

	private Integer status;
	
	private Integer type;
	
    private String images; //凭证图片
    
    private String reason;//拉黑理由
    
    private String otherReason; //其他理由
    
    private Date createdTime; //其他理由

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getUserPhone() {
		return userPhone;
	}

	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}

	public Integer getBeUserId() {
		return beUserId;
	}

	public void setBeUserId(Integer beUserId) {
		this.beUserId = beUserId;
	}

	public String getBeNickName() {
		return beNickName;
	}

	public void setBeNickName(String beNickName) {
		this.beNickName = beNickName;
	}

	public String getBeUserPhone() {
		return beUserPhone;
	}

	public void setBeUserPhone(String beUserPhone) {
		this.beUserPhone = beUserPhone;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getOtherReason() {
		return otherReason;
	}

	public void setOtherReason(String otherReason) {
		this.otherReason = otherReason;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getCreateTime() {
		return createdTime;
	}

	public void setCreateTime(Date createTime) {
		this.createdTime = createTime;
	}
}
