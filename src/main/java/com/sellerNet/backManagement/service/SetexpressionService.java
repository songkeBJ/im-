package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Setexpression;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;

public abstract interface SetexpressionService extends baseService<Setexpression, Long>{
	
	int deleteByPrimaryKey(Long uId);

    int insert(Setexpression record);

    int insertSelective(Setexpression record);

    Setexpression selectByPrimaryKey(Long uId);
    
    List<Setexpression> queryList(Setexpression record);

    int updateByPrimaryKeySelective(Setexpression record);

    int updateByPrimaryKey(Setexpression record);
  
  
  
  
  
  

}