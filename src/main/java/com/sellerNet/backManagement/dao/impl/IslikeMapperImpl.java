package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.IslikeMapper;
import com.sellerNet.backManagement.entity.Islike;

/**
 * 用户相关接口
 * @author gxg
 * @time   2016年9月14日
 * 
 */
@Repository
public class IslikeMapperImpl extends BaseDaoImpl<Islike, Long> implements IslikeMapper{

	
	public IslikeMapperImpl() {
		super.namespace=this.getClass().getName();
	}

	@Override
	public List<Islike> getByExpriencesAndCategory(Map map) {
		try {  
            return getSqlSession().selectList(this.getClass().getName()+"." + "getByExpriencesAndCategory",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
	}

	@Override
	public Islike getByUserIdAndCategory(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "getByUserIdAndCategory",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
	}

	@Override
	public Islike getByuserIdAndExprienceIdAndCategory(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "getByuserIdAndExprienceIdAndCategory",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
	}
	@Override
	public List<Islike> getByExprienceIdAndCategory(Map map) {
		try {  
			return getSqlSession().selectList(this.getClass().getName()+"." + "getByExprienceIdAndCategory",map); 
		} catch (Exception e) {  
			e.printStackTrace();  
			return null;  
		}  
	}

	@Override
	public List<Islike> getByNewsIdAndCategory(Map paramMap) {
		try {  
            return getSqlSession().selectList(this.getClass().getName()+"." + "getByNewsIdAndCategory",paramMap); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
	}

	@Override
	public Islike getByUserIdAndCategoryAndEvaId(Map map) {
		try {  
            return getSqlSession().selectOne(this.getClass().getName()+"." + "getByUserIdAndCategoryAndEvaId",map); 
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }
	}
	
	
}
