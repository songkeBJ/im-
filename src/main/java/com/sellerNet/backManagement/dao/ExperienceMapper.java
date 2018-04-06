package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.Experience;

/**
 * 心得相关接口
 * @author gxg
 * @time   2016年9月14日
 * 
 */
public interface ExperienceMapper extends BaseDao<Experience, Long> {
	
	/**
	 * 根据
	 * @param userid :用户ID 
	 * @param limit  : 分页
	 * @return
	 */
	public List<Experience> findAllExperiences(Map param);

	public List<Experience> findAllExperiencesByUsesrId(Map map);
	
}
