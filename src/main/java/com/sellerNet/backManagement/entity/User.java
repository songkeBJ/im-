package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class User extends BasePojo implements Serializable {
	private static final long serialVersionUID = 1095028808811566102L;
	private Long userId;
	private String username;
	private String password;
	private String accountNumber;
	private String qrCode;
	private String districtId;
	private Integer sex;
	private String thermalSignatrue;
	private String phoneNumber;
	private String userEmail;
	private BigDecimal balance = new BigDecimal(0);
	private String avatar;
	private String backAvatar;
	private Integer loginFailedCount = Integer.valueOf(0);
	private String paypassword;
	private Date lastLoginTime;
	private int isfriend = 0;
	private String token;
	private Boolean iscy = Boolean.valueOf(false);
	private Boolean isvip = Boolean.valueOf(false);
	private String isbang ;
	
	private Integer age;//年龄 
	private String job;//职业
	private String hobby; //爱好
	private Integer lockStatus;
	
	
	
	private String label; //标签
	
	private String spreadQrCode;//推广二维码
	
	private List<String> images = new ArrayList();

	public int getIsfriend() {
		return this.isfriend;
	}

	public void setIsfriend(int isfriend) {
		this.isfriend = isfriend;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccountNumber() {
		return this.accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getQrCode() {
		return this.qrCode;
	}

	public void setQrCode(String qrCode) {
		this.qrCode = qrCode;
	}

	public String getDistrictId() {
		return this.districtId;
	}

	public void setDistrictId(String districtId) {
		this.districtId = districtId;
	}

	public Integer getSex() {
		return this.sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getThermalSignatrue() {
		return this.thermalSignatrue;
	}

	public void setThermalSignatrue(String thermalSignatrue) {
		this.thermalSignatrue = thermalSignatrue;
	}

	public String getPhoneNumber() {
		return this.phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public BigDecimal getBalance() {
		return this.balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public String getAvatar() {
		return this.avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getBackAvatar() {
		return this.backAvatar;
	}

	public void setBackAvatar(String backAvatar) {
		this.backAvatar = backAvatar;
	}

	public Integer getLoginFailedCount() {
		return this.loginFailedCount;
	}

	public void setLoginFailedCount(Integer loginFailedCount) {
		this.loginFailedCount = loginFailedCount;
	}

	public String getPaypassword() {
		return this.paypassword;
	}

	public void setPaypassword(String paypassword) {
		this.paypassword = paypassword;
	}

	public Date getLastLoginTime() {
		return this.lastLoginTime;
	}

	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	public List<String> getImages() {
		return this.images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public Boolean getIscy() {
		return iscy;
	}

	public void setIscy(Boolean iscy) {
		this.iscy = iscy;
	}

	public Boolean getIsvip() {
		return isvip;
	}

	public void setIsvip(Boolean isvip) {
		this.isvip = isvip;
	}

	public String getIsbang() {
		return isbang;
	}

	public void setIsbang(String isbang) {
		this.isbang = isbang;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public Integer getAge() {
		return age;
	}

	public void setAge(Integer age) {
		this.age = age;
	}

	public String getSpreadQrCode() {
		return spreadQrCode;
	}

	public void setSpreadQrCode(String spreadQrCode) {
		this.spreadQrCode = spreadQrCode;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public Integer getLockStatus() {
		return lockStatus;
	}

	public void setLockStatus(Integer lockStatus) {
		this.lockStatus = lockStatus;
	}


	
}