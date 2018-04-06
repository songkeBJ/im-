package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import com.sellerNet.backManagement.dto.im.PhoneAndName;

public class ImRequestParam implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 6976987183153351540L;
	
	/**
	 * 用户ID
	 */
	private Long id;
	
	/**
	 * 当前页
	 */
	private Integer type;
	
	/**
	 * 当前页
	 */
	private Integer page;
	
	/**
	 * 手机号和昵称
	 */
	private List<PhoneAndName> mailList = new ArrayList<>();

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {
		this.page = page;
	}

	public List<PhoneAndName> getMailList() {
		return mailList;
	}

	public void setMailList(List<PhoneAndName> mailList) {
		this.mailList = mailList;
	}
	

}
