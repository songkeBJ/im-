package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.VersionMapper;
import com.sellerNet.backManagement.entity.VersionSys;
import com.sellerNet.backManagement.service.VersionService;

@Service
public class VersionServiceImpl extends BaseServiceImpl<VersionSys, Long> implements VersionService{
  private static final Logger LOGGER = LoggerFactory.getLogger(VersionServiceImpl.class);

  @Resource
  private VersionMapper mapper;


  protected BaseDao<VersionSys, Long> getDao(){
    return this.mapper;
  }
}