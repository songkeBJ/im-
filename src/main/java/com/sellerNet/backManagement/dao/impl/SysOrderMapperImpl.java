package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.AreaMapper;
import com.sellerNet.backManagement.dao.SysOrderMapper;
import com.sellerNet.backManagement.dto.SysOrderDto;
import com.sellerNet.backManagement.entity.Area;
import com.sellerNet.backManagement.entity.SysOrder;

@Repository
public class SysOrderMapperImpl extends BaseDaoImpl<SysOrder, Long> implements SysOrderMapper{
	
  public SysOrderMapperImpl(){
    this.namespace = getClass().getName();
  }

@Override
public String sumSysOrder(Map map) {
	try {  
        return getSqlSession().selectOne(this.getClass().getName()+"." + "sumSysOrder",map); 
    } catch (Exception e) {  
        e.printStackTrace();  
        return null;  
    } 
}

@Override
public List<SysOrderDto> selectParamA(Map map) {
	try {  
        return getSqlSession().selectList(this.getClass().getName()+"." + "selectParamA",map); 
    } catch (Exception e) {  
        e.printStackTrace();  
        return null;  
    } 
}
}