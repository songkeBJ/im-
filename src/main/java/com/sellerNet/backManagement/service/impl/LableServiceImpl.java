package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.LableMapper;
import com.sellerNet.backManagement.entity.Lable;
import com.sellerNet.backManagement.service.LableService;

@Service
public class LableServiceImpl extends BaseServiceImpl<Lable, Long>implements LableService{
  
  private static final Logger LOGGER = LoggerFactory.getLogger(LableServiceImpl.class);
  @Resource
  private LableMapper lableMapper;

  protected BaseDao<Lable, Long> getDao(){
    return this.lableMapper;
  }

	
}