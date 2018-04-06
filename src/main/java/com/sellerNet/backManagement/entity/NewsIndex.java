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
public class NewsIndex extends BasePojo implements Serializable {
	
	/**
	 * 序列化
	 */
	private static final long serialVersionUID = -8843121561150947224L;
	/**
	 * 视频播放时长
	 */
	private String playLength;
	public String getPlayLength() {
		return playLength;
	}
	public void setPlayLength(String playLength) {
		this.playLength = playLength;
	}
	/**
	 * 标题图片
	 */
	private String titleImages;
	public String getTitleImages() {
		return titleImages;
	}
	public void setTitleImages(String titleImages) {
		this.titleImages = titleImages;
	}
	/**
	 * 新闻标题
	 */
	private String title;
	/**
	 * 新闻类型
	 */
	private String  type;
	public String getLable() {
		return lable;
	}
	public void setLable(String lable) {
		this.lable = lable;
	}
	/**
	 * 发布人姓名
	 */
	private String pcUserName;
	/**
	 * 评论次数
	 */
	private int commentTime;
	/**
	 * 浏览次数
	 */
	private int lookTime;
	/**
	 * 图集详情
	 */
	private List<ImgsItem> imgsItems;
	public List<ImgsItem> getImgsItems() {
		return imgsItems;
	}
	public void setImgsItems(List<ImgsItem> imgsItems) {
		this.imgsItems = imgsItems;
	}
	public int getLookTime() {
		return lookTime;
	}
	public void setLookTime(int lookTime) {
		this.lookTime = lookTime;
	}
	public String getPcUserName() {
		return pcUserName;
	}
	public void setPcUserName(String pcUserName) {
		this.pcUserName = pcUserName;
	}
	public int getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(int commentTime) {
		this.commentTime = commentTime;
	}
	/**
	 * 热点,置顶类标签
	 */
	private String  lable;
	
	
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
	private String content;
	private String imgOrVedio;
	public String getImgOrVedio() {
		return imgOrVedio;
	}
	public void setImgOrVedio(String imgOrVedio) {
		this.imgOrVedio = imgOrVedio;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	/**
	 * pcUserId关联的userid
	 */
	private Long userId;
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
}