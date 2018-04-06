package com.sellerNet.backManagement.service;

import java.util.Map;

import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.UserRelation;

public abstract interface UserRelationService extends baseService<UserRelation, Long>{

	PagingResult selectCCParam(Map map);
  
}