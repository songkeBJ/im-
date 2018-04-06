package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class InviteRecord extends BasePojo implements Serializable{

	private static final long serialVersionUID = 2434424220635582860L;

	private Long userId;//被邀请的用户
	
	private Long inviteId; //动态的id
	
	private Integer status; //0被邀请 1接受  2拒绝 
	
	private Integer ifPay; //是否支付了费用
	
	private Integer ifRead; //是否支付了费用
	
	private Integer hasDo=1; // 0是有，1是没操作过

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getInviteId() {
		return inviteId;
	}

	public void setInviteId(Long inviteId) {
		this.inviteId = inviteId;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public Integer getIfPay() {
		return ifPay;
	}

	public void setIfPay(Integer ifPay) {
		this.ifPay = ifPay;
	}

	public Integer getIfRead() {
		return ifRead;
	}

	public void setIfRead(Integer ifRead) {
		this.ifRead = ifRead;
	}

	public Integer getHasDo() {
		return hasDo;
	}

	public void setHasDo(Integer hasDo) {
		this.hasDo = hasDo;
	}
}
