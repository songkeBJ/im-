package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.AreaMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.UserLableMapper;
import com.sellerNet.backManagement.entity.Area;
import com.sellerNet.backManagement.entity.UserLable;
import com.sellerNet.backManagement.service.AreaService;
import com.sellerNet.backManagement.service.UserLableService;

@Service
public class UserLableServiceImpl extends BaseServiceImpl<UserLable, Long> implements UserLableService{
  private static final Logger LOGGER = LoggerFactory.getLogger(UserLableServiceImpl.class);

  @Resource
  private  UserLableMapper mapper;


  protected BaseDao<UserLable, Long> getDao(){
    return this.mapper;
  }
}