package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.LableMapper;
import com.sellerNet.backManagement.entity.Lable;

@Repository
public class LableMapperImpl extends BaseDaoImpl<Lable, Long> implements LableMapper{
	
  public LableMapperImpl(){
	  this.namespace = getClass().getName();
  }
  
}