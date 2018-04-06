package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.im.ImFriend;
import java.util.List;

public abstract interface ImFriendMapper extends BaseDao<ImFriend, Long>
{
  public abstract List<ImUserDTO> getByUserId(Long paramLong);

  public abstract ImFriend getByUserIdAndfriendId(Long paramLong1, Long paramLong2);

  public abstract List<ImFriend> getByUserIdOrfriendId(Long paramLong);
}