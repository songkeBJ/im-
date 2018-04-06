package com.sellerNet.backManagement.service.impl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.IslikeMapper;
import com.sellerNet.backManagement.dao.NewsComplainMapper;
import com.sellerNet.backManagement.dao.NewsConfigMapper;
import com.sellerNet.backManagement.dao.NewsFocusMapper;
import com.sellerNet.backManagement.dao.NewsMapper;
import com.sellerNet.backManagement.dao.SearchMapper;
import com.sellerNet.backManagement.dto.NewsDto;
import com.sellerNet.backManagement.entity.Evaluate;
import com.sellerNet.backManagement.entity.Image;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.Islike;
import com.sellerNet.backManagement.entity.News;
import com.sellerNet.backManagement.entity.NewsConfig;
import com.sellerNet.backManagement.entity.NewsIndex;
import com.sellerNet.backManagement.entity.NewsIndexDetail;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.service.EvaluateService;
import com.sellerNet.backManagement.service.ImageService;
import com.sellerNet.backManagement.service.NewsService;
import com.sellerNet.backManagement.utils.NumberUtil;

@Service
@Transactional
public class NewsServiceImpl extends BaseServiceImpl<News, Long> implements NewsService{
	
	@SuppressWarnings("unused")
	private static final Logger LOGGER = LoggerFactory.getLogger(NewsServiceImpl.class);

	@Resource
	private NewsMapper newsMapper;
	@Resource
	private NewsConfigMapper newsConfigMapper; 
	@Resource
	private NewsFocusMapper newsFocusMapper; 
	@Resource
	private SearchMapper searchMapper; 
	@Resource
	private IslikeMapper islikeMapper; 
	@Resource
	private NewsComplainMapper newsComplainMapper; 
	@Resource
	private EvaluateService evaluateService; 
	@Resource
	private ImageService imageService; 

	protected BaseDao<News, Long> getDao() { 
		return this.newsMapper; 
	}
	@Override
	public List<Map<String, Object>> countByMonth(Map map) {
		return newsMapper.countByMonth(map);
	}

	@Override
	public Integer dayCount(Map map) {
		return newsMapper.dayCount(map);
	}


	@Override
	public Integer monthCount(Map map) {
		return newsMapper.monthCount(map);
	}


	@Override
	public Integer allCount(Map map) {
		return newsMapper.allCount(map);
	}
	@Override
	public PagingResult<NewsDto> selectParamForBack(PageEntity pageEntity) {
		return newsMapper.selectParamForBack(pageEntity);
	}
	@Override
	public List<NewsIndex> getNewsListByType(String type,String page,String keyword,Long userId) {
		 List<NewsIndex> newsIndexList = new ArrayList<>();
		 Map map = new HashMap<>();
		 map.put("start", NumberUtil.countOffset(Integer.valueOf(page)));
	     map.put("end", 15);
		if(type.equals("commend")){
			if(StringUtils.isNotBlank(keyword)){
				addSearchHistory(keyword, userId);
				map.put("keyword", keyword);
			}
			newsIndexList = newsMapper.getCommendNewsList(map);
		}else if(type.equals("hot")){
			if(StringUtils.isNotBlank(keyword)){
				addSearchHistory(keyword, userId);
				map.put("keyword", keyword);
			}
			newsIndexList = newsMapper.getHotNewsList(map);
		}else if(type.equals("video")){
			if(StringUtils.isNotBlank(keyword)){
				addSearchHistory(keyword, userId);
				map.put("keyword", keyword);
			}
			map.put("imgOrVedio", "Vedio");
			newsIndexList = newsMapper.getFixedNewsList(map);
		}else if(type.equals("imgs")){
			if(StringUtils.isNotBlank(keyword)){
				addSearchHistory(keyword, userId);
				map.put("keyword", keyword);
			}
			map.put("imgOrVedio", "Imgs");
			newsIndexList = newsMapper.getFixedNewsList(map);
		}else{
			if(StringUtils.isNotBlank(keyword)){
				addSearchHistory(keyword, userId);
				map.put("keyword", keyword);
			}
			map.put("type", type);
			newsIndexList = newsMapper.getNewsListByType(map);
		}
		newsIndexList = filterHot(newsIndexList);
		return newsIndexList;
	}
	private void addSearchHistory(String keyword, Long userId) {
		//添加搜索历史记录
		Map paraMap=new HashMap<>();
		paraMap.put("userId", userId);
		paraMap.put("name", keyword);
		Map userIdAndName = searchMapper.selectSearchByUserIdAndName(paraMap);
		if(userIdAndName==null){
			searchMapper.insertSearch(paraMap);
		}else{
			userIdAndName.put("searchTime", 1);
			searchMapper.updateSearch(userIdAndName);
		}
		//添加热度搜索记录
			int result=searchMapper.insertHotSearch(paraMap);
			if(result!=1){
				searchMapper.updateHotSearch(paraMap);
			}
	}
	private List<NewsIndex> filterHot(List<NewsIndex> newsIndexList) {
		NewsConfig newsConfig = newsConfigMapper.get(1L);
		int lookEnd = newsConfig.getLookEnd();
		int lookTime = newsConfig.getLookTime();
		Map map=new HashMap<>();
		map.put("lookEnd", lookEnd);
		map.put("lookTime", lookTime);
		//获取满足热点的资讯
		List<Map<String,String>> newsList = newsMapper.getHotNews(map);
		if(newsIndexList!=null){
			for (int i = 0; i < newsIndexList.size(); i++) {
				NewsIndex newsIndex = newsIndexList.get(i);
				if((!"0".equals(newsIndex.getLable()))&&(!"1".equals(newsIndex.getLable()))){
					//判断该咨询是否属于热点
					Long id = newsIndex.getId();
					if(newsList!=null){
						for (int j = 0; j < newsList.size(); j++) {
							Map map2 = newsList.get(j);
							if(Long.toString((Long)map2.get("id")).equals(Long.toString(id))){
								newsIndex.setLable("3");
							}
						}
					}
				}
			}
		}
		return newsIndexList;
	}
public static void main(String[] args) {
	ArrayList<String> aa=new ArrayList<>();
	ArrayList<String> bb=new ArrayList<>();
	aa.add("aaa");
	aa.add("bbb");
	aa.add("ccc");
	aa.add("ddd");
	aa.add("eee");
	for (String string : aa) {
		System.out.println(string);
	bb.add(string);
	}
	for (String string : bb) {
		System.out.println(string);
	}
	
	
}
@Override
public NewsIndexDetail getNewsIndexDetail(Long id) {
	return newsMapper.getNewsIndexDetail(id);
}
@Override
public void updateNewsLookTime(Long newsId) {
	newsMapper.updateNewsLookTime(newsId);
}
@Override
public void insertNewsMoney(Map newsMoneyMap) {
	newsMapper.insertNewsMoney(newsMoneyMap);
}
@Override
public void insertNewsType(Map map) {
	newsMapper.insertNewsType(map);
}
@Override
public int deleteNewsType(List paramList){
	return newsMapper.deleteNewsType(paramList);
}
@Override
public List<Map> getAllNewsType() {
	return newsMapper.getAllNewsType();
}
@Override
public void updateNewsType(Map map) {
	newsMapper.updateNewsType(map);
}
@Override
public Map getNewsType(Map map) {
	return newsMapper.getNewsType(map);
}
@Override
public List<Map<String, Object>> countByMonthMoney(Map map) {
	return newsMapper.countByMonthMoney(map);
}
@Override
public Double monthCountMoney(Map map) {
	return newsMapper.monthCountMoney(map);
}
@Override
public Double dayCountMoney(Map map) {
	return newsMapper.dayCountMoney(map);
}
@Override
public Double allCountMoney(Map map) {
	return newsMapper.allCountMoney(map);
}
@Override
public List<Map> getFocusNewsList(Long userId, String page) {
	 List<Map> newsIndexList=new ArrayList<>();
	 Map map = new HashMap<>();
	 map.put("start", NumberUtil.countOffset(Integer.valueOf(page)));
	 map.put("end", 15);
	 List<Map> focusList = newsFocusMapper.getFocusList(map);
	 if(newsIndexList!=null){
		 for (int i = 0; i < focusList.size(); i++) {
			Map m = focusList.get(i);
			Map m2=newsMapper.getFocusNews((Long)m.get("newsId"));
			newsIndexList.add(m2);
		}
	 }
	return newsIndexList;
}
@Override
public List<NewsIndex> getMyNewsList(Long userId, String page) {
	 List<NewsIndex> newsIndexList = new ArrayList<>();
	 Map map = new HashMap<>();
	 map.put("start", NumberUtil.countOffset(Integer.valueOf(page)));
     map.put("end", 15);
     map.put("userId", userId);
	 newsIndexList = newsMapper.getMyNewsList(map);
	return newsIndexList;
}
@Override
public void deleteNews(Long id) {
	Map map=new HashMap<>();
	//删除标题图片
	List<Image> byObjectIdAndCategory = imageService.getByObjectIdAndCategory(id, ImageCategory.TITLEIMAGE.name());
	if(byObjectIdAndCategory!=null&&byObjectIdAndCategory.size()>0){
		Map paramMap=new HashMap<>();
		paramMap.put("collectId", byObjectIdAndCategory.get(0).getId());
		imageService.deleteParam(paramMap);
	}
	//删除该资讯的点赞
	map.put("exprienceId", id);
	map.put("category", ImageCategory.NEWS_DETAIL.name());
	List<Islike> idAndCategory = islikeMapper.getByExprienceIdAndCategory(map);
	map.clear();
	List<Long> paramList=new ArrayList<>();
	if(idAndCategory!=null&&idAndCategory.size()>0){
		for(Islike islike:idAndCategory){
			paramList.add(islike.getId());
		}
		islikeMapper.deleteBatch(paramList);
	}
	//删除该资讯的投诉
	List<Map> selectByNewsId = newsComplainMapper.selectByNewsId(id);
	if(selectByNewsId!=null&&selectByNewsId.size()>0){
		for (Map map2 : selectByNewsId) {
			newsComplainMapper.delete((Long)map2.get("id"));
		}
	}
	//删除该资讯的关注
	map.put("newsId", id);
	List<Map> focusUserId = newsFocusMapper.getFocusUserId(map);
	if(focusUserId!=null&&focusUserId.size()>0){
		for (Map map2 : focusUserId) {
			map.put("id", (Long)map2.get("id"));
			newsFocusMapper.delete(map);
			map.clear();
		}
	}
	//删除该资讯的评论
	List<Evaluate> evaList = evaluateService.getByObjectIdAndCategory(id, null, ImageCategory.NEWS.name());
	if(evaList!=null&&evaList.size()>0){
		for (Evaluate evaluate : evaList) {
			evaluateService.deleteNewsEVA(evaluate.getId());
		}
	}
	//删除该资讯本身
	Long[] delIds=new Long[1];
	delIds[0]=id;
	newsMapper.deleteBatch(Arrays.asList(delIds));
}
@Override
public void insertRecord(News news) {
	newsMapper.insertRecord(news);
}





	

}