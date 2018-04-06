package com.sellerNet.backManagement.dao;

import java.util.List;

import com.sellerNet.backManagement.entity.TransferAccount;

public abstract interface TransferAccountMapper extends BaseDao<TransferAccount, Long>
{

	List<TransferAccount> findOutTime();
}