package com.sellerNet.backManagement.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.service.baseService;

public abstract class BaseServiceImpl<T, PK extends Serializable> implements baseService<T, PK>{
	  
	protected abstract BaseDao<T, PK> getDao();
	
	public int insert(T entity){
		return getDao().insert(entity);
	}

	public int update(T entity){
		return getDao().update(entity);
	}

	public int updateParam(Map param){
		return getDao().updateParam(param);
	}

	public int delete(PK primaryKey){
		return getDao().delete(primaryKey);
	}

	public int deleteParam(Map param){
		return getDao().deleteParam(param);
	}

	public int truncate(){
		return getDao().truncate();
	}

	public int count(){
		return getDao().count();
	}

	public int count(Object param){
		return getDao().count(param);
	}

	public T get(PK primaryKey){
		return getDao().get(primaryKey);
	}

	public List<T> select(){
		return getDao().select();
	}

	public List<T> selectParam(Map param){
		return getDao().selectParam(param);
	}

	public PagingResult<T> selectPagination(PageEntity param){
		return getDao().selectPagination(param);
	}

	public int insertBatch(List<T> list){
		return getDao().insertBatch(list);
	}
	
	public int updateBatch(List<T> list){
		return getDao().updateBatch(list);
	}

	public int deleteBatch(List<PK> list){
		return getDao().deleteBatch(list);
	}
}