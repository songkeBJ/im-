package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class Citys extends BasePojo implements Serializable{
	
    /**
	 * 序列话
	 */
	private static final long serialVersionUID = -2986854458214019143L;

	/**
     * 城市名称
     */
    private String name;
    
    /**
     * 名称拼音
     */
    private String pinyin;
    
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPinyin() {
		return pinyin;
	}

	public void setPinyin(String pinyin) {
		this.pinyin = pinyin;
	}
	
}