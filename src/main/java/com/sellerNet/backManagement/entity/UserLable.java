package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class UserLable  extends BasePojo implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 361627545232503207L;
	private String name;
	private String remark;
	private int sex;
	private int type;
	private int ser;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getSex() {
		return sex;
	}
	public void setSex(int sex) {
		this.sex = sex;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public int getSer() {
		return ser;
	}
	public void setSer(int ser) {
		this.ser = ser;
	}
  
}
