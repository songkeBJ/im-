package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.impl.NewStatusMapperImpl;
import com.sellerNet.backManagement.entity.NewStatus;
import com.sellerNet.backManagement.service.NewStatusService;

@Service
@Transactional
public class NewStatusServiceImpl extends BaseServiceImpl<NewStatus, Long> implements NewStatusService{
  private static final Logger LOGGER = LoggerFactory.getLogger(NewStatusServiceImpl.class);

  @Resource
  private NewStatusMapperImpl mapper;


  protected BaseDao<NewStatus,Long> getDao(){
    return this.mapper;
  }

}