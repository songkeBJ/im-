package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.AppMessage;

public abstract interface AppMessageMapper extends BaseDao<AppMessage,Long>
{
	public AppMessage getLastByUserId(Long userid);
	public Long getNotReadCountByUserId(Long userid);
}