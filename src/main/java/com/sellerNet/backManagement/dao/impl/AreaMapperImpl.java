package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.AreaMapper;
import com.sellerNet.backManagement.entity.Area;

@Repository
public class AreaMapperImpl extends BaseDaoImpl<Area, Short> implements AreaMapper{
	
  public AreaMapperImpl(){
    this.namespace = getClass().getName();
  }
}