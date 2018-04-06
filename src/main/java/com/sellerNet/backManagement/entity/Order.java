package com.sellerNet.backManagement.entity;

public class Order extends BasePojo{

	/**
	 * 序列话
	 */
	private static final long serialVersionUID = 7759634073868259765L;
	
	/**
	 * 订单号
	 */
	private String orderId;
	
	/**
	 * 支付订单状态
	 */
	private String status;
	
	
	private String rechargeStatus;
	
	/**
	 * 订单金额
	 */
	private String amount;
	
	private String actualamount;
	
	/**
	 * 订单金额
	 */
	private String phoneNumber;
	
	private String username;
	private String buinessname;
	

	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getRechargeStatus() {
		return rechargeStatus;
	}

	public void setRechargeStatus(String rechargeStatus) {
		this.rechargeStatus = rechargeStatus;
	}

	public String getActualamount() {
		return actualamount;
	}

	public void setActualamount(String actualamount) {
		this.actualamount = actualamount;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getBuinessname() {
		return buinessname;
	}

	public void setBuinessname(String buinessname) {
		this.buinessname = buinessname;
	}
	

}
