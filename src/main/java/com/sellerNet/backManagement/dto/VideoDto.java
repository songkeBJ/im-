package com.sellerNet.backManagement.dto;

import java.io.Serializable;

public class VideoDto
  implements Serializable
{
  /**
	 * 
	 */
	private static final long serialVersionUID = -1759761034664312788L;
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