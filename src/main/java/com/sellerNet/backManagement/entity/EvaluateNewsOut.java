package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author 评论实体类
 *
 */
public class EvaluateNewsOut extends BasePojo implements Serializable{

	
	/**
	 * 分类
	 */
	private Long evaluateId;
	/**
	 * 评论人头像
	 */
	private String avatar;
	/**
	 * 评论人昵称
	 */
	private String nickName;
	/**
	 *回复次数 
	 */
	private int backTime;
	/**
	 * 评论内容
	 */
	private String content;
	/**
	 * 评论被点赞次数
	 */
	private int isLikeTime;
	/**
	 *是否点过赞 
	 */
	private boolean isLike;
	
	public boolean getIsLike() {
		return isLike;
	}

	public void setIsLike(boolean isLike) {
		this.isLike = isLike;
	}

	public int getBackTime() {
		return backTime;
	}

	public void setBackTime(int backTime) {
		this.backTime = backTime;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	
	
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
	
	
}
