package com.sellerNet.backManagement.controller.manager.model;

import java.util.ArrayList;
import java.util.List;


/**
 * 推送消息的内容
 *
 */
public class PushMessage {
	private List<Long> receives = new ArrayList<>();//用户集合
	private String content;
	private String sender;
	public List<Long> getReceives() {
		return receives;
	}
	public void setReceives(List<Long> receives) {
		this.receives = receives;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getSender() {
		return sender;
	}
	public void setSender(String sender) {
		this.sender = sender;
	}
	
	
}
