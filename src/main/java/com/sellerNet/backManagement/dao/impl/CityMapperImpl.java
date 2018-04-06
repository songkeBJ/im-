package com.sellerNet.backManagement.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.CityMapper;
import com.sellerNet.backManagement.dto.CitysDto;
import com.sellerNet.backManagement.entity.City;

@Repository
public class CityMapperImpl extends BaseDaoImpl<City, Short> implements CityMapper{
	
  public CityMapperImpl(){
    this.namespace = getClass().getName();
  }

@Override
public List<CitysDto> selectNew(int code) {
	// TODO Auto-generated method stub
	try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "selectNew", code);
    } catch (Exception e) {
      e.printStackTrace();
    }
	return null;
}	
}