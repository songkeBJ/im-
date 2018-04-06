package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.Islike;


/**
 * @author gxg
 * @time   2016年9月14日
 * 
 */
public interface IslikeService extends baseService<Islike, Long>{
	
	/**
	 * 根据心得ID
	 * @param exprienceId
	 * @return
	 */
	List<Islike> getByExpriencesAndCategory(Long exprienceId,String category);
	
	/**
	 * 根据点赞人获取
	 * @param userId
	 * @return
	 */
	Islike getByUserIdAndCategory(Long userId,String category);
	
	
	/**
	 * 根据心得ID
	 * @param exprienceId
	 * @return
	 */
	Islike getByuserIdAndExprienceIdAndCategory(Long userId,Long exprienceId,String category);

	List<Islike> getByNewsIdAndCategory(Map paramMap);

	Islike getByUserIdAndCategoryAndEvaId(Long userId, String name, Long evaluateId);
	
	
}
