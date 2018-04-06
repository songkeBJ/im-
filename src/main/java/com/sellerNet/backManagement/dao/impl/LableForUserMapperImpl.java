package com.sellerNet.backManagement.dao.impl;


import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.LableForUserMapper;
import com.sellerNet.backManagement.entity.LableForUser;

@Repository
public class LableForUserMapperImpl extends BaseDaoImpl<LableForUser, Long> implements LableForUserMapper{
	
  public LableForUserMapperImpl(){
    this.namespace = getClass().getName();
  }
}