package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.dto.im.ImUserGroupDTO;
import com.sellerNet.backManagement.entity.im.ImGroup;
import java.util.List;

public abstract interface ImGroupMapper extends BaseDao<ImGroup, Long>
{
  public abstract String findMaxGroupNumber();

  public abstract ImGroup findByGroupNumberAndIsDeletedFalse(String paramString);

  public abstract List<ImUserGroupDTO> findUserGroupsDTO(Long paramLong);

  public abstract ImGroup findGroupByChatGroupId(String paramString);

  public abstract ImGroup findGroupByUserId(Long paramLong);
}