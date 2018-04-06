package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.UserRelationDto;
import com.sellerNet.backManagement.entity.UserRelation;

public abstract interface UserRelationMapper extends BaseDao<UserRelation, Long>
{

	List<UserRelationDto> selectCCParam(Map map);
}