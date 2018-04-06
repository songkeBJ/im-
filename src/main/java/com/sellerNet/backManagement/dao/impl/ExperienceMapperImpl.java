package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.ExperienceMapper;
import com.sellerNet.backManagement.entity.Experience;

/**
 * 心得相关接口
 * @author gxg
 * @time   2016年9月14日
 * 
 */
@Repository
public class ExperienceMapperImpl extends BaseDaoImpl<Experience, Long> implements ExperienceMapper{
	
	public static final String SQLID_FINDALLEXPERIENCES = "findAllExperiences";
	
	public ExperienceMapperImpl() {
		super.namespace=this.getClass().getName();
	}

	@Override
	public List<Experience> findAllExperiences(Map param) {
		try {  
            return getSqlSession().selectList(namespace + "." + SQLID_FINDALLEXPERIENCES,param);  
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
	}

	@Override
	public List<Experience> findAllExperiencesByUsesrId(Map map) {
		try {  
            return getSqlSession().selectList(namespace + "." + "findAllExperiencesByUsesrId",map);  
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
	}
	
}
