package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.User;
import java.util.List;
import java.util.Map;

public abstract interface AppUserMapper extends BaseDao<User, Long>
{
  public abstract User byPhoneNumber(String paramString);

  public abstract List<User> byUserIdAndTerms(Map paramMap);
  
  public abstract User byMaxUser();
  public abstract User byUserId(Long userId);

public abstract List<User> findByCondition(Map map);
  
}