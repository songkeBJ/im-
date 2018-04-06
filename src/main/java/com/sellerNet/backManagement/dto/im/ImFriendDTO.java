package com.sellerNet.backManagement.dto.im;

import java.io.Serializable;
import java.util.Date;

public class ImFriendDTO
  implements Serializable
{
  private static final long serialVersionUID = -4642298245264003923L;
  private ImUserDTO friend;
  private Long friendsGroupId;

  public ImFriendDTO(Long id, Date createdTime, String username, String nickname, String phoneNumber, String avatar, String imNumber, String introduction, Long friendsGroupId)
  {
    this.friend = new ImUserDTO(id, createdTime, username, nickname, phoneNumber, avatar, imNumber, introduction);
    this.friendsGroupId = friendsGroupId;
  }

  public ImUserDTO getFriend()
  {
    return this.friend;
  }

  public void setFriend(ImUserDTO friend)
  {
    this.friend = friend;
  }

  public Long getFriendsGroupId()
  {
    return this.friendsGroupId;
  }

  public void setFriendsGroupId(Long friendsGroupId)
  {
    this.friendsGroupId = friendsGroupId;
  }
}