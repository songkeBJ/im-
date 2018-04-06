package com.sellerNet.backManagement.controller.app;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.utils.URLUtil;

/**
 * 首页控制器
 * 
 * 1、获取首页轮播图片
 * 
 */
@RestController
@RequestMapping({"api/homePage"})
public class HomePageController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(HomePageController.class);
	
	
	/**
	 * 获取首页轮播图片
	 * @return
	 */
	@RequestMapping(value= "get.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult  postExperience(HttpServletRequest request){
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		List<String> urls = new ArrayList<>();
		String topurl= URLUtil.getHomeUrl(request.getScheme(), request.getServerName(), request.getServerPort());
		urls.add(topurl+"/SellerNet/images/carousel1.jpg");
		urls.add(topurl+"/SellerNet/images/carousel2.jpg");
		urls.add(topurl+"/SellerNet/images/carousel3.jpg");
		jsonResult.setDataObject(urls);
		jsonResult.setErrorDescription("获取首页轮播图片成功");
		return jsonResult;
	}
	
	
	
	
}
