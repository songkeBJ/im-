package com.sellerNet.backManagement.dto;

import java.util.List;

public class UserSelectDto {
	private List<Long> list;
	private Integer count;
	public List<Long> getList() {
		return list;
	}
	public void setList(List<Long> list) {
		this.list = list;
	}
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
}
