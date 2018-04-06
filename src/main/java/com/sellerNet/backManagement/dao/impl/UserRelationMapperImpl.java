package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.UserRelationMapper;
import com.sellerNet.backManagement.dto.UserRelationDto;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.UserRelation;

@Repository
public class UserRelationMapperImpl extends BaseDaoImpl<UserRelation, Long> implements UserRelationMapper{
	
  public UserRelationMapperImpl(){
    this.namespace = getClass().getName();
  }

@Override
public List<UserRelationDto> selectCCParam(Map map) {
	  try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "selectCCParam", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}
}