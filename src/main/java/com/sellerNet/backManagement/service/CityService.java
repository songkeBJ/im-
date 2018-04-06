package com.sellerNet.backManagement.service;

import java.util.List;

import com.sellerNet.backManagement.dto.CitysDto;
import com.sellerNet.backManagement.entity.City;

public abstract interface CityService extends baseService<City, Short>{

	List<CitysDto> selectByParentId(int i);
  
}