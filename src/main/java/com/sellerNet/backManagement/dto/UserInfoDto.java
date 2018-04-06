package com.sellerNet.backManagement.dto;

import java.math.BigDecimal;

public class UserInfoDto {

	private BigDecimal getEarnestMoney;
	
	private BigDecimal payEarnestMoney;
	
	private Integer beToAdd;
	
	private String beInvite;
	
	private Integer appointment;
	
	private Integer noAppointment;

	public BigDecimal getGetEarnestMoney() {
		return getEarnestMoney;
	}

	public void setGetEarnestMoney(BigDecimal getEarnestMoney) {
		this.getEarnestMoney = getEarnestMoney;
	}

	public BigDecimal getPayEarnestMoney() {
		return payEarnestMoney;
	}

	public void setPayEarnestMoney(BigDecimal payEarnestMoney) {
		this.payEarnestMoney = payEarnestMoney;
	}

	public Integer getBeToAdd() {
		return beToAdd;
	}

	public void setBeToAdd(Integer beToAdd) {
		this.beToAdd = beToAdd;
	}

	public String getBeInvite() {
		return beInvite;
	}

	public void setBeInvite(String beInvite) {
		this.beInvite = beInvite;
	}

	public Integer getAppointment() {
		return appointment;
	}

	public void setAppointment(Integer appointment) {
		this.appointment = appointment;
	}

	public Integer getNoAppointment() {
		return noAppointment;
	}

	public void setNoAppointment(Integer noAppointment) {
		this.noAppointment = noAppointment;
	}
}
