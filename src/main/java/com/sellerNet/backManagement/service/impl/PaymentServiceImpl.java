package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.PaymentMapper;
import com.sellerNet.backManagement.entity.Payment;
import com.sellerNet.backManagement.service.PaymentService;

@Service
@Transactional
public class PaymentServiceImpl extends BaseServiceImpl<Payment, Long> implements PaymentService{
  private static final Logger LOGGER = LoggerFactory.getLogger(PaymentServiceImpl.class);

  @Resource
  private PaymentMapper paymentMapper;
  
  protected BaseDao<Payment, Long> getDao()
  {
    return this.paymentMapper;
  }
}