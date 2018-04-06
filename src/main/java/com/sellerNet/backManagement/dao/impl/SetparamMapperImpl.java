package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.SetparamMapper;
import com.sellerNet.backManagement.entity.Setparam;

@Repository
public class SetparamMapperImpl extends BaseDaoImpl<Setparam, Long>
  implements SetparamMapper
{

  public SetparamMapperImpl()
  {
    this.namespace = getClass().getName();
  }

	@Override
	public int deleteByPrimaryKey(Long uId) {
		return getSqlSession().delete(namespace + ".deleteByPrimaryKey",uId);
	}
	
	@Override
	public int insertSelective(Setparam record) {
		return getSqlSession().insert(namespace + "insertSelective", record);
	}
	
	@Override
	public Setparam selectByPrimaryKey(Long uId) {
		return getSqlSession().selectOne(namespace + ".selectByPrimaryKey", uId);
	}
	
	
	@Override
	public int updateByPrimaryKeySelective(Setparam record) {
		return getSqlSession().update(namespace + ".updateByPrimaryKeySelective", record);
	}
	
	@Override
	public int updateByPrimaryKey(Setparam record) {
		return getSqlSession().update(namespace + ".updateByPrimaryKey", record);
	}

  
}