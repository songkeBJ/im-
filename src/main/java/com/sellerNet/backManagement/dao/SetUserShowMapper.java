package com.sellerNet.backManagement.dao;

import java.util.List;

import com.sellerNet.backManagement.entity.SetUserShow;
import com.sellerNet.backManagement.entity.Setparam;

public interface SetUserShowMapper  extends BaseDao<SetUserShow, Long>{
    int deleteByPrimaryKey(Long id);

    int insert(SetUserShow record);

    int insertSelective(SetUserShow record);

    SetUserShow selectByPrimaryKey(Long id);
    
    List<SetUserShow> queryList(SetUserShow record);

    int updateByPrimaryKeySelective(SetUserShow record);

    int updateByPrimaryKey(SetUserShow record);
}