package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.Set;
import com.sellerNet.backManagement.entity.Setexpression;

public interface SetMapper  extends BaseDao<Set, Long>{
    int deleteByPrimaryKey(Long id);

    int insert(Set record);

    int insertSelective(Set record);

    Set selectByPrimaryKey(Long id);
    
    Set selectBySet(Set record);

    int updateByPrimaryKeySelective(Set record);

    int updateByPrimaryKey(Set record);
}