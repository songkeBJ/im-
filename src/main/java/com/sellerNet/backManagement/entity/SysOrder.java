package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class SysOrder  extends BasePojo implements Serializable {
	private static final long serialVersionUID = -1054668188375068738L;
	private Integer userId;
	private String allPay;
	private String rateMoney;
	private Integer rate;
	private String remark;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getAllPay() {
		return allPay;
	}
	public void setAllPay(String allPay) {
		this.allPay = allPay;
	}
	public String getRateMoney() {
		return rateMoney;
	}
	public void setRateMoney(String rateMoney) {
		this.rateMoney = rateMoney;
	}
	public Integer getRate() {
		return rate;
	}
	public void setRate(Integer rate) {
		this.rate = rate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
    
}