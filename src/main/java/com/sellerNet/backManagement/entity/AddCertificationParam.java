package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 实名认证申请入参说明
 */
public class AddCertificationParam implements Serializable{
	
	/**
	 * 序列号
	 */
	private static final long serialVersionUID = -347964462579542564L;

	/**
	 * 用户ID
	 */
	private Long userId;
	
	/**
	 * 身份证号
	 */
	private String userCode;
	/**
	 * 真实姓名
	 */
	private String userRealName;
	
	/**
	 * 上传图片
	 */
	private List<String> images=new ArrayList<>();


	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public String getUserRealName() {
		return userRealName;
	}

	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}

	
	
}
