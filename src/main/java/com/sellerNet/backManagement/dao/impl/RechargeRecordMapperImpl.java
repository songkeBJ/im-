package com.sellerNet.backManagement.dao.impl;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.RechargeRecordMapper;
import com.sellerNet.backManagement.entity.RechargeRecord;
@Repository
public class RechargeRecordMapperImpl extends BaseDaoImpl<RechargeRecord, Long> implements RechargeRecordMapper {
	
	public static final String SQLID_SELECTBYUSERID = "selectByUserId";
	
	public RechargeRecordMapperImpl() {
		super.namespace=this.getClass().getName();
	}

	@Override
	public List<RechargeRecord> selectByUserId(Map map) {
		try {  
            return getSqlSession().selectList(this.getClass().getName()+"." + SQLID_SELECTBYUSERID,map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public String selectSum(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "selectSum",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public String dayCount(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "dayCount",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public String monthCount(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "monthCount",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public String allCount(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "allCount",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public String countBydis(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "countBydis",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public String alladdPay(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "alladdPay",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public Integer sumRequestAll(Map map2) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "sumRequestAll",map2); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public String getAllSincer(Map todayAllGetMap) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "getAllSincer",todayAllGetMap); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	@Override
	public List<Map<String, Object>> userCashPoundageCountMonthData() {
		try {  
            return getSqlSession().selectList(this.getClass().getName()+"." + "userCashPoundageCountMonthData"); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}

	

}
