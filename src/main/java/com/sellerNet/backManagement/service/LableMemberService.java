package com.sellerNet.backManagement.service;

import java.util.List;

import com.sellerNet.backManagement.entity.LableMember;

public abstract interface LableMemberService extends baseService<LableMember, Long>{
	
	public abstract List<LableMember> getUserIdAndLableId(Long lableId,Long userId);
}