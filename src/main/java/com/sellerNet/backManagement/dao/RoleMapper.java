package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.Role;
import java.util.Map;

public abstract interface RoleMapper extends BaseDao<Role, Long>
{
  public abstract Role getRoleNameById(Integer paramInteger);

  public abstract int updateRole(Map paramMap);
}