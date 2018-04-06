package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.User;
import java.util.List;
import java.util.Map;

public abstract interface RedMapper extends BaseDao<Red, Long>
{
	public List<Map<String,String>> getSendListByUserIdAndYear(Map map);
	public Map<String, String> getSendHeadByUserIdAndYear(Map map);
	public List<Map<String,String>> getGrabListByUserIdAndYear(Map map);
	public Map<String, String> getGrabHeadByUserIdAndYear(Map map);
	public List<Red> findOutTime();
}