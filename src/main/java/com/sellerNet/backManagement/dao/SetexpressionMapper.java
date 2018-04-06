package com.sellerNet.backManagement.dao;

import java.util.List;

import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.Setexpression;


public interface SetexpressionMapper  extends BaseDao<Setexpression, Long>{
    int deleteByPrimaryKey(Long uId);

    int insert(Setexpression record);

    int insertSelective(Setexpression record);

    Setexpression selectByPrimaryKey(Long uId);
    
    List<Setexpression> queryList(Setexpression record);

    int updateByPrimaryKeySelective(Setexpression record);

    int updateByPrimaryKey(Setexpression record);
}