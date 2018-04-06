package com.sellerNet.backManagement.entity.im;

import com.sellerNet.backManagement.entity.BasePojo;

public class ImFriend extends BasePojo
{
  private static final long serialVersionUID = 1142701088850621315L;
  private Long userId;
  private Long friendId;
  private String remark;//备注名称
  private Long lableId;
  private Long phoneNumberId;
  private String describe;
  private String avatar;

  public ImFriend()
  {
  }

  public ImFriend(Long userId, Long friendId)
  {
    this.userId = userId;
    this.friendId = friendId;
  }

  public Long getUserId() {
    return this.userId;
  }

  public void setUserId(Long userId) {
    this.userId = userId;
  }

  public Long getFriendId() {
    return this.friendId;
  }

  public void setFriendId(Long friendId) {
    this.friendId = friendId;
  }

public String getRemark() {
	return remark;
}

public void setRemark(String remark) {
	this.remark = remark;
}

public Long getLableId() {
	return lableId;
}

public void setLableId(Long lableId) {
	this.lableId = lableId;
}

public Long getPhoneNumberId() {
	return phoneNumberId;
}

public void setPhoneNumberId(Long phoneNumberId) {
	this.phoneNumberId = phoneNumberId;
}


public String getDescribe() {
	return describe;
}

public void setDescribe(String describe) {
	this.describe = describe;
}

public String getAvatar() {
	return avatar;
}

public void setAvatar(String avatar) {
	this.avatar = avatar;
}


  
}