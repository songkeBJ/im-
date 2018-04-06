package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.ReceiptAddressMapper;
import com.sellerNet.backManagement.entity.ReceiptAddress;

@Repository
public class ReceiptAddressMapperImpl extends BaseDaoImpl<ReceiptAddress, Long>
  implements ReceiptAddressMapper{
  public ReceiptAddressMapperImpl()
  {
    this.namespace = getClass().getName();
  }
}
