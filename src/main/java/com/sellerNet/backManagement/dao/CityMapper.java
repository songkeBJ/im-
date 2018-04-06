package com.sellerNet.backManagement.dao;

import java.util.List;

import com.sellerNet.backManagement.dto.CitysDto;
import com.sellerNet.backManagement.entity.City;

public abstract interface CityMapper extends BaseDao<City, Short>
{

	List<CitysDto> selectNew(int i);
}