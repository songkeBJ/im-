package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

public interface NewsComplainService {
	Long countByNewsId(Long newsId);
	int insert(Map map);
	List<Map> countByNewsIdAndType(Long newsId);
}
