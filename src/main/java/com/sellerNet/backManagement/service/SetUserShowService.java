package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.SetUserShow;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;

public abstract interface SetUserShowService extends baseService<SetUserShow, Long>{
	
	int deleteByPrimaryKey(Long id);

    int insert(SetUserShow record);

    int insertSelective(SetUserShow record);

    SetUserShow selectByPrimaryKey(Long uId);
    
    List<SetUserShow> queryList(SetUserShow record);
    
    int updateByPrimaryKeySelective(SetUserShow record);

    int updateByPrimaryKey(SetUserShow record);
  
  
  
  
  

}