package com.sellerNet.backManagement.service.im;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.im.ImFriend;

import java.util.List;

public abstract interface ImFriendService extends BaseDao<ImFriend, Long>
{
  public abstract List<ImUserDTO> findFriendsForUser(Long paramLong) throws NumberFormatException, Exception;

  public abstract void moveFriendToGroup(Long paramLong1, Long paramLong2, Long paramLong3);

  public abstract void addFriend(Long paramLong1, Long paramLong2, Long paramLong3);
  public void addFriendRelation(Long userId, Long friendId);
  public void addFriendRelation(Long userId, Long friendId,String remark,String lableName);
  public abstract JsonResult addFriendIfNotFriend(Long paramLong1, Long paramLong2,String remark,String lableName);
  public abstract ImFriend findByUserIdAndFriendId(Long paramLong1, Long paramLong2);

  public abstract JsonResult deleteFriend(Long paramLong1, Long paramLong2);

  public abstract List<ImFriend> getByUserIdOrfriendId(Long paramLong, String paramString);
}