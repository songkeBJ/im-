package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 发布朋友圈入参说明
 *
 */
public class ReleaseParam implements Serializable{
	
	/**
	 * 序列话
	 */
	private static final long serialVersionUID = 3310851616863006840L;

	/**
	 * 用户ID
	 */
	private Long id;
	
	/**
	 * 发布位置
	 */
	private String districtId;
	
	/**
	 * 上传图片
	 */
	private List<String> images=new ArrayList<>();
	/**
	 * 上传小视频
	 */
	private List<String> videos=new ArrayList<>();
	
	public List<String> getVideos() {
		return videos;
	}

	public void setVideos(List<String> videos) {
		this.videos = videos;
	}

	/**
	 * 发布内容
	 */
	private String content;
	
	/**
	 * 权限类型
	 */
	private String privilegeType;
	
	/**
	 * 用户集合（和权限类型相对应）
	 */
	private List<Long> users;
	
	/**
	 * 提醒用户集合
	 */
	private List<Long> reminds;
	
	private List<Evaluate> evaluates;


	public String getDistrictId() {
		return districtId;
	}

	public void setDistrictId(String districtId) {
		this.districtId = districtId;
	}


	public List<String> getImages() {
		return images;
	}

	public void setImages(List<String> images) {
		this.images = images;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getPrivilegeType() {
		return privilegeType;
	}

	public void setPrivilegeType(String privilegeType) {
		this.privilegeType = privilegeType;
	}

	public List<Long> getUsers() {
		return users;
	}

	public void setUsers(List<Long> users) {
		this.users = users;
	}

	public List<Long> getReminds() {
		return reminds;
	}

	public void setReminds(List<Long> reminds) {
		this.reminds = reminds;
	}

	public List<Evaluate> getEvaluates() {
		return evaluates;
	}

	public void setEvaluates(List<Evaluate> evaluates) {
		this.evaluates = evaluates;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	
}
