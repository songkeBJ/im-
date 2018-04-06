package com.sellerNet.backManagement.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.IslikeMapper;
import com.sellerNet.backManagement.entity.Islike;
import com.sellerNet.backManagement.service.IslikeService;
@Service  
@Transactional 
public class IslikeServiceImpl extends BaseServiceImpl<Islike, Long> implements IslikeService{

	private static final Logger LOGGER = LoggerFactory.getLogger(IslikeServiceImpl.class);

	@Resource
	private IslikeMapper islikeMapper;
	@Override
	protected BaseDao<Islike, Long> getDao() {
		return islikeMapper;
	}
	@Override
	public List<Islike> getByExpriencesAndCategory(Long exprienceId,String category) {
		Map map = new HashMap();
		map.put("exprienceId", exprienceId);
		map.put("category", category);
		return islikeMapper.getByExpriencesAndCategory(map);
	}
	@Override
	public Islike getByUserIdAndCategory(Long userId,String category) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("category", category);
		return islikeMapper.getByUserIdAndCategory(map);
	}
	@Override
	public Islike getByuserIdAndExprienceIdAndCategory(Long userId, Long exprienceId,String category) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("exprienceId", exprienceId);
		map.put("category", category);
		return islikeMapper.getByuserIdAndExprienceIdAndCategory(map);
	}
	@Override
	public List<Islike> getByNewsIdAndCategory(Map paramMap) {
		return islikeMapper.getByNewsIdAndCategory(paramMap);
	}
	@Override
	public Islike getByUserIdAndCategoryAndEvaId(Long userId, String category, Long evaluateId) {
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("category", category);
		map.put("exprienceId", evaluateId);
		return islikeMapper.getByUserIdAndCategoryAndEvaId(map);
	}
	
	
	

}
