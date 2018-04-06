package com.sellerNet.backManagement.dto.im;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sellerNet.backManagement.entity.User;

public class ImUserDTO implements Serializable{

  private static final long serialVersionUID = 1863941259734718217L;
  private Long id;
  private Date createdTime;
  private String username;
  private String avatar;
  private String phoneNumber;//手机号
  private String remark;//备注名称
  private String lableName;//标签名称
  private List<String> phoneNumbers;//手机号码集合
  private String distribute;//描述
  private String pictrue;//图片
  private String imNumber;
  private String thermalSignatrue;
  private List<String> images = new ArrayList<>();

  public ImUserDTO()
  {
  }

  public ImUserDTO(Long id, Date createdTime, String username, String nickname, String phoneNumber, String avatar, String imNumber, String thermalSignatrue)
  {
    this.id = id;
    this.createdTime = createdTime;
    this.phoneNumber = phoneNumber;
    this.avatar = avatar;
    this.username = username;
    this.imNumber = imNumber;
    this.thermalSignatrue = thermalSignatrue;
  }

  public ImUserDTO(User user) {
    if (user == null) {
      throw new RuntimeException("用户不存在");
    }
    this.id = user.getId();
//    this.createdTime = user.getCreatedTime();
    this.phoneNumber = user.getPhoneNumber();
    this.avatar = user.getAvatar();
    this.username = user.getUsername();
    this.thermalSignatrue = user.getThermalSignatrue();
  }

  public Long getId() {
    return this.id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
  public Date getCreatedTime() {
    return this.createdTime;
  }

  public void setCreatedTime(Date createdTime) {
    this.createdTime = createdTime;
  }

  public String getUsername() {
    return this.username;
  }

  public void setUsername(String username) {
    this.username = username;
  }

  public String getPhoneNumber() {
    return this.phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }

  public String getAvatar() {
    return this.avatar;
  }

  public void setAvatar(String avatar) {
    this.avatar = avatar;
  }

  public String getImNumber() {
    return this.imNumber;
  }

  public void setImNumber(String imNumber) {
    this.imNumber = imNumber;
  }

  public String getThermalSignatrue() {
    return this.thermalSignatrue;
  }

  public void setThermalSignatrue(String thermalSignatrue) {
    this.thermalSignatrue = thermalSignatrue;
  }

public String getRemark() {
	return remark;
}

public void setRemark(String remark) {
	this.remark = remark;
}

public String getLableName() {
	return lableName;
}

public void setLableName(String lableName) {
	this.lableName = lableName;
}

public List<String> getPhoneNumbers() {
	return phoneNumbers;
}

public void setPhoneNumbers(List<String> phoneNumbers) {
	this.phoneNumbers = phoneNumbers;
}

public String getDistribute() {
	return distribute;
}

public void setDistribute(String distribute) {
	this.distribute = distribute;
}

public String getPictrue() {
	return pictrue;
}

public void setPictrue(String pictrue) {
	this.pictrue = pictrue;
}

public List<String> getImages() {
	return images;
}

public void setImages(List<String> images) {
	this.images = images;
}
  
}