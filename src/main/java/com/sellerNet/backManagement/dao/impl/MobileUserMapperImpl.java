package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.MobileUserMapper;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.MobileUser;
import com.sellerNet.backManagement.entity.MobileUserDto;

@Repository
public class MobileUserMapperImpl extends BaseDaoImpl<MobileUser, Long> implements MobileUserMapper{
  
	public static final String SQLID_SELECTBYUSERID = "selectByUserId";
	public static final String SQLID_GETNEARPEOPLE = "getNearpeople";
	public static final String SQLID_GETNEARSTROE = "getNearStroe";
	public static final String SQLID_RADARUSERS = "radarUsers";
	
	public MobileUserMapperImpl(){
		this.namespace = getClass().getName();
	}

	@Override
	public MobileUser selectByUserId(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + SQLID_SELECTBYUSERID,map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public List<MobileUser> getNearpeople(Map map) {
		
		try {  
            return getSqlSession().selectList(this.getClass().getName()+"." + SQLID_GETNEARPEOPLE,map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public List<MobileUser> getNearStroe(Map map) {
		try {  
            return  getSqlSession().selectList(this.getClass().getName()+"." + SQLID_GETNEARSTROE,map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public List<MobileUser> radarUsers(Map map) {
		try {  
            return  getSqlSession().selectList(this.getClass().getName()+"." + SQLID_RADARUSERS,map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}
}