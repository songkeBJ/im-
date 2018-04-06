package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.PhoneNumberMapper;
import com.sellerNet.backManagement.entity.PhoneNumber;
import com.sellerNet.backManagement.service.PhoneNumberService;

@Service
public class PhoneNumberServiceImpl extends BaseServiceImpl<PhoneNumber, Long> implements PhoneNumberService{
  private static final Logger LOGGER = LoggerFactory.getLogger(PhoneNumberServiceImpl.class);

  @Resource
  private PhoneNumberMapper phoneNumberMapper;

  protected BaseDao<PhoneNumber, Long> getDao(){
    
	  return this.phoneNumberMapper;
  }
}