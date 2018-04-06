package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author 评论实体类
 *
 */
public class EvaluateOut implements Serializable{

	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -402217056511998660L;
	
	/**
	 * 分类
	 */
	private Long evaluateId;
	
	/**
	 * 用户Id
	 */
	private Long userId;
	/**
	 * 评论内容
	 */
	private String content;
	/**
	 * 评论被点赞次数
	 */
	private int isLikeTime;
	
	public int getIsLikeTime() {
		return isLikeTime;
	}

	public void setIsLikeTime(int isLikeTime) {
		this.isLikeTime = isLikeTime;
	}

	public Long getEvaluateId() {
		return evaluateId;
	}

	public void setEvaluateId(Long evaluateId) {
		this.evaluateId = evaluateId;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}
	

	
}
