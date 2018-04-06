package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.DistrictMapper;
import com.sellerNet.backManagement.entity.District;
import com.sellerNet.backManagement.service.DistrictService;
@Service
public class DistrictServiceImpl extends BaseServiceImpl<District, Long> implements DistrictService{

	
	@Resource
	private DistrictMapper districtMapper;
	
	@Override
	protected BaseDao<District, Long> getDao() {
		return this.districtMapper;
	}
	


}
