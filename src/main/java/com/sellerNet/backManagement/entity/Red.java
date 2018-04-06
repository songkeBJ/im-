package com.sellerNet.backManagement.entity;

import java.util.Date;

/*
 * 红包
 */
public class Red {
	private Long red_id;//红包ID
	private Long red_user_id;//红包所属的用户id
	private String red_user_name;//红包所属的用户昵称
	private Double red_money;//红包总金额
	private Double red_has_money;//红包剩余金额
	private String red_type;//红包类型 0:普通红包  1:拼手气红包
	private String red_type_name;//红包类型名称 0:普通红包  1:拼手气红包
	private String red_send_date;//发送红包日期
	private Integer red_all_count;//红包总个数
	private Integer red_has_count;//红包剩余个数
	private String red_json;//抢红包情况描述json
	private String red_content;//红包标题
	private String red_outTime;//红包是否过期
	public String getRed_outTime() {
		return red_outTime;
	}
	public void setRed_outTime(String red_outTime) {
		this.red_outTime = red_outTime;
	}
	public String getRed_content() {
		return red_content;
	}
	public void setRed_content(String red_content) {
		this.red_content = red_content;
	}
	public String getRed_user_name() {
		return red_user_name;
	}
	public void setRed_user_name(String red_user_name) {
		this.red_user_name = red_user_name;
	}
	public Long getRed_id() {
		return red_id;
	}
	public void setRed_id(Long red_id) {
		this.red_id = red_id;
	}
	public Long getRed_user_id() {
		return red_user_id;
	}
	public void setRed_user_id(Long red_user_id) {
		this.red_user_id = red_user_id;
	}
	public Double getRed_money() {
		return red_money;
	}
	public void setRed_money(Double red_money) {
		this.red_money = red_money;
	}
	public Double getRed_has_money() {
		return red_has_money;
	}
	public void setRed_has_money(Double red_has_money) {
		this.red_has_money = red_has_money;
	}
	public String getRed_type() {
		return red_type;
	}
	public void setRed_type(String red_type) {
		this.red_type = red_type;
	}
	public String getRed_type_name() {
		return red_type_name;
	}
	public void setRed_type_name(String red_type_name) {
		this.red_type_name = red_type_name;
	}
	public Integer getRed_all_count() {
		return red_all_count;
	}
	public void setRed_all_count(Integer red_all_count) {
		this.red_all_count = red_all_count;
	}
	public Integer getRed_has_count() {
		return red_has_count;
	}
	public String getRed_send_date() {
		return red_send_date;
	}
	public void setRed_send_date(String red_send_date) {
		this.red_send_date = red_send_date;
	}
	public void setRed_has_count(Integer red_has_count) {
		this.red_has_count = red_has_count;
	}
	public String getRed_json() {
		return red_json;
	}
	public void setRed_json(String red_json) {
		this.red_json = red_json;
	}
	
}
