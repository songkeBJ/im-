package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.UserCash;


public interface UserCashMapper extends BaseDao<UserCash, Integer>{

	List<Map<String, Object>> countByMonth(Map map);
	public abstract Integer monthCount(Map map);
	public abstract Integer dayCount(Map map);
	public abstract Integer allCount(Map map);
	public abstract Integer monthPoundageCount();
	public abstract Integer dayPoundageCount();
	public abstract Integer allPoundageCount();
	List<Map<String, Object>> countCashPoundageByMonth();
	
}