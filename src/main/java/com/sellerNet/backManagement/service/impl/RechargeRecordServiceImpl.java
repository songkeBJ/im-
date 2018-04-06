package com.sellerNet.backManagement.service.impl;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.RechargeRecordMapper;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.utils.NumberUtil;
@Service
public class RechargeRecordServiceImpl extends BaseServiceImpl<RechargeRecord, Long>implements RechargeRecordService {

	@Resource
	private RechargeRecordMapper rechargeRecordMapper;
	
	@Override
	public List<RechargeRecord> selectByUserId(Long userId,String limit,String active) {
		 Map map = new HashMap<>();
		 map.put("start", NumberUtil.countOffset(Integer.valueOf(limit)));
	     map.put("end", 15);
	     map.put("active", active);
	     map.put("userId", userId);
		return rechargeRecordMapper.selectByUserId(map);
	}

	@Override
	protected BaseDao<RechargeRecord, Long> getDao() {
		return rechargeRecordMapper;
	}

	@Override
	public String selectSum(Map map) {
		return rechargeRecordMapper.selectSum(map);
	}

	@Override
	public String monthCount(Map map) {
		return rechargeRecordMapper.monthCount(map);
	}

	@Override
	public String dayCount(Map map) {
		return rechargeRecordMapper.dayCount(map);
	}

	@Override
	public String allCount(Map map) {
		return rechargeRecordMapper.allCount(map);
	}

	@Override
	public String countBydis(Map map) {
		return rechargeRecordMapper.countBydis(map);
	}

	@Override
	public String alladdPay(Map map) {
		return rechargeRecordMapper.alladdPay(map);
	}

	@Override
	public Integer sumRequestAll(Map map2) {
		return rechargeRecordMapper.sumRequestAll(map2);
	}

	@Override
	public String getAllSincer(Map todayAllGetMap) {
		return rechargeRecordMapper.getAllSincer(todayAllGetMap);
	}

	@Override
	public List<Map<String, Object>> userCashPoundageCountMonthData() {
		return rechargeRecordMapper.userCashPoundageCountMonthData();
	}

	

}
