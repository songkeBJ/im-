package com.sellerNet.backManagement.dao;

import java.math.BigDecimal;
import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.RechargeRecord;

/**
 * 发送验证码
 * @author gxg
 *
 */
public interface RechargeRecordMapper extends BaseDao<RechargeRecord, Long>{
	
	List<RechargeRecord> selectByUserId(Map map);

	String selectSum(Map map);

	String dayCount(Map map);

	String monthCount(Map map);

	String allCount(Map map);

	String countBydis(Map map);

	String alladdPay(Map map);

	Integer sumRequestAll(Map map2);

	String getAllSincer(Map todayAllGetMap);

	List<Map<String, Object>> userCashPoundageCountMonthData();
	
	
}
