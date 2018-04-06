package com.sellerNet.backManagement.service;

import java.util.List;

import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.MobileUser;
import com.sellerNet.backManagement.entity.MobileUserDto;

public abstract interface MobileUserService extends baseService<MobileUser, Long>{
	
  /**
 * @param lat 纬度  
 * @param lon 精度  
 * @param raidus raidus 半径（以米为单位）
 * @param page 分页第几页
 * @param sex 
 * @param meter 
 * @return
 */
public abstract JsonResult<List<MobileUserDto>> getNearUsers(double lat, double lon,int page,Long uid, String sex, Integer meter);
/**
 * @param lat 纬度  
 * @param lon 精度  
 * @param raidus raidus 半径（以米为单位）
 * @param page 分页第几页
 * @return
 */
public abstract JsonResult<List<MobileUserDto>> getNearpeople(double lat, double lon,Long uid);

/**
 * @param lat 纬度  
 * @param lon 精度  
 * @param raidus raidus 半径（以米为单位）
 * @param page 分页第几页
 * @return
 */
public abstract JsonResult<List<MobileUserDto>> getNearStroe(double lat, double lon,Long uid);


/**
 * @param lat 纬度  
 * @param lon 精度  
 * @param raidus raidus 半径（以米为单位）
 * @param page 分页第几页
 * @return
 */
public abstract JsonResult<List<MobileUserDto>> radarUsers(double lat, double lon,int page,Long uid);


public abstract MobileUser selectByUserId(Long userId);

}