package com.sellerNet.backManagement.entity;

import java.util.Date;

import javax.print.attribute.standard.DateTimeAtCompleted;

public class AppMessage extends BasePojo{
	/**
	 * 
	 */
	private static final long serialVersionUID = -5849633686642121850L;
	public AppMessage(){
		
	}	

	public AppMessage(Long id,Date pushtime, Date readtime, Integer isread,
			String content, String title, Long userid, String thumbnail) {
		super();
		this.id=id;
		this.pushtime = pushtime;
		this.readtime = readtime;
		this.isread = isread;
		this.content = content;
		this.title = title;
		this.userid = userid;
		this.thumbnail = thumbnail;
	}
	
	//
	private Long id;
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	//推送时间
	private Date pushtime;
	//读取时间
	private Date readtime;
	//是否已读
	private Integer isread;
	//消息内容
	private	String content;
	//消息标题
	private String title;
	//用户id
	private Long userid;
	//图标
	private String thumbnail;
	//消息类型
	private int type;
	
	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public Date getPushtime() {
		return pushtime;
	}
	public void setPushtime(Date pushtime) {
		this.pushtime = pushtime;
	}
	public Date getReadtime() {
		return readtime;
	}
	public void setReadtime(Date readtime) {
		this.readtime = readtime;
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
	public Long getUserid() {
		return userid;
	}
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public Integer getIsread() {
		return isread;
	}

	public void setIsread(Integer isread) {
		this.isread = isread;
	}
	  
	  
}
