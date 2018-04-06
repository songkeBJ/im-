package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.NewStatusMapper;
import com.sellerNet.backManagement.entity.NewStatus;

@Repository
public class NewStatusMapperImpl extends BaseDaoImpl<NewStatus, Long> implements NewStatusMapper{
	
  public NewStatusMapperImpl(){
    this.namespace = getClass().getName();
  }
}