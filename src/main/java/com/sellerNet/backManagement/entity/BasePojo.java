package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.Date;

public class BasePojo implements Serializable, Cloneable {
  private static final long serialVersionUID = 1L;
  private Long id;
  private Date createdTime = new Date();
  private Long creator;
  private Boolean isLocked = Boolean.valueOf(false);

  private Date lastModifiedTime = new Date();
  private Long lastModifier;

  //特别字段(时间戳)
  private String timeStamp;
  
  
  public String getTimeStamp() {
	  Long timestr = this.createdTime.getTime();
	return timestr.toString();
  }

  public void setTimeStamp(String timeStamp) {
	this.timeStamp = timeStamp;
  }

  public Long getId()
  {
    return this.id;
  }

  public void setId(Long id) {
    this.id = id;
  }
  //@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
  //@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
  public Date getCreatedTime() {
    return this.createdTime;
  }

  public void setCreatedTime(Date createdTime) {
    this.createdTime = createdTime;
  }

  public Long getCreator() {
    return this.creator;
  }

  public void setCreator(Long creator) {
    this.creator = creator;
  }

  public Boolean getIsLocked() {
    return this.isLocked;
  }

  public void setIsLocked(Boolean isLocked) {
    this.isLocked = isLocked;
  }
  //@DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
  //@JsonFormat(pattern="yyyy-MM-dd HH:mm:ss", timezone="GMT+8")
  public Date getLastModifiedTime() {
    return this.lastModifiedTime;
  }

  public void setLastModifiedTime(Date lastModifiedTime) {
    this.lastModifiedTime = lastModifiedTime;
  }

  public Long getLastModifier() {
    return this.lastModifier;
  }

  public void setLastModifier(Long lastModifier) {
    this.lastModifier = lastModifier;
  }

  public void preCreate(Long userId) {
    this.createdTime = new Date();
    this.creator = userId;
    preModified(userId);
  }

  public void preDelete(Long userId) {
    this.isLocked = Boolean.valueOf(false);
    preModified(userId);
  }

  public void preModified(Long userId) {
    this.lastModifiedTime = new Date();
    this.lastModifier = userId;
  }
}