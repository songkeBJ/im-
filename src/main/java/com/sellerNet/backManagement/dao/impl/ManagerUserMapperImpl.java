package com.sellerNet.backManagement.dao.impl;

import com.sellerNet.backManagement.dao.ManagerUserMapper;
import com.sellerNet.backManagement.entity.AgentUser;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ManagerUserMapperImpl extends BaseDaoImpl<AgentUser, Long>
  implements ManagerUserMapper
{
  public static final String SQLID_FINDBYNAMEANDPASSOWRD = "findByNameAndPassowrd";
  public static final String SQLID_GETUSERLIST = "getUserList";
  public static final String SQLID_FINDBYROLEID = "findByRoleId";

  public ManagerUserMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public AgentUser findByNameAndPassowrd(Map map)
  {
    try {
      return (AgentUser)getSqlSession().selectOne(getClass().getName() + "." + "findByNameAndPassowrd", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<AgentUser> getUserList(Map map)
  {
    try {
      return getSqlSession().selectList(getClass().getName() + "." + "getUserList", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<AgentUser> findByRoleId(Long roleId)
  {
    try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "findByRoleId", roleId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

@Override
public AgentUser findByUserId(Long userId) {
	try
    {
      return (AgentUser)getSqlSession().selectOne(getClass().getName() + "." + "findByUserId", userId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}
}