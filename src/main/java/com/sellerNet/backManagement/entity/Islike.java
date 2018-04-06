package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author gxg
 * 
 * 点赞实体类
 *
 */
public class Islike extends BasePojo implements Serializable{

	
	/**
	 * 序列话对象
	 */
	private static final long serialVersionUID = 2874400916198623335L;
	
	/**
	 * 心得ID
	 */
	private Long exprienceId;
	

	/**
     * 是否点赞
     */
	private Boolean islike = false; 
	/**
	 * 类别
	 */
	private String category; 
	
	

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Boolean getIslike() {
		return islike;
	}

	public void setIslike(Boolean islike) {
		this.islike = islike;
	}

	public Long getExprienceId() {
		return exprienceId;
	}

	public void setExprienceId(Long exprienceId) {
		this.exprienceId = exprienceId;
	}


}
