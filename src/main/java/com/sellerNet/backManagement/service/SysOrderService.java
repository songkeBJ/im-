package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.SysOrderDto;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.SysOrder;

public abstract interface SysOrderService extends baseService<SysOrder, Long>{

	String sumSysOrder(Map map);

	List<SysOrderDto> selectParamA(Map map);
  
}