package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.LableMemberMapper;
import com.sellerNet.backManagement.entity.LableMember;
import com.sellerNet.backManagement.entity.User;

@Repository
public class LableMemberMapperImpl extends BaseDaoImpl<LableMember, Long> implements LableMemberMapper{
	
  public LableMemberMapperImpl(){
	  this.namespace = getClass().getName();
  }
  public static final String SQLID_GETUSERIDANDLABLEID = "getUserIdAndLableId";

	@Override
	public List<LableMember> getUserIdAndLableId(Map map) {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "SQLID_GETUSERIDANDLABLEID", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}
  
}