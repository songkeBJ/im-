package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Setparam;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;

public abstract interface SetparamService extends baseService<Setparam, Long>{
	
	int deleteByPrimaryKey(Long uId);

    int insert(Setparam record);

    int insertSelective(Setparam record);

    Setparam selectByPrimaryKey(Long uId);
    
    int updateByPrimaryKeySelective(Setparam record);

    int updateByPrimaryKey(Setparam record);
  
  
  
  
  

}