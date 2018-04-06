package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.CitysMapper;
import com.sellerNet.backManagement.entity.Citys;
import com.sellerNet.backManagement.entity.Experience;
@Repository
public class CitysMapperImpl extends BaseDaoImpl<Citys, Long> implements CitysMapper{
	
	public CitysMapperImpl() {
		super.namespace=this.getClass().getName();
	}

	@Override
	public List selectAllArea(Map map) {
		try {  
            return getSqlSession().selectList(namespace + "." + "selectAllArea",map);  
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
	}

	@Override
	public Integer countAllArea() {
		try {  
            return getSqlSession().selectOne(namespace + "." + "countAllArea");  
        } catch (Exception e) {  
            e.printStackTrace();  
            return null;  
        }  
	}
}
