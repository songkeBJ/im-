package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;
import com.sellerNet.backManagement.dao.VersionMapper;
import com.sellerNet.backManagement.entity.VersionSys;

@Repository
public class VersionMapperImpl extends BaseDaoImpl<VersionSys, Long> implements VersionMapper{
	
  public VersionMapperImpl(){
    this.namespace = getClass().getName();
  }
}