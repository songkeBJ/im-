package com.sellerNet.backManagement.controller.manager;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.service.NewsComplainService;

/*
 * 资讯投诉
 */
@RestController
@RequestMapping("admin")
public class NewsComplainController {
		
	@Autowired
	private NewsComplainService newsComplainService;
	
	@RequestMapping("/countByNewsIdAndType.do")
	public List<Map> countByNewsIdAndType(Long newsId){
		return newsComplainService.countByNewsIdAndType(newsId);
	}
}
