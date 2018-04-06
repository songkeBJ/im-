package com.sellerNet.backManagement.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.AreaMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.SysOrderMapper;
import com.sellerNet.backManagement.dto.SysOrderDto;
import com.sellerNet.backManagement.entity.Area;
import com.sellerNet.backManagement.entity.SysOrder;
import com.sellerNet.backManagement.service.AreaService;
import com.sellerNet.backManagement.service.SysOrderService;

@Service
@Transactional
public class SysOrderServiceImpl extends BaseServiceImpl<SysOrder, Long> implements SysOrderService{
  private static final Logger LOGGER = LoggerFactory.getLogger(SysOrderServiceImpl.class);

  @Resource
  private SysOrderMapper mapper;


  protected BaseDao<SysOrder,Long> getDao(){
    return this.mapper;
  }


@Override
public String sumSysOrder(Map map) {
	// TODO Auto-generated method stub
	return mapper.sumSysOrder(map);
}


@Override
public List<SysOrderDto> selectParamA(Map map) {
	// TODO Auto-generated method stub
	return mapper.selectParamA(map);
}
}