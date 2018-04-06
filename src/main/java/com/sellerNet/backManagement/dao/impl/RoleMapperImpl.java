package com.sellerNet.backManagement.dao.impl;

import com.sellerNet.backManagement.dao.RoleMapper;
import com.sellerNet.backManagement.entity.Role;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class RoleMapperImpl extends BaseDaoImpl<Role, Long>
  implements RoleMapper
{
  public static final String SQLID_GETROLENAMEBYID = "getRoleNameById";
  public static final String SQLID_UPDATEROLE = "updateRole";

  public RoleMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public Role getRoleNameById(Integer roleId)
  {
    try {
      return (Role)getSqlSession().selectOne(getClass().getName() + "." + "getRoleNameById", roleId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public int updateRole(Map param)
  {
    int rows = 0;
    try {
      rows = getSqlSession().update(this.namespace + "." + "updateRole", param);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }
}