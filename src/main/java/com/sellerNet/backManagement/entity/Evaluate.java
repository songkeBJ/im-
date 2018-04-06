package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author 评论实体类
 *
 */
public class Evaluate extends BasePojo implements Serializable{

	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -402217056511998660L;
	
	/**
	 * 分类
	 */
	private Long objectId;
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
	private boolean likeOn;
	
	/**
	 * 评论内容
	 */
	private String content;
	
	/**
	 * 父类ID
	 */
	private Long parentId;
	/**
	 *类别 
	 */
	private String category;
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public boolean isLikeOn() {
		return likeOn;
	}

	public void setLikeOn(boolean likeOn) {
		this.likeOn = likeOn;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getObjectId() {
		return objectId;
	}

	public void setObjectId(Long objectId) {
		this.objectId = objectId;
	}

	public Long getOrderBy() {
		return orderBy;
	}

	public void setOrderBy(Long orderBy) {
		this.orderBy = orderBy;
	}

	public Long getParentId() {
		return parentId;
	}

	public void setParentId(Long parentId) {
		this.parentId = parentId;
	}

	
}
