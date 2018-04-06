package com.sellerNet.backManagement.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.CityMapper;
import com.sellerNet.backManagement.dto.CitysDto;
import com.sellerNet.backManagement.entity.City;
import com.sellerNet.backManagement.service.CityService;

@Service
public class CityServiceImpl extends BaseServiceImpl<City, Short> implements CityService{
  private static final Logger LOGGER = LoggerFactory.getLogger(CityServiceImpl.class);

  @Resource
  private CityMapper cityMapper;


  protected BaseDao<City, Short> getDao(){
    return this.cityMapper;
  }

@Override
public List<CitysDto> selectByParentId(int i) {
	// TODO Auto-generated method stub
	return cityMapper.selectNew(i);
}
}