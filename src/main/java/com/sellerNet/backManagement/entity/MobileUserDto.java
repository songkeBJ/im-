package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class MobileUserDto implements Serializable{
	  /**
		* 序列话
	  */
	  private static final long serialVersionUID = 7696086046303104924L;
	  private Long userId;             //用户Id
	  private String username;         //用户名称
	  private String thermalSignatrue; //个性签名
	  private String distance;         //距离
	  private String avatar;   //头像地址
	  private String districtName;   //头像地址
	  private String sex;   //头像地址
	  private String industry;//所属行业
	  private int isFriend=0;//是不是好友关系
	  
	  private String phone;
	  
	  private String addPay;
	  
	  public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public Long getUserId() {
		  return userId;
	  }
	  public void setUserId(Long userId) {
		  this.userId = userId;
	  }
	  public String getUsername() {
		  return username;
	  }
	  public void setUsername(String username) {
		  this.username = username;
	  }
	  public String getThermalSignatrue() {
		  return thermalSignatrue;
	  }
	  public void setThermalSignatrue(String thermalSignatrue) {
		  this.thermalSignatrue = thermalSignatrue;
	  }
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getDistrictName() {
		return districtName;
	}
	public void setDistrictName(String districtName) {
		this.districtName = districtName;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public int getIsFriend() {
		return isFriend;
	}
	public void setIsFriend(int isFriend) {
		this.isFriend = isFriend;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddPay() {
		return addPay;
	}
	public void setAddPay(String addPay) {
		this.addPay = addPay;
	}
	
  
}