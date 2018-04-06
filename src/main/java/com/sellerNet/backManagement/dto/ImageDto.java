package com.sellerNet.backManagement.dto;

import java.io.Serializable;

public class ImageDto
  implements Serializable
{
  private static final long serialVersionUID = -8253101883893288547L;
  public static final int DEFAULT_ORDER = 10;
  private String url;
  private Integer orderBy = Integer.valueOf(10);

  public String getUrl()
  {
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
}