package com.sellerNet.backManagement.entity;
/*
 * 抢红包记录
 */
public class RedRecord {
	private Long red_record_id;//抢红包记录ID
	private Long red_id;//红包ID
	private Long red_user_id;//发送红包用户ID
	private String red_name;//发送红包用户昵称
	private String red_type;//红包类型 0:普通红包 1:拼手气红包
	private String red_type_name;//红包类型名称 0:普通红包 1:拼手气红包
	private String red_money;//抢到红包金额
	private String red_record_date;//发送红包日期
	private String red_ismax;//是否手气最佳 0:不是 1:是
	public String getRed_ismax() {
		return red_ismax;
	}
	public void setRed_ismax(String red_ismax) {
		this.red_ismax = red_ismax;
	}
	public Long getRed_record_id() {
		return red_record_id;
	}
	public void setRed_record_id(Long red_record_id) {
		this.red_record_id = red_record_id;
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
	public String getRed_name() {
		return red_name;
	}
	public void setRed_name(String red_name) {
		this.red_name = red_name;
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
	public String getRed_money() {
		return red_money;
	}
	public void setRed_money(String red_money) {
		this.red_money = red_money;
	}
	public String getRed_record_date() {
		return red_record_date;
	}
	public void setRed_record_date(String red_record_date) {
		this.red_record_date = red_record_date;
	}
	
}
