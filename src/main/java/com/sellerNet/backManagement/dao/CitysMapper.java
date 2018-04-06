package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.Citys;

/**
 * 城市Mapper
 * @author gxg
 * @time   2016年9月14日
 * 
 */
public interface CitysMapper extends BaseDao<Citys, Long> {

	List selectAllArea(Map map);

	Integer countAllArea();

}
