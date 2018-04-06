package com.sellerNet.backManagement.entity.im;

import com.sellerNet.backManagement.entity.BasePojo;

public class ImNews extends BasePojo
{
  private static final long serialVersionUID = 1142701088850621315L;
  private String content;
  private Long groupId;

  public String getContent()
  {
    return this.content;
  }

  public void setContent(String content)
  {
    this.content = content;
  }

  public Long getGroupId()
  {
    return this.groupId;
  }

  public void setGroupId(Long groupId)
  {
    this.groupId = groupId;
  }
}