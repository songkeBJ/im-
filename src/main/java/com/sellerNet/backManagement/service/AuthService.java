package com.sellerNet.backManagement.service;

import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import java.util.Map;

public abstract interface AuthService {
  

	public abstract PagingResult getUserList(PageEntity pageEntity);
	public abstract PagingResult getGroupList(PageEntity pageEntity);
	public abstract void updatePhoneStatus(Long phoneId,int phoneStatus);
	public abstract void updateVideoStatus(Long videoId,int videoStatus);
	
	public abstract Map getVideoStatus(Long objectId, String category);
	public abstract Map getPhoneStatus(Long objectId, String category);
}