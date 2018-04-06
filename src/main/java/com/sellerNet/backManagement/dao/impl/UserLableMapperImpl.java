package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.UserLableMapper;
import com.sellerNet.backManagement.entity.UserLable;

@Repository
public class UserLableMapperImpl extends BaseDaoImpl<UserLable, Long> implements UserLableMapper{
	
  public UserLableMapperImpl(){
    this.namespace = getClass().getName();
  }
}