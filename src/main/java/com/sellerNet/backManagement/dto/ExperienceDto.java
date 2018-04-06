package com.sellerNet.backManagement.dto;

import java.io.Serializable;
import java.util.List;

import com.sellerNet.backManagement.entity.Experience;

public class ExperienceDto implements Serializable{
	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -1727409073951768336L;
	
	private String backAvatar;	   //心得背景图片
	
	private String sign;	   //签名
	
	private String avatar;   	   //心得个人头像
	
	private String nikeName; 	   //心得用户昵称
	
	List<Experience> experiences ; //所有的评论
	
	
	
	public String getBackAvatar() {
		return backAvatar;
	}
	public void setBackAvatar(String backAvatar) {
		this.backAvatar = backAvatar;
	}
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	public String getNikeName() {
		return nikeName;
	}
	public void setNikeName(String nikeName) {
		this.nikeName = nikeName;
	}
	public List<Experience> getExperiences() {
		return experiences;
	}
	public void setExperiences(List<Experience> experiences) {
		this.experiences = experiences;
	}
	public String getSign() {
		return sign;
	}
	public void setSign(String sign) {
		this.sign = sign;
	}

}
