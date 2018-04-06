package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class UserOutDto implements Serializable {
	private static final long serialVersionUID = 1095028808811566102L;
	private Long id;
	private String username ="";
	private String password ="";
	private String accountNumber ="";
	private String qrCode ="";
	private String districtId ="";
	private Integer sex;
	private String thermalSignatrue ="";
	private String phoneNumber="";
	private String userEmail ="";
	private BigDecimal balance = new BigDecimal(0);
	private String avatar="";
	private String backAvatar="";
	private String paypassword="";
	private String token="";
	private int isfriend = 0;
	private boolean isVip;
	private String labelName="";
	private String isbang="" ;
	private Long groupId;
	private int isCertification;
	private String userCode;
	private String userRealName;
	private String sign;
	public String getSign() {
		return sign;
	}

	public void setSign(String sign) {
		this.sign = sign;
	}

	public String getUserRealName() {
		return userRealName;
	}

	public void setUserRealName(String userRealName) {
		this.userRealName = userRealName;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public int getIsCertification() {
		return isCertification;
	}

	public void setIsCertification(int isCertification) {
		this.isCertification = isCertification;
	}

	private Integer age;//年龄 
	private String job="";//职业
	private String hobby=""; //爱好
	private String label="";//标签
	
	private String spreadQrCOde=""; 
	private BigDecimal addPay;
	
	private String remark="";

	private List<String> images = new ArrayList<>();

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

	public String getPaypassword() {
		return this.paypassword;
	}

	public void setPaypassword(String paypassword) {
		this.paypassword = paypassword;
	}


	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public String getLabelName() {
		return labelName;
	}

	public void setLabelName(String labelName) {
		this.labelName = labelName;
	}

	public boolean isVip() {
		return isVip;
	}

	public void setVip(boolean isVip) {
		this.isVip = isVip;
	}

	public String getIsbang() {
		return isbang;
	}

	public void setIsbang(String isbang) {
		this.isbang = isbang;
	}

	public String getLabel() {
		return label;
	}

	public void setLabel(String label) {
		this.label = label;
	}

	public Long getGroupId() {
		return groupId;
	}

	public void setGroupId(Long groupId) {
		this.groupId = groupId;
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

	public String getSpreadQrCOde() {
		return spreadQrCOde;
	}

	public void setSpreadQrCOde(String spreadQrCOde) {
		this.spreadQrCOde = spreadQrCOde;
	}

	public BigDecimal getAddPay() {
		return addPay;
	}

	public void setAddPay(BigDecimal addPay) {
		this.addPay = addPay;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}
	

}