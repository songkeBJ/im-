package com.sellerNet.backManagement.dao.impl;


import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.NewsConfigMapper;
import com.sellerNet.backManagement.entity.NewsConfig;

@Repository
public class NewsConfigMapperImpl extends BaseDaoImpl<NewsConfig, Long> implements NewsConfigMapper{

  public NewsConfigMapperImpl(){
	  this.namespace = getClass().getName();
  }


}
