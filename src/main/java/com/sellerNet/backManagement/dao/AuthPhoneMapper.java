package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import java.io.Serializable;
import java.util.List;
import java.util.Map;

public abstract interface AuthPhoneMapper<T, PK extends Serializable>
{
  public abstract int insert(Map map);

  public abstract int update(Map map);

  public abstract Map get(Map map);

}