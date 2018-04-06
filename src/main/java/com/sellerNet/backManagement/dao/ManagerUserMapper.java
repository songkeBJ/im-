package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.AgentUser;
import java.util.List;
import java.util.Map;

public abstract interface ManagerUserMapper extends BaseDao<AgentUser, Long>
{
  public abstract AgentUser findByNameAndPassowrd(Map paramMap);

  public abstract List<AgentUser> getUserList(Map paramMap);

  public abstract List<AgentUser> findByRoleId(Long paramLong);

public abstract AgentUser findByUserId(Long userId);
}