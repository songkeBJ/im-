package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 会员用户
 */
public class AgentUser extends BasePojo implements Serializable{

	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -2440099141327329107L;
	
	/**
     * 姓名
     */
    private String name; 
    
    /**
     * 密码
     */
    private String password; 
    
    /**
     * 性别
     */
    private Long sex; 
    
    /**
     * 手机号码
     */
    private String phoneNumber; 
    
    /**
     * 邮箱
     */
    private String userEmail; 
    
    /**
     * 钱包
     */
    private BigDecimal balance;
    
    /**
     * 头像图片
     */
    private String avatar;
    
    /**
     * 是否被屏蔽
     */
    private Boolean shield = false;
    
    /**
     * 用户角色类型
     */
    private Long userType;
    /**
     * 用户角色Id
     */
	private Long roleId=-1L;
	/**
     * 用户角色名称
     */
	private String roleName;
	/**
	 * 发布资讯次数
	 */
	private Long newsNum;
	public Long getNewsNum() {
		return newsNum;
	}

	public void setNewsNum(Long newsNum) {
		this.newsNum = newsNum;
	}

	private String nickName; //姓名
	
	private String cartNo; //身份证
	private String address; //身份证
	private Long userId;//关联app用户id
	
	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	/**
     * 用户描述
     */
	private String userDescription;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public Long getSex() {
		return sex;
	}

	public void setSex(Long sex) {
		this.sex = sex;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public BigDecimal getBalance() {
		return balance;
	}

	public void setBalance(BigDecimal balance) {
		this.balance = balance;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Boolean getShield() {
		return shield;
	}

	public void setShield(Boolean shield) {
		this.shield = shield;
	}

	

	public Long getUserType() {
		return userType;
	}

	public void setUserType(Long userType) {
		this.userType = userType;
	}

	public Long getRoleId() {
		return roleId;
	}

	public void setRoleId(Long roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public String getUserDescription() {
		return userDescription;
	}

	public void setUserDescription(String userDescription) {
		this.userDescription = userDescription;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getCartNo() {
		return cartNo;
	}

	public void setCartNo(String cartNo) {
		this.cartNo = cartNo;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	} 
    
}
