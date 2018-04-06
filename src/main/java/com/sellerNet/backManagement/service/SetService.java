package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Set;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;

public abstract interface SetService extends baseService<Set, Long>{
	
	int deleteByPrimaryKey(Long uId);

    int insert(Set record);

    int insertSelective(Set record);

    Set selectByPrimaryKey(Long uId);

    Set selectBySet(Set record);
    
    int updateByPrimaryKeySelective(Set record);

    int updateByPrimaryKey(Set record);
  
  
  
  
  

}