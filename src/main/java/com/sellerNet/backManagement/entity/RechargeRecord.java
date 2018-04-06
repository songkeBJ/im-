package com.sellerNet.backManagement.entity;

/**
 * @author gxg
 * 
 * 充值记录实体类
 *
 */
public class RechargeRecord extends BasePojo{

	/**
	 * 序列话
	 */
	private static final long serialVersionUID = 7759634073868259765L;
	
	/**
	 * 用户id
	 */
	private Integer userId;
	
	/**
	 * 订单号
	 */
	private String orderId;
	
	/**
	 * 订单金额
	 */
	private String amount;
	
	/**
	 * 支付订单行为
	 */
	private String active;
	
	/**
	 * 支付订单行为
	 */
	private String content;
	
	/**
	 * 支付订单行为
	 */
	private String phoneNumber;
	
	private String userName;



	public String getOrderId() {
		return orderId;
	}

	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getActive() {
		return active;
	}

	public void setActive(String active) {
		this.active = active;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

}
