package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.AreaMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.entity.Area;
import com.sellerNet.backManagement.service.AreaService;

@Service
public class AreaServiceImpl extends BaseServiceImpl<Area, Short> implements AreaService{
  private static final Logger LOGGER = LoggerFactory.getLogger(AreaServiceImpl.class);

  @Resource
  private AreaMapper areaMapper;


  protected BaseDao<Area, Short> getDao(){
    return this.areaMapper;
  }
}