package com.sellerNet.backManagement.service;

import java.util.List;

import com.sellerNet.backManagement.entity.TransferAccount;

public abstract interface TransferAccountService extends baseService<TransferAccount, Long>{

	List<TransferAccount> findOutTime();
  
}