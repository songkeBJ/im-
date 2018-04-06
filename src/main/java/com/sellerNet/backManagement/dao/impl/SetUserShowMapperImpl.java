package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.SetUserShowMapper;
import com.sellerNet.backManagement.entity.SetUserShow;

@Repository
public class SetUserShowMapperImpl extends BaseDaoImpl<SetUserShow, Long>
  implements SetUserShowMapper
{

  public SetUserShowMapperImpl()
  {
    this.namespace = getClass().getName();
  }

	@Override
	public int deleteByPrimaryKey(Long uId) {
		return getSqlSession().delete(namespace + ".deleteByPrimaryKey",uId);
	}
	
	@Override
	public int insertSelective(SetUserShow record) {
		return getSqlSession().insert(namespace + "insertSelective", record);
	}
	
	@Override
	public SetUserShow selectByPrimaryKey(Long uId) {
		return getSqlSession().selectOne(namespace + ".selectByPrimaryKey", uId);
	}
	
	@Override
	public List<SetUserShow> queryList(SetUserShow record) {
		// TODO Auto-generated method stub
		return getSqlSession().selectList(namespace + ".queryList", record);
	}
	
	@Override
	public int updateByPrimaryKeySelective(SetUserShow record) {
		return getSqlSession().update(namespace + ".updateByPrimaryKeySelective", record);
	}
	
	@Override
	public int updateByPrimaryKey(SetUserShow record) {
		return getSqlSession().update(namespace + ".updateByPrimaryKey", record);
	}

  
}