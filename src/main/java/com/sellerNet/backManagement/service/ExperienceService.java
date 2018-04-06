package com.sellerNet.backManagement.service;

import java.util.List;

import com.sellerNet.backManagement.entity.Experience;
import com.sellerNet.backManagement.entity.ReleaseParam;

public interface ExperienceService extends baseService<Experience, Long>{

	/**
	 * 发布Y信心得
	 * @param phoneNumber
	 * @return
	 */
	public Experience release(ReleaseParam param);
	
	/**
	 * 根据
	 * @param userid :用户ID 
	 * @param limit  : 分页
	 * @return
	 */
	public List<Experience> findAll(Long userid,String limit);
	
	/**
	 * 根据
	 * @param userid :用户ID 
	 * @param limit  : 分页
	 * @return
	 */
	public List<Experience> findAllExperiencesByUsesrId(Long userid,String page);
	
	
	
	
}
