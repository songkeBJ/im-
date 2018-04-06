package com.sellerNet.backManagement.dao.impl.im;

import com.sellerNet.backManagement.dao.ImGroupMapper;
import com.sellerNet.backManagement.dao.impl.BaseDaoImpl;
import com.sellerNet.backManagement.dto.im.ImUserGroupDTO;
import com.sellerNet.backManagement.entity.im.ImGroup;
import java.util.List;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ImGroupMapperImpl extends BaseDaoImpl<ImGroup, Long>
  implements ImGroupMapper
{
  public static final String SQLID_FINDMAXGROUPNUMBER = "findMaxGroupNumber";
  public static final String SQLID_FINDBYGROUPNUMBERANDISDELETEDFALSE = "findByGroupNumberAndIsDeletedFalse";
  public static final String SQLID_FINDUSERGROUPSDTO = "findUserGroupsDTO";
  public static final String SQLID_FINDGROUPBYUSERID = "findGroupByUserId";
  public static final String SQLID_FINDGROUPBYCHATGROUPID = "findGroupByChatGroupId";

  public ImGroupMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public String findMaxGroupNumber()
  {
    try {
      return (String)getSqlSession().selectOne(getClass().getName() + "." + "findMaxGroupNumber");
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public ImGroup findByGroupNumberAndIsDeletedFalse(String groupNumber)
  {
    try
    {
      return (ImGroup)getSqlSession().selectOne(getClass().getName() + "." + "findByGroupNumberAndIsDeletedFalse", groupNumber);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<ImUserGroupDTO> findUserGroupsDTO(Long userId)
  {
    try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "findUserGroupsDTO", userId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public ImGroup findGroupByUserId(Long userId)
  {
    try
    {
      return (ImGroup)getSqlSession().selectOne(getClass().getName() + "." + "findGroupByUserId", userId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public ImGroup findGroupByChatGroupId(String chatGroupId)
  {
    try
    {
      return (ImGroup)getSqlSession().selectOne(getClass().getName() + "." + "findGroupByChatGroupId", chatGroupId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }
}