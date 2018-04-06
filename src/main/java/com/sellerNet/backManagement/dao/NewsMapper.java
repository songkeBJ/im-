package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.NewsDto;
import com.sellerNet.backManagement.entity.News;
import com.sellerNet.backManagement.entity.NewsIndex;
import com.sellerNet.backManagement.entity.NewsIndexDetail;
import com.sellerNet.backManagement.entity.NewsType;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;

/**
 * 新闻相关的Mapper
 * @author root
 *
 */
public abstract interface NewsMapper extends BaseDao<News, Long>{

	PagingResult<NewsDto> selectParamForBack(PageEntity pageEntity);
	List<Map<String, Object>> countByMonth(Map map);
	public abstract Integer monthCount(Map map);
	public abstract Integer dayCount(Map map);
	public abstract Integer allCount(Map map);
	List<NewsIndex> getNewsListByType(Map map);
	List<NewsIndex> getNewsListByKeyWord(Map map);
	List<NewsIndex> getHotNewsList(Map map);
	List<NewsIndex> getCommendNewsList(Map map);
	List<Map<String, String>> getHotNews(Map map);
	NewsIndexDetail getNewsIndexDetail(Long id);
	void updateNewsLookTime(Long newsId);
	void insertNewsMoney(Map newsMoneyMap);
	void insertNewsType(Map map);
	int deleteNewsType(List paramList);
	List<Map> getAllNewsType();
	void updateNewsType(Map map);
	Map getNewsType(Map map);
	List<Map<String, Object>> countByMonthMoney(Map map);
	Double monthCountMoney(Map map);
	Double dayCountMoney(Map map);
	Double allCountMoney(Map map);
	Map getFocusNews(Long newsId);
	List<NewsIndex> getMyNewsList(Map map);
	List<NewsIndex> getFixedNewsList(Map map);
	NewsType getNewsTypeParam(Map map);
	void insertRecord(News news);
}