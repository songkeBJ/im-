package com.sellerNet.backManagement.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.TransferAccountMapper;
import com.sellerNet.backManagement.entity.TransferAccount;
import com.sellerNet.backManagement.service.TransferAccountService;

@Service
public class TransferAccountServiceImpl extends BaseServiceImpl<TransferAccount, Long> implements TransferAccountService
{
  private static final Logger LOGGER = LoggerFactory.getLogger(TransferAccountServiceImpl.class);

  @Resource
  private TransferAccountMapper transferAccountMapper;

  protected BaseDao<TransferAccount, Long> getDao(){
    return this.transferAccountMapper;
  }

@Override
public List<TransferAccount> findOutTime() {
	// TODO Auto-generated method stub
	return transferAccountMapper.findOutTime();
}
  
}