package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class MobileUser extends BasePojo implements Serializable{
	  /**
		* 序列话
	  */
	  private static final long serialVersionUID = 7696086046303104924L;
	  private Long userId;  //用户Id
	  private double longitud;//用户精度
	  private double latitude;//用户纬度
	  private String type = "0";
	  private Integer sex;
	  
	  public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Long getUserId() {
		  return userId;
	  }
	  public void setUserId(Long userId) {
		  this.userId = userId;
	  }
	  public double getLongitud() {
		  return longitud;
	  }
	  public void setLongitud(double longitud) {
		  this.longitud = longitud;
	  }
	  public double getLatitude() {
		  return latitude;
	  }
	  public void setLatitude(double latitude) {
		  this.latitude = latitude;
	  }
	  
	  
  
}