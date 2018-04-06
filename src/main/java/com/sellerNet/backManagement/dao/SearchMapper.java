package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

public abstract interface SearchMapper
{
	int insertSearch(Map map);
	int updateSearch(Map map);
	List<Map> selectHotSearch(Map map);
	List<Map> selectSearchByUserId(Map map);
	Map selectSearchByUserIdAndName(Map map);
	int deleteSearchBatch(List list);
	Map selectHotSearchByName(Map paraMap);
	int insertHotSearch(Map paraMap);
	int updateHotSearch(Map userIdAndName2);
}