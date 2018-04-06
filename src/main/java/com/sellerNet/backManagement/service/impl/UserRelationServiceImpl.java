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
import com.sellerNet.backManagement.dao.UserRelationMapper;
import com.sellerNet.backManagement.dto.UserRelationDto;
import com.sellerNet.backManagement.entity.Area;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.UserRelation;
import com.sellerNet.backManagement.service.AreaService;
import com.sellerNet.backManagement.service.UserRelationService;

@Service
@Transactional
public class UserRelationServiceImpl extends BaseServiceImpl<UserRelation, Long> implements UserRelationService{
  private static final Logger LOGGER = LoggerFactory.getLogger(UserRelationServiceImpl.class);

  @Resource
  private UserRelationMapper userRelationjavaMapper;


  protected BaseDao<UserRelation, Long> getDao(){
    return this.userRelationjavaMapper;
  }


@Override
public PagingResult selectCCParam(Map map) {
	PagingResult pr =new PagingResult<>();
	List<UserRelationDto> list =userRelationjavaMapper.selectCCParam(map);
	pr.setResultList(list);
	pr.setTotalSize(userRelationjavaMapper.count(map));
	 return pr;
}
}