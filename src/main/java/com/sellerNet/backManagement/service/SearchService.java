package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;


public abstract interface SearchService{

	List<Map> selectSearchByUserId(Long userId);

	void deleteSearchByUserId(Long userId);

	List<Map> selectHotSearch();

  
}