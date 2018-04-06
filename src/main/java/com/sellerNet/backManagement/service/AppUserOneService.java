package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.dto.UserOneCountDto;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.UserOne;

public abstract interface AppUserOneService extends baseService<UserOne, Integer>{
	
   /**
    * 通过手机号获取用户信息
  * @param phoneNumber
  * @return
  */
  public abstract UserOne byPhoneNumber(String phoneNumber);

  /**
   * 用户注册
  * @param userOne
  * @return
  */
  public abstract JsonResult signUp(UserOne userOne,HttpServletRequest request);
  
  /**
   * 用户登陆
  * @param userOne
  * @return
  */
  public abstract JsonResult<UserDto> signIn(String phoneNumber, String password,HttpServletRequest request);
  
  public abstract List<UserOne> byUserIdAndTerms(Map paramMap);
  
  
  public abstract List<UserOne> byInvite6(Integer userId);

  public abstract List<UserOne> selectCustomerService();

public abstract PagingResult selectCustomerServiceList(Map map);

public abstract int deleteCustomerService(List<Long> idList);

public abstract Integer findmySpreadNumOne(int parseInt);

public abstract Integer findmySpreadNumTwo(int parseInt);

public abstract Integer findmySpreadNumThree(int parseInt);

public abstract Integer dayCount(Map map);

public abstract Integer monthCount(Map map);

public abstract Integer allCount(Map map);

public abstract List<UserOneCountDto> dayCashCount(Map map);

public abstract String allPay();
public abstract String allDayPay();
public abstract String allMonthPay();

public abstract Integer allCountBySex(Map map);

public abstract List<Map<String, Object>> countByMonth(Map map);


}