package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.Islike;

/**
 * 图片相关接口
 * @author gxg
 * @time   2016年9月14日
 * 
 */
public interface IslikeMapper extends BaseDao<Islike, Long> {
	
	public List<Islike> getByExpriencesAndCategory(Map map);
	
	public Islike getByUserIdAndCategory(Map map);
	
	public Islike getByuserIdAndExprienceIdAndCategory(Map map) ;

	public List<Islike> getByNewsIdAndCategory(Map paramMap);

	List<Islike> getByExprienceIdAndCategory(Map map);

	public Islike getByUserIdAndCategoryAndEvaId(Map map);
	
}
