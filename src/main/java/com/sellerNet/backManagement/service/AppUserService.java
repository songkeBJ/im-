package com.sellerNet.backManagement.service;

import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.User;
import java.util.List;
import java.util.Map;

public abstract interface AppUserService extends baseService<User, Long>{
  
	public abstract User byPhoneNumber(String paramString);
	public abstract User byUserId(Long userId);

	public abstract JsonResult signUp(User paramUser);

	public abstract JsonResult<UserDto> signIn(String paramString1, String paramString2);

	public abstract List<User> byUserIdAndTerms(Map paramMap);

	public abstract List<User> findByCondition(Map map);

	public abstract Map<String, Object> appUserCount(String year);
	
}