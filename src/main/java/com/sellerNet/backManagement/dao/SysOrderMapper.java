package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.SysOrderDto;
import com.sellerNet.backManagement.entity.SysOrder;

public abstract interface SysOrderMapper extends BaseDao<SysOrder, Long>
{

	String sumSysOrder(Map map);

	List<SysOrderDto> selectParamA(Map map);
}