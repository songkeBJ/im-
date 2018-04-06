package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public abstract interface AuthMapper<T, PK extends Serializable>
{
	public PagingResult getUserList(PageEntity pageEntity);
  public abstract PagingResult getGroupList(PageEntity pageEntity);

}