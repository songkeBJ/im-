package com.sellerNet.backManagement.dto;

import java.io.Serializable;

public class CityDto  implements Serializable
{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1512664133588587529L;
	private String id;
	private String sheng;
	private String shengId;
	private String shi;
	private String shiId;
	private String qu;
	private String quid;
	private String agent_integral;
	public String getSheng() {
		return sheng;
	}
	public void setSheng(String sheng) {
		this.sheng = sheng;
	}
	public String getShengId() {
		return shengId;
	}
	public void setShengId(String shengId) {
		this.shengId = shengId;
	}
	public String getShi() {
		return shi;
	}
	public void setShi(String shi) {
		this.shi = shi;
	}
	public String getShiId() {
		return shiId;
	}
	public void setShiId(String shiId) {
		this.shiId = shiId;
	}
	public String getQu() {
		return qu;
	}
	public void setQu(String qu) {
		this.qu = qu;
	}
	public String getQuId() {
		return quid;
	}
	public void setQuId(String quId) {
		this.quid = quId;
	}
	public String getAgent_integral() {
		return agent_integral;
	}
	public void setAgent_integral(String agent_integral) {
		this.agent_integral = agent_integral;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}