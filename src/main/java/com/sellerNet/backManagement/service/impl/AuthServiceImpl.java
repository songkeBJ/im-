package com.sellerNet.backManagement.service.impl;

import com.sellerNet.backManagement.dao.AuthMapper;
import com.sellerNet.backManagement.dao.AuthPhoneMapper;
import com.sellerNet.backManagement.dao.AuthVideoMapper;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.service.AuthService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AuthServiceImpl implements AuthService{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AuthServiceImpl.class);

	@Resource
	private AuthMapper authMapper;
	@Resource
	private AuthPhoneMapper authPhoneMapper;
	@Resource
	private AuthVideoMapper authVideoMapper;
	@Override
	public PagingResult getUserList(PageEntity pageEntity) {
		return authMapper.getUserList(pageEntity);
	}
	@Override
	public PagingResult getGroupList(PageEntity pageEntity) {
		return authMapper.getGroupList(pageEntity);
	}
	@Override
	public void updatePhoneStatus(Long phoneId, int phoneStatus) {
		Map map = new HashMap<>();
		map.put("id", phoneId);
		map.put("status", phoneStatus);
		authPhoneMapper.update(map);
	}
	@Override
	public void updateVideoStatus(Long videoId, int videoStatus) {
		Map map = new HashMap<>();
		map.put("id", videoId);
		map.put("status", videoStatus);
		authVideoMapper.update(map);
	}
	@Override
	public Map getVideoStatus(Long objectId,String category) {
		Map map = new HashMap<>();
		map.put("objectId", objectId);
		map.put("category", category);
		return authVideoMapper.get(map);
	}
	@Override
	public Map getPhoneStatus(Long objectId,String category) {
		Map map = new HashMap<>();
		map.put("objectId", objectId);
		map.put("category", category);
		return authPhoneMapper.get(map);
	}


	
}