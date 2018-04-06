package com.sellerNet.backManagement.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.UserCashMapper;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.UserCash;
import com.sellerNet.backManagement.service.UserCashService;

@Service
public class UserCashServiceImpl extends BaseServiceImpl<UserCash, Integer> implements UserCashService{
	
  private static final Logger LOGGER = LoggerFactory.getLogger(UserCashServiceImpl.class);

  @Resource
  private UserCashMapper userCashMapper;

  protected BaseDao<UserCash, Integer> getDao(){
    return this.userCashMapper;
  }

@Override
public List<Map<String, Object>> countByMonth(Map map) {
	return userCashMapper.countByMonth(map);
}

@Override
public Integer dayCount(Map map) {
	return userCashMapper.dayCount(map);
}


@Override
public Integer monthCount(Map map) {
	return userCashMapper.monthCount(map);
}


@Override
public Integer allCount(Map map) {
	return userCashMapper.allCount(map);
}
@Override
public Integer dayPoundageCount() {
	return userCashMapper.dayPoundageCount();
}


@Override
public Integer monthPoundageCount() {
	return userCashMapper.monthPoundageCount();
}


@Override
public Integer allPoundageCount() {
	return userCashMapper.allPoundageCount();
}

@Override
public List<Map<String, Object>> countCashPoundageByMonth() {
	return userCashMapper.countCashPoundageByMonth();
}
}