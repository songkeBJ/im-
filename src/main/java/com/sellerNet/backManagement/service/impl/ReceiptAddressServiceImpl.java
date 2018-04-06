package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.ReceiptAddressMapper;
import com.sellerNet.backManagement.entity.ReceiptAddress;
import com.sellerNet.backManagement.service.ReceiptAddressService;
@Service
public class ReceiptAddressServiceImpl extends BaseServiceImpl<ReceiptAddress, Long> implements ReceiptAddressService{

	 private static final Logger LOGGER = LoggerFactory.getLogger(ReceiptAddressServiceImpl.class);

	 @Resource
	 private ReceiptAddressMapper receiptAddressMapper;
	 @Override
	 protected BaseDao<ReceiptAddress, Long> getDao() {
		return receiptAddressMapper;
	 }

}
