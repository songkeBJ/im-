package com.sellerNet.backManagement.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.SearchMapper;
import com.sellerNet.backManagement.service.SearchService;

@Service
@Transactional
public class SearchServiceImpl implements SearchService{
  private static final Logger LOGGER = LoggerFactory.getLogger(SearchServiceImpl.class);

  @Resource
  private SearchMapper searchMapper;

@Override
public List<Map> selectSearchByUserId(Long userId) {
	Map map =new HashMap<>();
	map.put("userId", userId);
	return searchMapper.selectSearchByUserId(map);
}

@Override
public void deleteSearchByUserId(Long userId) {
	Map map =new HashMap<>();
	map.put("userId", userId);
	List<Map> list = searchMapper.selectSearchByUserId(map);
	List<Long> ids=new ArrayList<>();
	for (Map m : list) {
		ids.add((Long)m.get("id"));
	}
	searchMapper.deleteSearchBatch(ids);
}

@Override
public List<Map> selectHotSearch() {
	Map map =new HashMap<>();
	return searchMapper.selectHotSearch(map);
}




}