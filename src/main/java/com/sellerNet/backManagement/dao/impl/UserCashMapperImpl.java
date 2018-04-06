package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.UserCashMapper;
import com.sellerNet.backManagement.entity.UserCash;

@Repository
public class UserCashMapperImpl extends BaseDaoImpl<UserCash, Integer> implements UserCashMapper{
	
	public UserCashMapperImpl() {
		this.namespace = getClass().getName();
	}

	@Override
	public List<Map<String, Object>> countByMonth(Map map) {
		try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "countByMonth", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}
    
	@Override
	public Integer monthCount(Map map) {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "monthCount",map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public Integer dayCount(Map map) {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "dayCount",map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public Integer allCount(Map map) {
		try
	    {
	      return getSqlSession().selectOne(getClass().getName() + "." + "allCount",map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}
	@Override
	public Integer monthPoundageCount() {
		try
		{
			return getSqlSession().selectOne(getClass().getName() + "." + "monthPoundageCount");
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	@Override
	public Integer dayPoundageCount() {
		try
		{
			return getSqlSession().selectOne(getClass().getName() + "." + "dayPoundageCount");
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
	
	@Override
	public Integer allPoundageCount() {
		try
		{
			return getSqlSession().selectOne(getClass().getName() + "." + "allPoundageCount");
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}

	@Override
	public List<Map<String, Object>> countCashPoundageByMonth() {
		try
		{
			return getSqlSession().selectList(getClass().getName() + "." + "countCashPoundageByMonth");
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}



}