package com.sellerNet.backManagement.entity;

import java.util.ArrayList;
import java.util.List;

/*
 * 实名认证信息
 */
public class Certification extends BasePojo{
	private String user_id;//用户id
	private String user_code;//用户身份证号
	private String user_realname;//用户真实姓名
	private String images;//身份证正反面照
	private String pass;//实名认证是否通过 0:未通过 1:通过
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_code() {
		return user_code;
	}
	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}
	public String getUser_realname() {
		return user_realname;
	}
	public void setUser_realname(String user_realname) {
		this.user_realname = user_realname;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	
}
