package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.MobileUser;
import com.sellerNet.backManagement.entity.MobileUserDto;

public abstract interface MobileUserMapper extends BaseDao<MobileUser, Long>{
	
	public MobileUser selectByUserId(Map map);
	
	/**
	 * @param lat 纬度  
	 * @param lon 精度  
	 * @param raidus raidus 半径（以米为单位）
	 * @param page 分页第几页
	 * @return
	 */
	public abstract List<MobileUser> getNearpeople(Map map);

	/**
	 * @param lat 纬度  
	 * @param lon 精度  
	 * @param raidus raidus 半径（以米为单位）
	 * @param page 分页第几页
	 * @return
	 */
	public abstract List<MobileUser> getNearStroe(Map map);
	
	/**
	 * @param lat 纬度  
	 * @param lon 精度  
	 * @param raidus raidus 半径（以米为单位）
	 * @param page 分页第几页
	 * @return
	 */
	public abstract List<MobileUser> radarUsers(Map map);
}