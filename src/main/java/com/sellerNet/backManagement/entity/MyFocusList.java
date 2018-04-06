package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 *我的关注列表
 */
public class MyFocusList implements Serializable{
	
/*
 * 关注的用户项	
 */
	private List<FocusItem> focusItems=new ArrayList<>();

	public List<FocusItem> getFocusItems() {
		return focusItems;
	}

	public void setFocusItems(List<FocusItem> focusItems) {
		this.focusItems = focusItems;
	}
	
}
