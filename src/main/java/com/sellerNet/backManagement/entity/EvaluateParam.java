package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author 评论入参
 *
 */
public class EvaluateParam implements Serializable{
	
	/**
	 * 序列话
	 */
	private static final long serialVersionUID = 3310851616863006840L;

	/**
	 * 朋友圈ID
	 */
	private Long exprienceId;
	
	/**
	 * 评论ID
	 */
	private Long evaluateId;
	
	
	/**
	 * 评论人ID
	 */
	private Long userId;
	
	/**
	 * 排序
	 */
	private Long orderBy;
	/**
	 * 点赞
	 */
	private String like;
	
	/**
	 * 评论内容
	 */
	private String content;
	
	/**
	 * 评论父类ID
	 */
	private String parentId;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(Long orderBy) {
		this.orderBy = orderBy;
	}


	public String getLike() {
		return like;
	}

	public void setLike(String like) {
		this.like = like;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getExprienceId() {
		return exprienceId;
	}

	public void setExprienceId(Long exprienceId) {
		this.exprienceId = exprienceId;
	}

	public String getParentId() {
		return parentId;
	}

	public void setParentId(String parentId) {
		this.parentId = parentId;
	}

	public Long getEvaluateId() {
		return evaluateId;
	}

	public void setEvaluateId(Long evaluateId) {
		this.evaluateId = evaluateId;
	}
	
	
}
