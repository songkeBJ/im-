package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.PaymentMapper;
import com.sellerNet.backManagement.entity.Payment;

@Repository
public class PaymentMapperImpl extends BaseDaoImpl<Payment, Long>implements PaymentMapper
{
  public PaymentMapperImpl()
  {
    this.namespace = getClass().getName();
  }
}