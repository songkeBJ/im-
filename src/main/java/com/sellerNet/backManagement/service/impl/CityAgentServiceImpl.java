package com.sellerNet.backManagement.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.AreaMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.CityAgentMapper;
import com.sellerNet.backManagement.dto.CityAgent;
import com.sellerNet.backManagement.entity.Area;
import com.sellerNet.backManagement.entity.City;
import com.sellerNet.backManagement.entity.Citys;
import com.sellerNet.backManagement.service.AreaService;
import com.sellerNet.backManagement.service.CityAgentService;

@Service
public class CityAgentServiceImpl extends BaseServiceImpl<CityAgent, Long> implements CityAgentService{
  private static final Logger LOGGER = LoggerFactory.getLogger(CityAgentServiceImpl.class);

  @Resource
  private CityAgentMapper mapper;


  protected BaseDao<CityAgent, Long> getDao(){
    return this.mapper;
  }


@Override
public List<Citys> selectAllAgent(Map map2) {
	// TODO Auto-generated method stub
	return mapper.selectAllAgent(map2);
}
}