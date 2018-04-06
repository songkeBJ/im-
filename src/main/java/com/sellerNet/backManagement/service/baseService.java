package com.sellerNet.backManagement.service;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;

public abstract interface baseService<T, PK extends Serializable>{
  public abstract int insert(T paramT);

  public abstract int update(T paramT);

  public abstract int updateParam(Map paramMap);

  public abstract int delete(PK paramPK);
  
  public abstract int deleteParam(Map paramMap);

  public abstract int truncate();

  public abstract int count();

  public abstract int count(Object paramObject);

  public abstract T get(PK paramPK);

  public abstract List<T> select();

  public abstract List<T> selectParam(Map paramMap);

  public abstract PagingResult<T> selectPagination(PageEntity paramPageEntity);

  public abstract int insertBatch(List<T> paramList);

  public abstract int updateBatch(List<T> paramList);

  public abstract int deleteBatch(List<PK> paramList);
}