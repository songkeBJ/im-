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
public abstract interface NewsService extends baseService<News, Long>{
	public PagingResult<NewsDto> selectParamForBack(PageEntity pageEntity);
	List<Map<String, Object>> countByMonth(Map map);
	
	public abstract Integer dayCount(Map map);

	public abstract Integer monthCount(Map map);

	public abstract Integer allCount(Map map);
	public List<NewsIndex> getNewsListByType(String type,String page, String keyword, Long userId);
	public NewsIndexDetail getNewsIndexDetail(Long id);
	public void updateNewsLookTime(Long newsId);
	public void insertNewsMoney(Map newsMoneyMap);
	void insertNewsType(Map map);
	List<Map> getAllNewsType();
	public void updateNewsType(Map map);
	public Map getNewsType(Map map);
	public abstract int deleteNewsType(List paramList);
	List<Map<String, Object>> countByMonthMoney(Map map);
	Double monthCountMoney(Map map);
	Double dayCountMoney(Map map);
	Double allCountMoney(Map map);
	public List<Map> getFocusNewsList(Long userId, String page);
	public List<NewsIndex> getMyNewsList(Long id, String page);
	public void deleteNews(Long id);
	public void insertRecord(News news);
}