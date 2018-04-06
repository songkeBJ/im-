package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.DriftbottleMapper;
import com.sellerNet.backManagement.entity.Driftbottle;
import com.sellerNet.backManagement.service.DriftbottleService;

@Service
@Transactional
public class DriftbottleServiceImpl extends BaseServiceImpl<Driftbottle, Long> implements DriftbottleService{
  
  private static final Logger LOGGER = LoggerFactory.getLogger(DriftbottleServiceImpl.class);

  @Resource
  private DriftbottleMapper driftbottleMapper;

  protected BaseDao<Driftbottle, Long> getDao() { return this.driftbottleMapper; }

}