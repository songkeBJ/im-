package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class UserOne implements Serializable{
	
	private static final long serialVersionUID = 1095028808811566102L;
	private int  user_id; //用户ID
	private String account;//用户账号
	private String password;//用户密码
	private String avator;    //用户头像
	private String username;//用户昵称
	private BigDecimal balance;   //用户余额
	private Date createdTime;//用户注册时间
	private Date lastTime;//最后登陆时间
	private String phoneNumber;   //用户手机号
	private String email;        //邮箱
	private int bshop;        //店铺ID
	private int audit=1;        //审核
	private String regip;        //登陆ip地址
	private int invite6;        //我的推广商家
	private String nickname;
	private int newsNum;//发布资讯数量
	private String sign;//个性签名
	private String equipmentOS;//设备操作系统
	private String deviceToken;//设备ID
	
	public String getEquipmentOS() {
		return equipmentOS;
	}

	public void setEquipmentOS(String equipmentOS) {
		this.equipmentOS = equipmentOS;
	}

	public String getDeviceToken() {
		return deviceToken;
	}

	public void setDeviceToken(String deviceToken) {
		this.deviceToken = deviceToken;
	}

	public String getNickname() {
		return nickname;
	}

	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	private Integer customerServiceStatus;//是否客服 0否 1是
	private int spreadMan;//推广人id
	private BigDecimal addPay;
	private Integer lockStatus;
	
	private Integer moneylock;
	
	
	//其他额外参数
	private Integer inviteStatus;
	private Integer inviteId;
	private String inviteGet;
	
	 public void preCreate() {
		    this.createdTime =new Date();
	 }

	 public void preModified() {
		 	this.lastTime =new Date();
	 }
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAvator() {
		return avator;
	}
	public void setAvator(String avator) {
		this.avator = avator;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	public BigDecimal getBalance() {
		return balance;   
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public Date getCreatedTime() {
		return createdTime;
	}
	public void setCreatedTime(Date createdTime) {
		this.createdTime = createdTime;
	}
	public Date getLastTime() {
		return lastTime;
	}
	public void setLastTime(Date lastTime) {
		this.lastTime = lastTime;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getBshop() {
		return bshop;
	}
	public void setBshop(int bshop) {
		this.bshop = bshop;
	}
	public int getAudit() {
		return audit;
	}
	public void setAudit(int audit) {
		this.audit = audit;
	}
	public String getRegip() {
		return regip;
	}
	public void setRegip(String regip) {
		this.regip = regip;
	}

	public int getInvite6() {
		return invite6;
	}

	public void setInvite6(int invite6) {
		this.invite6 = invite6;
	}

	public Integer getCustomerServiceStatus() {
		return customerServiceStatus;
	}

	public void setCustomerServiceStatus(Integer customerServiceStatus) {
		this.customerServiceStatus = customerServiceStatus;
	}

	public int getSpreadMan() {
		return spreadMan;
	}

	public void setSpreadMan(int spreadMan) {
		this.spreadMan = spreadMan;
	}

	public BigDecimal getAddPay() {
		return addPay;
	}

	public void setAddPay(BigDecimal addPay) {
		this.addPay = addPay;
	}

	public Integer getInviteStatus() {
		return inviteStatus;
	}

	public void setInviteStatus(Integer inviteStatus) {
		this.inviteStatus = inviteStatus;
	}

	public Integer getLockStatus() {
		return lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}

	public Integer getInviteId() {
		return inviteId;
	}

	public void setInviteId(Integer inviteId) {
		this.inviteId = inviteId;
	}

	public String getInviteGet() {
		return inviteGet;
	}

	public void setInviteGet(String inviteGet) {
		this.inviteGet = inviteGet;
	}

	public Integer getMoneylock() {
		return moneylock;
	}

	public void setMoneylock(Integer moneylock) {
		this.moneylock = moneylock;
	}

	public int getNewsNum() {
		return newsNum;
	}

	public void setNewsNum(int newsNum) {
		this.newsNum = newsNum;
	}

	
}