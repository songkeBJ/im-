package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.CityAgentMapper;
import com.sellerNet.backManagement.dto.CityAgent;
import com.sellerNet.backManagement.entity.City;
import com.sellerNet.backManagement.entity.Citys;

@Repository
public class CityAgentMapperImpl extends BaseDaoImpl<CityAgent, Long> implements CityAgentMapper{
	
  public CityAgentMapperImpl(){
    this.namespace = getClass().getName();
  }

	@Override
	public List<Citys> selectAllAgent(Map map2) {
		try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "selectAllAgent", map2);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
		return null;
	}
}