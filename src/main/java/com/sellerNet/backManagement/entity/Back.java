package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 实名认证申请入参说明
 *
 */
public class Back implements Serializable{
	

	/**
	 * 回复ID
	 */
	private Long id;
	
	/**
	 * 所属评论的id
	 */
	private Long evaluateId;
	/**
	 * 回复人id
	 */
	private Long fromUserId;
	
	/**
	 * 被回复人id
	 */
	private Long toUserId;
	
	/**
	 * 回复内容
	 */
	private String content;
	
	/**
	 * 回复时间
	 */
	private String createdTime;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getEvaluateId() {
		return evaluateId;
	}

	public void setEvaluateId(Long evaluateId) {
		this.evaluateId = evaluateId;
	}

	public Long getFromUserId() {
		return fromUserId;
	}

	public void setFromUserId(Long fromUserId) {
		this.fromUserId = fromUserId;
	}

	public Long getToUserId() {
		return toUserId;
	}

	public void setToUserId(Long toUserId) {
		this.toUserId = toUserId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCreatedTime() {
		return createdTime;
	}

	public void setCreatedTime(String createdTime) {
		this.createdTime = createdTime;
	}



	
	
}
