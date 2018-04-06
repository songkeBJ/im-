package com.sellerNet.backManagement.dto.im;

import com.sellerNet.backManagement.entity.im.ImGroupStatus;
import java.io.Serializable;
import java.util.List;

public class ImGroupDTO
  implements Serializable
{
  private static final long serialVersionUID = 2776368908680355618L;
  private String name;
  private String introduction;
  private int memberCount = 0;

  private String status = ImGroupStatus.ACTIVE.name();
  private String avatar;
  private String groupNumber;
  private int capacity;
  private String chatGroupId;
  private List<ImGroupMemberDTO> imGroupMembers;

  public String getName()
  {
    return this.name;
  }

  public void setName(String name)
  {
    this.name = name;
  }

  public String getIntroduction()
  {
    return this.introduction;
  }

  public void setIntroduction(String introduction)
  {
    this.introduction = introduction;
  }

  public int getMemberCount()
  {
    return this.memberCount;
  }

  public void setMemberCount(int memberCount)
  {
    this.memberCount = memberCount;
  }

  public String getStatus()
  {
    return this.status;
  }

  public void setStatus(String status)
  {
    this.status = status;
  }

  public String getAvatar()
  {
    return this.avatar;
  }

  public void setAvatar(String avatar)
  {
    this.avatar = avatar;
  }

  public String getGroupNumber()
  {
    return this.groupNumber;
  }

  public void setGroupNumber(String groupNumber)
  {
    this.groupNumber = groupNumber;
  }

  public int getCapacity()
  {
    return this.capacity;
  }

  public void setCapacity(int capacity)
  {
    this.capacity = capacity;
  }

  public String getChatGroupId()
  {
    return this.chatGroupId;
  }

  public void setChatGroupId(String chatGroupId)
  {
    this.chatGroupId = chatGroupId;
  }

  public List<ImGroupMemberDTO> getImGroupMembers()
  {
    return this.imGroupMembers;
  }

  public void setImGroupMembers(List<ImGroupMemberDTO> imGroupMembers)
  {
    this.imGroupMembers = imGroupMembers;
  }
}