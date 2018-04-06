package com.sellerNet.backManagement.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.CitysMapper;
import com.sellerNet.backManagement.entity.Citys;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.service.CitysService;
@Service
public class CitysServiceImpl extends BaseServiceImpl<Citys, Long> implements CitysService{

	@Resource
	private CitysMapper citysMapper;
	
	@Override
	protected BaseDao<Citys, Long> getDao() {
		return this.citysMapper;
	}

	@Override
	public PagingResult selectAllArea(Map map) {
		PagingResult pr =new PagingResult<>();
		List list =citysMapper.selectAllArea(map);
		pr.setResultList(list);
		Integer count =citysMapper.countAllArea();
		pr.setTotalSize(count);
		return pr;
	}
	
}
