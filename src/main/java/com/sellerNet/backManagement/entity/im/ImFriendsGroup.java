package com.sellerNet.backManagement.entity.im;

import com.sellerNet.backManagement.entity.BasePojo;
import javax.persistence.Column;

public class ImFriendsGroup extends BasePojo
{
  private static final long serialVersionUID = 3197129281393347222L;
  public static final int DEFAULT_ORDER = 10;
  private String name;

  @Column(nullable=false)
  private Integer friendsCount = Integer.valueOf(0);
  private Integer orderBy;
  private Boolean isDefault = Boolean.valueOf(true);

  public boolean isEmpty() {
    return (this.friendsCount == null) || (this.friendsCount.intValue() == 0);
  }

  public Integer getFriendsCount() {
    return this.friendsCount;
  }

  public void setFriendsCount(Integer friendsCount) {
    this.friendsCount = friendsCount;
  }

  public Integer getOrderBy() {
    return this.orderBy;
  }

  public void setOrderBy(Integer orderBy) {
    this.orderBy = orderBy;
  }

  public Boolean getIsDefault() {
    return this.isDefault;
  }

  public void setIsDefault(Boolean isDefault) {
    this.isDefault = isDefault;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }
}