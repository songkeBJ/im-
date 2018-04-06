package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.NewsDto;
import com.sellerNet.backManagement.entity.News;
import com.sellerNet.backManagement.entity.NewsIndex;
import com.sellerNet.backManagement.entity.NewsIndexDetail;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;

/**
 * 新闻相关的Mapper
 * @author root
 *
 */
public abstract interface NewsFocusMapper{
	public Map<String, String> getByUserIdAndFoucsId(Map map);

	public List<Map> getFocusUserId(Map map);

	public void insert(Map map);

	public void delete(Map map);

	public List<Map> getFocusList(Map map);
	
	public Long getFocusCount(Long focusId);
	
}