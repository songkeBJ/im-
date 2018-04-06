package com.sellerNet.backManagement.service;

import com.sellerNet.backManagement.entity.AppMessage;


public abstract interface AppMessageService extends baseService<AppMessage, Long>{
	/*
	 * 获取userid获取最后一条消息
	 * 
	 * userid 用户id
	 */
	public AppMessage getLastByUserId(Long userid);
	
	public void pushMessage(AppMessage appMessage) throws Exception;
}