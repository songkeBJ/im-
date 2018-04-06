package com.sellerNet.backManagement.dao.impl.im;

import com.sellerNet.backManagement.dao.ImFriendMapper;
import com.sellerNet.backManagement.dao.impl.BaseDaoImpl;
import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.im.ImFriend;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ImFriendMapperImpl extends BaseDaoImpl<ImFriend, Long>
  implements ImFriendMapper
{
  public static final String SQLID_GETBYUSERID = "getByUserId";
  public static final String SQLID_GETBYUSERIDANDFRIENDID = "getByUserIdAndfriendId";
  public static final String SQLID_GETBYUSERIDORFRIENDID = "getByUserIdOrfriendId";

  public ImFriendMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public List<ImUserDTO> getByUserId(Long userId)
  {
    try {
      return getSqlSession().selectList(getClass().getName() + "." + "getByUserId", userId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public ImFriend getByUserIdAndfriendId(Long userId, Long friendId)
  {
    try
    {
      Map map = new HashMap();
      map.put("userId", userId);
      map.put("friendId", friendId);
      return (ImFriend)getSqlSession().selectOne(getClass().getName() + "." + "getByUserIdAndfriendId", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<ImFriend> getByUserIdOrfriendId(Long userId)
  {
    try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getByUserIdOrfriendId", userId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }
}