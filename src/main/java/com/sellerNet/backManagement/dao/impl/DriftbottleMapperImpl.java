package com.sellerNet.backManagement.dao.impl;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.DriftbottleMapper;
import com.sellerNet.backManagement.entity.Driftbottle;

@Repository
public class DriftbottleMapperImpl extends BaseDaoImpl<Driftbottle, Long> implements DriftbottleMapper{
	
	public DriftbottleMapperImpl() {
		super.namespace=this.getClass().getName();
	}
}