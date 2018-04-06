package com.sellerNet.backManagement.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.TransferAccountMapper;
import com.sellerNet.backManagement.entity.TransferAccount;

@Repository
public class TransferAccountMapperImpl extends BaseDaoImpl<TransferAccount, Long>  implements TransferAccountMapper{
  public TransferAccountMapperImpl()
  {
    this.namespace = getClass().getName();
  }

@Override
public List<TransferAccount> findOutTime() {
	 try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "findOutTime");
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}
}