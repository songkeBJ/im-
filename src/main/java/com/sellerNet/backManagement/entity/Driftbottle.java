package com.sellerNet.backManagement.entity;

/**
 * @author guoxg
 * 漂流瓶实体类
 */
public class Driftbottle extends BasePojo{
	
	/**
	 * 创建漂流瓶内容
	 */
	private Long toUser;
	
	private String content;
	
	private String username;
	
	private String thermalSignatrue;
	
	private Integer sex;
	private String avatar;
	private String phoneNumber;

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Long getToUser() {
		return toUser;
	}

	public void setToUser(Long toUser) {
		this.toUser = toUser;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getThermalSignatrue() {
		return thermalSignatrue;
	}

	public void setThermalSignatrue(String thermalSignatrue) {
		this.thermalSignatrue = thermalSignatrue;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
}
