package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.DistrictMapper;
import com.sellerNet.backManagement.entity.District;
@Repository
public class DistrictMapperImpl extends BaseDaoImpl<District, Long> implements DistrictMapper{
	
	public DistrictMapperImpl() {
		super.namespace=this.getClass().getName();
	}
}
