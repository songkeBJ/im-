package com.sellerNet.backManagement.dto.im;

import com.sellerNet.backManagement.entity.BasePojo;

public class BackOut extends BasePojo{
	
	/**
	 * 回复人id
	 */
	private Long fromUserId;
	/**
	 * 回复人头像
	 */
	private String fromUserAvatar;
	/**
	 * 回复人昵称
	 */
	private String fromUserNickName;
	/**
	 * 回复内容
	 */
	private String content;
	/**
	 * 被回复id
	 */
	private Long toUserId;
	/**
	 * 被回复昵称
	 */
	private String toUserNickName;
	/**
	 * 点赞总数
	 */
	private Long isLikeTime;
	/**
	 *是否点过赞 
	 */
	public boolean isLike;
	public Long getFromUserId() {
		return fromUserId;
	}
	public void setFromUserId(Long fromUserId) {
		this.fromUserId = fromUserId;
	}
	public String getFromUserAvatar() {
		return fromUserAvatar;
	}
	public void setFromUserAvatar(String fromUserAvatar) {
		this.fromUserAvatar = fromUserAvatar;
	}
	public String getFromUserNickName() {
		return fromUserNickName;
	}
	public void setFromUserNickName(String fromUserNickName) {
		this.fromUserNickName = fromUserNickName;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Long getToUserId() {
		return toUserId;
	}
	public void setToUserId(Long toUserId) {
		this.toUserId = toUserId;
	}
	public String getToUserNickName() {
		return toUserNickName;
	}
	public void setToUserNickName(String toUserNickName) {
		this.toUserNickName = toUserNickName;
	}
	public Long getIsLikeTime() {
		return isLikeTime;
	}
	public void setIsLikeTime(Long isLikeTime) {
		this.isLikeTime = isLikeTime;
	}
	public boolean getIsLike() {
		return isLike;
	}
	public void setIsLike(boolean isLike) {
		this.isLike = isLike;
	}
}
