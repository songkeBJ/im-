package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.LableMember;

public abstract interface LableMemberMapper extends BaseDao<LableMember, Long>{
	
	public abstract List<LableMember> getUserIdAndLableId(Map map);
}