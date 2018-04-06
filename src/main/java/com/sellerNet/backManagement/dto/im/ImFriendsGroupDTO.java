package com.sellerNet.backManagement.dto.im;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

public class ImFriendsGroupDTO
  implements Serializable
{
  private static final long serialVersionUID = -4119201545194979741L;
  private Long id;
  private Date createdTime;
  private String name;
  private Integer friendsCount;
  private Integer orderBy;
  private List<ImFriendDTO> friends;

  public ImFriendsGroupDTO(Long id, Date createdTime, String name, Integer friendsCount, Integer orderBy)
  {
    this.id = id;
    this.createdTime = createdTime;
    this.name = name;
    this.friendsCount = friendsCount;
    this.orderBy = orderBy;
  }

  public Long getId() {
    return this.id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Date getCreatedTime() {
    return this.createdTime;
  }

  public void setCreatedTime(Date createdTime) {
    this.createdTime = createdTime;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
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

  public List<ImFriendDTO> getFriends() {
    return this.friends;
  }

  public void setFriends(List<ImFriendDTO> friends) {
    this.friends = friends;
  }
}