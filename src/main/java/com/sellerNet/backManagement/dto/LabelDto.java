package com.sellerNet.backManagement.dto;

import java.io.Serializable;
import java.util.List;

public class LabelDto implements Serializable{
	
  private static final long serialVersionUID = 1095028808811566102L;
  
  private String remark;//备注
  
  private Long lableId;
  
  private String lableName;//标签名称
  
  private Long phoneNumberId;
  
  private List<String> phoneNumbers;//手机号码集合
  
  private String describ;//描述
  
  private String avatar;//图片

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
	
  public String getLableName() {
		return lableName;
  }
	
  public void setLableName(String lableName) {
		this.lableName = lableName;
  }
	
  public Long getPhoneNumberId() {
		return phoneNumberId;
  }
	
  public void setPhoneNumberId(Long phoneNumberId) {
		this.phoneNumberId = phoneNumberId;
  }
	
  public List<String> getPhoneNumbers() {
		return phoneNumbers;
  }
	
  public void setPhoneNumbers(List<String> phoneNumbers) {
		this.phoneNumbers = phoneNumbers;
  }
	
  public String getDescrib() {
		return describ;
  }
	
  public void setDescrib(String describ) {
		this.describ = describ;
  }
	
  public String getAvatar() {
		return avatar;
  }
  
  public void setAvatar(String avatar) {
		this.avatar = avatar;
  }
  
}