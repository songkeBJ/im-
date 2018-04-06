package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.LableForUserMapper;
import com.sellerNet.backManagement.entity.LableForUser;
import com.sellerNet.backManagement.service.LableForUserService;

@Service
@Transactional
public class LableForUserServiceImpl extends BaseServiceImpl<LableForUser, Long> implements LableForUserService{
  private static final Logger LOGGER = LoggerFactory.getLogger(LableForUserServiceImpl.class);

  @Resource
  private LableForUserMapper mapper;


  protected BaseDao<LableForUser,Long> getDao(){
    return this.mapper;
  }


}