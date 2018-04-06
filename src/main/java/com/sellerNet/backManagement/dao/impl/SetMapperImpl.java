package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.SetMapper;
import com.sellerNet.backManagement.entity.Set;

@Repository
public class SetMapperImpl extends BaseDaoImpl<Set, Long>
  implements SetMapper
{

  public SetMapperImpl()
  {
    this.namespace = getClass().getName();
  }

	@Override
	public int deleteByPrimaryKey(Long uId) {
		return getSqlSession().delete(namespace + ".deleteByPrimaryKey",uId);
	}
	
	@Override
	public int insertSelective(Set record) {
		return getSqlSession().insert(namespace + "insertSelective", record);
	}
	
	@Override
	public Set selectByPrimaryKey(Long uId) {
		return getSqlSession().selectOne(namespace + ".selectByPrimaryKey", uId);
	}
	
	
	@Override
	public int updateByPrimaryKeySelective(Set record) {
		return getSqlSession().update(namespace + ".updateByPrimaryKeySelective", record);
	}
	
	@Override
	public int updateByPrimaryKey(Set record) {
		return getSqlSession().update(namespace + ".updateByPrimaryKey", record);
	}

	@Override
	public Set selectBySet(Set record) {
		// TODO Auto-generated method stub
		return getSqlSession().selectOne(namespace + ".selectBySet", record);
	}

  
}