package com.sellerNet.backManagement.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.NewsConfigMapper;
import com.sellerNet.backManagement.dao.NewsFocusMapper;
import com.sellerNet.backManagement.dao.NewsMapper;
import com.sellerNet.backManagement.dto.NewsDto;
import com.sellerNet.backManagement.entity.News;
import com.sellerNet.backManagement.entity.NewsConfig;
import com.sellerNet.backManagement.entity.NewsIndex;
import com.sellerNet.backManagement.entity.NewsIndexDetail;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.service.NewsFocusService;
import com.sellerNet.backManagement.service.NewsService;
import com.sellerNet.backManagement.utils.NumberUtil;

@Service
@Transactional
public class NewsFocusServiceImpl  implements NewsFocusService{
	
	@SuppressWarnings("unused")
	private static final Logger LOGGER = LoggerFactory.getLogger(NewsFocusServiceImpl.class);

	@Resource
	private NewsMapper newsMapper;
	@Resource
	private NewsConfigMapper newsConfigMapper; 
	@Resource
	private NewsFocusMapper newsFocusMapper;
	@Override
	public Map<String, String> getByUserIdAndFoucsId(Long userId, Long focusId) {
		Map map = new HashMap<>();
		map.put("userId", userId);
		map.put("focusId", focusId);
		return newsFocusMapper.getByUserIdAndFoucsId(map);
	}
	@Override
	public String getFocusUserId(Long newsId) {
		Map map = new HashMap<>();
		map.put("newsId", newsId);
		List<Map> list=newsFocusMapper.getFocusUserId(map);
		StringBuilder focus =new StringBuilder("");
		if(list!=null&&list.size()>0){
			for (Map map1 : list) {
				focus.append(map1.get("userId")).append(",");
			}
		}
		return focus.toString();
	}
	@Override
	public void insert(Map map) {
		newsFocusMapper.insert(map);
	}
	@Override
	public void delete(Map map) {
		newsFocusMapper.delete(map);
	}


	

}