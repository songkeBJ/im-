package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author guoxg
 * 收货地址
 *
 */
public class ReceiptAddress extends BasePojo implements Serializable{
	
	private static final long serialVersionUID = -402217056511998660L;
  
	private String goodsReceipt;//收货人
  
	private String phoneNumber;//手机号
  
	private String region;//地区
  
	private String detailedAddress;//详细地址
  
	private String postcode;//邮政编码
	
	private Long userId;//用户Id
	
	public String getGoodsReceipt() {
		return goodsReceipt;
	}
	
	public void setGoodsReceipt(String goodsReceipt) {
		this.goodsReceipt = goodsReceipt;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	public String getRegion() {
		return region;
	}
	
	public void setRegion(String region) {
		this.region = region;
	}
	
	public String getDetailedAddress() {
		return detailedAddress;
	}
	
	public void setDetailedAddress(String detailedAddress) {
		this.detailedAddress = detailedAddress;
	}
	
	public String getPostcode() {
		return postcode;
	}
	
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

  
}