package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 今日新闻实体类
 * @author root
 *
 */
/**
 * @author root
 *
 */
public class NewsIndexDetail extends BasePojo implements Serializable {
	
	/**
	 * 视频播放时长
	 */
	private String playLength;
	
	/*
	 * 图集项
	 */
	private List<ImgsItem> imgsItems;
	
	public List<ImgsItem> getImgsItems() {
		return imgsItems;
	}
	public void setImgsItems(List<ImgsItem> imgsItems) {
		this.imgsItems = imgsItems;
	}
	public String getPlayLength() {
		return playLength;
	}
	public void setPlayLength(String playLength) {
		this.playLength = playLength;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTitleImages() {
		return titleImages;
	}
	public void setTitleImages(String titleImages) {
		this.titleImages = titleImages;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public int getIsLikeTime() {
		return isLikeTime;
	}
	public void setIsLikeTime(int isLikeTime) {
		this.isLikeTime = isLikeTime;
	}
	private int lookTime;
	private String imgOrVedio;
	public String getImgOrVedio() {
		return imgOrVedio;
	}
	public void setImgOrVedio(String imgOrVedio) {
		this.imgOrVedio = imgOrVedio;
	}
	public int getLookTime() {
		return lookTime;
	}
	public void setLookTime(int lookTime) {
		this.lookTime = lookTime;
	}
	/**
	 *是否点过赞 
	 */
	public boolean isLike;
	
	public boolean getIsLike() {
		return isLike;
	}
	public void setIsLike(boolean isLike) {
		this.isLike = isLike;
	}
	/**
	 * 评论内容
	 */
	private List<EvaluateNewsOut> evaluates= new ArrayList<>();
	public List<EvaluateNewsOut> getEvaluates() {
		return evaluates;
	}
	public void setEvaluates(List<EvaluateNewsOut> evaluates) {
		this.evaluates = evaluates;
	}
	/**
	 * 发布人id
	 */
	private Long userId;
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	/**
	 * 新闻标题
	 */
	private String title;
	/**
	 * 新闻正文
	 */
	private String content;
	/**
	 * 标题图片
	 */
	private String titleImages;
	/**
	 * 发布人头像
	 */
	private String avatar;
	/**
	 * 点赞次数
	 */
	private int isLikeTime;
	/**
	 * 新闻类型
	 */
	private String  type;
	/**
	 * 发布人姓名
	 */
	private String pcUserName;
	public String getPcUserName() {
		return pcUserName;
	}
	public void setPcUserName(String pcUserName) {
		this.pcUserName = pcUserName;
	}
	/**
	 *关注用户id 
	 */
	private String focus;
	public String getFocus() {
		return focus;
	}
	public void setFocus(String focus) {
		this.focus = focus;
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
}