package com.sellerNet.backManagement.service;

import java.util.Map;

import com.sellerNet.backManagement.entity.Citys;
import com.sellerNet.backManagement.entity.PagingResult;

public interface CitysService extends baseService<Citys, Long>{

	PagingResult selectAllArea(Map map);

	
}
