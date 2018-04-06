package com.sellerNet.backManagement.dto.im;

import java.io.Serializable;

public class ImGroupMemberDTO implements Serializable{
  private static final long serialVersionUID = -5817076508507903458L;
  private Long groupMemberId;
  private int id;//用户id
  private String username;
  private String nameInGroup;
  private String avatar;
  private String role;
  private String gradeName;
  
  private String title;//说明
  private String districtName;//地区
  private String thermalSignatrue;//个性签名
  private String images;//图片集合
  private int isfriend = 0;//是否是好友
  private boolean isEnabled;

  public ImGroupMemberDTO()
  {
  }

  public ImGroupMemberDTO(Long id, String avatar, String imNumber, String role, String gradeName, Boolean isEnabled, String nameInGroup, String title)
  {
    this.groupMemberId = id;
    this.avatar = avatar;
    this.role = role;
    this.gradeName = gradeName;
    this.nameInGroup = nameInGroup;
  }

  public Long getGroupMemberId() {
	return groupMemberId;
}

public void setGroupMemberId(Long groupMemberId) {
	this.groupMemberId = groupMemberId;
}

public String getAvatar() {
    return this.avatar;
  }

  public void setAvatar(String avatar) {
    this.avatar = avatar;
  }


  public String getRole() {
    return this.role;
  }

  public void setRole(String role) {
    this.role = role;
  }

  public String getGradeName() {
	return gradeName;
}

public void setGradeName(String gradeName) {
	this.gradeName = gradeName;
}

public String getUsername() {
	return username;
}

public void setUsername(String username) {
	this.username = username;
}

	public String getNameInGroup() {
    return this.nameInGroup;
  }

  public void setNameInGroup(String nameInGroup) {
    this.nameInGroup = nameInGroup;
  }

public String getDistrictName() {
	return districtName;
}

public void setDistrictName(String districtName) {
	this.districtName = districtName;
}

public String getThermalSignatrue() {
	return thermalSignatrue;
}

public void setThermalSignatrue(String thermalSignatrue) {
	this.thermalSignatrue = thermalSignatrue;
}


public String getImages() {
	return images;
}

public void setImages(String images) {
	this.images = images;
}

public int getIsfriend() {
	return isfriend;
}

public void setIsfriend(int isfriend) {
	this.isfriend = isfriend;
}

public boolean isEnabled() {
	return isEnabled;
}

public void setEnabled(boolean isEnabled) {
	this.isEnabled = isEnabled;
}

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}

}