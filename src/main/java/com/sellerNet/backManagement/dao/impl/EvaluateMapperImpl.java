package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.EvaluateMapper;
import com.sellerNet.backManagement.entity.Evaluate;
import com.sellerNet.backManagement.entity.EvaluateNewsOut;
import com.sellerNet.backManagement.entity.EvaluateOut;

/**
 * 评论相关接口
 * @author gxg
 * @time   2016年9月14日
 * 
 */
@Repository
public class EvaluateMapperImpl extends BaseDaoImpl<Evaluate, Long> implements EvaluateMapper{
	
	public static final String SQLID_GETBYOBJECTID = "getByObjectId";
	public EvaluateMapperImpl() {
		super.namespace=this.getClass().getName();
	}

	@Override
	public List<Evaluate> getByObjectIdAndCategory(Map map) {
		try {  
            return getSqlSession().selectList(this.getClass().getName()+"." + "getByObjectIdAndCategory",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
	}

	@Override
	public List<EvaluateNewsOut> getNewsEvaluates(Map map) {
		try {  
            return getSqlSession().selectList(this.getClass().getName()+"." + "getNewsEvaluates",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        } 
	}

	@Override
	public EvaluateNewsOut getNewsEvaluatesIslikeTime(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "getNewsEvaluatesIslikeTime",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        } 
	}

	@Override
	public EvaluateNewsOut getNewsEvaluatesBackTime(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "getNewsEvaluatesBackTime",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        } 
	}

	@Override
	public List<EvaluateNewsOut> getByParentIdAndCategory(Map map) {
		try {  
            return getSqlSession().selectList(this.getClass().getName()+"." + "getByParentIdAndCategory",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        } 
	}

	@Override
	public EvaluateNewsOut getOutByIdAndCategory(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "getOutById",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        } 
	}

}
