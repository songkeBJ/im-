package com.sellerNet.backManagement.dto;

import java.io.Serializable;
import java.util.Date;

public class ImageDtoUrl implements Serializable{
	
	  private static final long serialVersionUID = -8253101883893288547L;
	  private Long id;
	  private String username;
	  private String avatar;
	  private String type;
	  private String images;
	  private Date createTime;
	  
	  public String getUsername() {
		  return username;
	  }
	  public void setUsername(String username) {
		  this.username = username;
	  }
	  public String getAvatar() {
		  return avatar;
	  }
	  public void setAvatar(String avatar) {
		  this.avatar = avatar;
	  }
	  public String getType() {
		  return type;
	  }
	  public void setType(String type) {
		  this.type = type;
	  }
	 
	  public String getImages() {
		return images;
	  }
	  public void setImages(String images) {
		this.images = images;
	  }
	  public Date getCreateTime() {
		  return createTime;
	  }
	  public void setCreateTime(Date createTime) {
		  this.createTime = createTime;
	  }
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	  
}