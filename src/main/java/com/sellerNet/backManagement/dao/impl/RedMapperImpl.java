package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.RedMapper;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.User;

@Repository
public class RedMapperImpl extends BaseDaoImpl<Red, Long>
  implements RedMapper
{
  public static final String SQLID_PHONENUMBER = "byPhoneNumber";
  public static final String SQLID_BYUSERIDANDTERMS = "byUserIdAndTerms";
  public static final String SQLID_BYMAXUSER = "byMaxUser";

  public RedMapperImpl()
  {
    this.namespace = getClass().getName();
  }

@Override
public List<Map<String, String>> getSendListByUserIdAndYear(Map map) {
	try
    {
      return getSqlSession().selectList(this.namespace + "." + "getSendListByUserIdAndYear", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}
@Override
public Map<String, String> getSendHeadByUserIdAndYear(Map map) {
	try
    {
      return getSqlSession().selectOne(this.namespace + "." + "getSendHeadByUserIdAndYear", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}
@Override
public List<Map<String, String>> getGrabListByUserIdAndYear(Map map) {
	try
	{
		return getSqlSession().selectList(this.namespace + "." + "getGrabListByUserIdAndYear", map);
	} catch (Exception e) {
		e.printStackTrace();
	}return null;
}
@Override
public Map<String, String> getGrabHeadByUserIdAndYear(Map map) {
	try
	{
		return getSqlSession().selectOne(this.namespace + "." + "getGrabHeadByUserIdAndYear", map);
	} catch (Exception e) {
		e.printStackTrace();
	}return null;
}

@Override
public List<Red> findOutTime() {
	try
	{
		return getSqlSession().selectList(this.namespace + "." + "findOutTime");
	} catch (Exception e) {
		e.printStackTrace();
	}return null;
}
	
}