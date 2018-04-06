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
public class News extends BasePojo implements Serializable {
	
	/**
	 * 序列化
	 */
	private static final long serialVersionUID = -8843121561150947224L;
	
	/**
	 * pcUserId关联的userid
	 */
	private Long userId;
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
	 *图文或者视频资讯 
	 */
	private String imgOrVedio;
	public String getImgOrVedio() {
		return imgOrVedio;
	}
	public void setImgOrVedio(String imgOrVedio) {
		this.imgOrVedio = imgOrVedio;
	}
	public Long getUserId() {
		return userId;
	}
	public void setUserId(Long userId) {
		this.userId = userId;
	}
	private int orderNo;
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
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
	 * 发布人后台id
	 */
	private String  pcUserId;
	/**
	 * 热点,置顶类标签
	 */
	private String  lable;
	
	
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
	public String getPcUserId() {
		return pcUserId;
	}
	public void setPcUserId(String pcUserId) {
		this.pcUserId = pcUserId;
	}
}