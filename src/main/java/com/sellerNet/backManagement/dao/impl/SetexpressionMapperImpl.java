package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.SetexpressionMapper;
import com.sellerNet.backManagement.entity.Setexpression;

@Repository
public class SetexpressionMapperImpl extends BaseDaoImpl<Setexpression, Long>
  implements SetexpressionMapper
{

  public SetexpressionMapperImpl()
  {
    this.namespace = getClass().getName();
  }

	@Override
	public int deleteByPrimaryKey(Long uId) {
		return getSqlSession().delete(namespace + ".deleteByPrimaryKey",uId);
	}
	
	@Override
	public int insertSelective(Setexpression record) {
		return getSqlSession().insert(namespace + "insertSelective", record);
	}
	
	@Override
	public Setexpression selectByPrimaryKey(Long uId) {
		return getSqlSession().selectOne(namespace + ".selectByPrimaryKey", uId);
	}
	
	@Override
	public List<Setexpression> queryList(Setexpression record) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(namespace + ".queryList", record);
	}
	
	@Override
	public int updateByPrimaryKeySelective(Setexpression record) {
		return getSqlSession().update(namespace + ".updateByPrimaryKeySelective", record);
	}
	
	@Override
	public int updateByPrimaryKey(Setexpression record) {
		return getSqlSession().update(namespace + ".updateByPrimaryKey", record);
	}

  
}