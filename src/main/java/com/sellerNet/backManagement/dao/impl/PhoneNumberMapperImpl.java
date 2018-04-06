package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.PhoneNumberMapper;
import com.sellerNet.backManagement.entity.PhoneNumber;

@Repository
public class PhoneNumberMapperImpl extends BaseDaoImpl<PhoneNumber, Long> implements PhoneNumberMapper{
  
	public PhoneNumberMapperImpl(){
    this.namespace = getClass().getName();
  }
}