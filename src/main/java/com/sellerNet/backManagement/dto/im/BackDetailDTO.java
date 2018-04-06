package com.sellerNet.backManagement.dto.im;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.sellerNet.backManagement.entity.BasePojo;

public class BackDetailDTO extends BasePojo
  implements Serializable
{
	/**
	 * 评论人id
	 */
	private String title;
	/**
	 * 评论人头像
	 */
	private Long userId;
	/**
	 * 评论人昵称
	 */
	private String avatar;
	/**
	 * 评论内容
	 */
	private String pcUserName;
	/**
	 *评论时间
	 */
	private String focus;
	/**
	 * 点赞总数
	 */
	private Long isLikeTime;
	/**
	 *是否点过赞 
	 */
	public boolean isLike;
	
	/**
	 * 回复列表
	 */
	private List<BackOut> backList= new ArrayList<>();

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getPcUserName() {
		return pcUserName;
	}

	public void setPcUserName(String pcUserName) {
		this.pcUserName = pcUserName;
	}

	public String getFocus() {
		return focus;
	}

	public void setFocus(String focus) {
		this.focus = focus;
	}

	public Long getIsLikeTime() {
		return isLikeTime;
	}

	public void setIsLikeTime(Long isLikeTime) {
		this.isLikeTime = isLikeTime;
	}

	public boolean isLike() {
		return isLike;
	}

	public void setLike(boolean isLike) {
		this.isLike = isLike;
	}

	public List<BackOut> getBackList() {
		return backList;
	}

	public void setBackList(List<BackOut> backList) {
		this.backList = backList;
	}
	
}