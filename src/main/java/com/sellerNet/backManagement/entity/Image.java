package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.Date;

public class Image extends BasePojo
  implements Serializable
{
  private static final long serialVersionUID = -8253101883893288547L;
  public static final int DEFAULT_ORDER = 10;
  private Long objectId;
  private String category;
  private String url;
  private String avatar;
  private String username;
  private Integer orderBy = Integer.valueOf(10);

  public Image(Date createdTime, Integer orderBy, Long objectId, String url,String avatar,String username)
  {
    setCreatedTime(createdTime);
    setOrderBy(orderBy);
    this.objectId = objectId;
    this.url = url;
    this.avatar=avatar;
    this.username=username;
  }

  public Image() {
  }

  public Long getObjectId() {
    return this.objectId;
  }

  public void setObjectId(Long objectId) {
    this.objectId = objectId;
  }

  public String getCategory() {
    return this.category;
  }

  public void setCategory(String category) {
    this.category = category;
  }

  public String getUrl() {
    return this.url;
  }

  public void setUrl(String url) {
    this.url = url;
  }

  public Integer getOrderBy() {
    return this.orderBy;
  }

  public void setOrderBy(Integer orderBy) {
    this.orderBy = orderBy;
  }

public String getAvatar() {
	return avatar;
}

public void setAvatar(String avatar) {
	this.avatar = avatar;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}
  
  
}