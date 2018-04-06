package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.UserOneCountDto;
import com.sellerNet.backManagement.entity.UserOne;

public abstract interface AppUserOneMapper extends BaseDao<UserOne, Integer>{
	
  public abstract UserOne byPhoneNumber(String phoneNumber);
  public abstract List<UserOne> byUserIdAndTerms(Map paramMap);
  public List<UserOne> byInvite6(Integer userId);
  public abstract Integer countCustomerServcice(Map map);
  public abstract int deleteCustomerService(List<Long> idList);
public abstract Integer findmySpreadNumOne(int parseInt);
public abstract Integer findmySpreadNumTwo(int parseInt);
public abstract Integer findmySpreadNumThree(int parseInt);
public abstract List<UserOneCountDto> dayCashCount(Map map);
public abstract Integer monthCount(Map map);
public abstract Integer dayCount(Map map);
public abstract Integer allCount(Map map);
public abstract String allPay();
public abstract Integer allCountBySex(Map map);
public abstract List<Map<String, Object>> countByMonth(Map map);
String allMonthUserPay();
String allDayUserPay();

}