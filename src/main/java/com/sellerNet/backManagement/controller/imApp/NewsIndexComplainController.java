package com.sellerNet.backManagement.controller.imApp;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.service.NewsComplainService;

@RestController
@RequestMapping("api/news")
public class NewsIndexComplainController {
	
	@Autowired
	private NewsComplainService newsComplainService;
	
	@RequestMapping("/addNewsComplain.do")
	public JsonResult addNewsComplain(int type,Long newsId){
		JsonResult jsonResult = new JsonResult<>();
		if(newsId==null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("资讯id不能为空");
			return jsonResult;
		}
		Map map=new HashMap<>();
		map.put("type", type);
		map.put("newsId",newsId);
		newsComplainService.insert(map);
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("投诉成功");
		return jsonResult;
	}
}
