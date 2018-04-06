package com.sellerNet.backManagement.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.NewsComplainMapper;
import com.sellerNet.backManagement.service.NewsComplainService;
@Service
@Transactional
public class NewsComplainServiceImpl implements NewsComplainService{
	
	@Resource
	private NewsComplainMapper newsComplainMapper;
	
	@Override
	public Long countByNewsId(Long newsId) {
		return newsComplainMapper.countByNewsId(newsId);
	}

	@Override
	public int insert(Map map) {
		return newsComplainMapper.insert(map);
	}

	@Override
	public List<Map> countByNewsIdAndType(Long newsId) {
		return newsComplainMapper.countByNewsIdAndType(newsId);
	}

}
