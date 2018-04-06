package com.sellerNet.backManagement.controller.imApp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.CitysDto;
import com.sellerNet.backManagement.entity.Area;
import com.sellerNet.backManagement.entity.City;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.service.AreaService;
import com.sellerNet.backManagement.service.CityService;
import com.sellerNet.backManagement.service.SearchService;
import com.sellerNet.backManagement.utils.Constant;
@RestController
@RequestMapping({"api/search"})
public class SearchController extends BaseController{
	
  private static final Logger LOGGER = LoggerFactory.getLogger(SearchController.class);
 
  
  @Resource
  private SearchService searchService;
  
  /**
   * 获取某位用户的搜索记录
   */
  @ResponseBody
  @RequestMapping(value="selectSearchByUserId.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult selectSearchByUserId(Long userId) { 
	  JsonResult jsonResult = new JsonResult();
	  List<Map> searchList=searchService.selectSearchByUserId(userId);
	  jsonResult.setDataObject(searchList);
	  jsonResult.setErrorDescription("获取搜索记录成功");
	  return jsonResult;
  }
  /**
   * 删除某位用户的搜索记录
   */
  @ResponseBody
  @RequestMapping(value="deleteSearchByUserId.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult deleteSearchByUserId(Long userId) { 
	  JsonResult jsonResult = new JsonResult();
	  searchService.deleteSearchByUserId(userId);
	  jsonResult.setErrorDescription("删除搜索记录成功");
	  return jsonResult;
  }
  /**
   * 获取热门的搜索记录
   */
  @ResponseBody
  @RequestMapping(value="selectHotSearch.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult selectHotSearch() { 
	  JsonResult jsonResult = new JsonResult();
	  List<Map> searchList=searchService.selectHotSearch();
	  jsonResult.setDataObject(searchList);
	  jsonResult.setErrorDescription("获取热门搜索记录成功");
	  return jsonResult;
  }
  
  
   

}