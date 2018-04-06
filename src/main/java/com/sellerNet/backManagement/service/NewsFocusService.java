package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.NewsDto;
import com.sellerNet.backManagement.entity.News;
import com.sellerNet.backManagement.entity.NewsIndex;
import com.sellerNet.backManagement.entity.NewsIndexDetail;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;

/**
 * 新闻相关服务类
 * @author root
 *
 */
public abstract interface NewsFocusService{

	Map<String, String> getByUserIdAndFoucsId(Long id, Long newsId);
	String getFocusUserId(Long id);
	void insert(Map map);
	void delete(Map map);
	
}