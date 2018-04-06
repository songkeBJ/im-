package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

public abstract interface NewsComplainMapper extends BaseDao<Map, Long>
{
	Long countByNewsId(Long newsId);
	int insert(Map map);
	List<Map> countByNewsIdAndType(Long newsId);
	List<Map> selectByNewsId(Long newsId);
}