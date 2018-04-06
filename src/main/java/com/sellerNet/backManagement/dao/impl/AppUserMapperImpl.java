package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.entity.User;

@Repository
public class AppUserMapperImpl extends BaseDaoImpl<User, Long>
  implements AppUserMapper
{
  public static final String SQLID_PHONENUMBER = "byPhoneNumber";
  public static final String SQLID_BYUSERIDANDTERMS = "byUserIdAndTerms";
  public static final String SQLID_BYMAXUSER = "byMaxUser";

  public AppUserMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public User byPhoneNumber(String phoneNumber)
  {
    try
    {
      return (User)getSqlSession().selectOne(getClass().getName() + "." + "byPhoneNumber", phoneNumber);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<User> byUserIdAndTerms(Map map)
  {
    try
    {
      return getSqlSession().selectList(this.namespace + "." + "byUserIdAndTerms", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

	@Override
	public User byMaxUser() {
		try
	    {
	      return (User)getSqlSession().selectOne(getClass().getName() + "." + SQLID_BYMAXUSER);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public List<User> findByCondition(Map map) {
		  try
		    {
		      return getSqlSession().selectList(this.namespace + "." + "findByCondition", map);
		    } catch (Exception e) {
		      e.printStackTrace();
		    }return null;
	}

	@Override
	public User byUserId(Long userId) {
		try
	    {
	      return (User)getSqlSession().selectOne(getClass().getName() + "." + "byUserId",userId);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}
	
}