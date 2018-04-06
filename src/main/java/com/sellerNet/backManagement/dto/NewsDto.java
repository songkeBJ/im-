package com.sellerNet.backManagement.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.sellerNet.backManagement.entity.BasePojo;
import com.sellerNet.backManagement.entity.ImgsItem;

/**
 * 今日新闻实体类
 * @author root
 *
 */
/**
 * @author root
 *
 */
public class NewsDto extends BasePojo implements Serializable {
	
	/**
	 * 序列化
	 */
	private static final long serialVersionUID = -8843121561150947224L;
	/**
	 * 视频播放时长
	 */
	private String playLength;
	/*
	 * 发布人id
	 */
	private Long userId;
	
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	public String getPlayLength() {
		return playLength;
	}
	public void setPlayLength(String playLength) {
		this.playLength = playLength;
	}
	
	/**
	 * 新闻标题
	 */
	private String title;
	/**
	 * 新闻内容
	 */
	private String  content;
	/**
	 * 投诉总次数
	 */
	private String  allCount;
	public String getAllCount() {
		return allCount;
	}
	public void setAllCount(String allCount) {
		this.allCount = allCount;
	}
	/**
	 * 新闻类型
	 */
	private String  type;
	/**
	 *标题图片 
	 */
	private String titleImages;
	private String imgOrVedio;
	
	public String getImgOrVedio() {
		return imgOrVedio;
	}
	public void setImgOrVedio(String imgOrVedio) {
		this.imgOrVedio = imgOrVedio;
	}
	public String getTitleImages() {
		return titleImages;
	}
	public void setTitleImages(String titleImages) {
		this.titleImages = titleImages;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	public String getLable() {
		return lable;
	}
	public void setLable(String lable) {
		this.lable = lable;
	}
	/**
	 * 发布人姓名
	 */
	private String  nickName;
	/**
	 * 评论次数
	 */
	private String  commentTime;
	/**
	 * 热点,置顶类标签
	 */
	private String  lable;
	/*
	 * 图集项集合
	 */
	private List<ImgsItem> imgsItems;
	
public List<ImgsItem> getImgsItems() {
		return imgsItems;
	}
	public void setImgsItems(List<ImgsItem> imgsItems) {
		this.imgsItems = imgsItems;
	}
public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
}