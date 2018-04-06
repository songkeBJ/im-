package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author root
 * 银行卡信息
 *
 */
public class Payment extends BasePojo implements Serializable{
	private static final long serialVersionUID = -402217056511998660L;
	private String cardNo; //卡号
	private String cardType;//银行卡类型
	private String bankName;//银行名称
	private String idcard;//银行名称
	private String phoneNumber;//银行预留手机号
	private String username;//真实姓名
	private String oneOuota;//单笔限额
	private String dayusername;//每日限额
	
	public String getCardType() {
		return cardType;
	}
	public void setCardType(String cardType) {
		this.cardType = cardType;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getCardNo() {
		return cardNo;
	}
	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getOneOuota() {
		return oneOuota;
	}
	public void setOneOuota(String oneOuota) {
		this.oneOuota = oneOuota;
	}
	public String getDayusername() {
		return dayusername;
	}
	public void setDayusername(String dayusername) {
		this.dayusername = dayusername;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
  
  
}