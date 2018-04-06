package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.Set;
import com.sellerNet.backManagement.entity.Setparam;


public interface SetparamMapper  extends BaseDao<Setparam, Long>{
    int deleteByPrimaryKey(Long uId);

    int insert(Setparam record);

    int insertSelective(Setparam record);

    Setparam selectByPrimaryKey(Long uId);

    int updateByPrimaryKeySelective(Setparam record);

    int updateByPrimaryKey(Setparam record);
}