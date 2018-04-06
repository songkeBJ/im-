package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.CityAgent;
import com.sellerNet.backManagement.entity.City;
import com.sellerNet.backManagement.entity.Citys;

public abstract interface CityAgentService extends baseService<CityAgent, Long>{

	List<Citys> selectAllAgent(Map map2);
  
}