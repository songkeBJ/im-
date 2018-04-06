package com.sellerNet.backManagement.dao.impl;

import com.sellerNet.backManagement.dao.MenuMapper;
import com.sellerNet.backManagement.entity.Menu;
import com.sellerNet.backManagement.entity.Role;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MenuMapperImpl extends BaseDaoImpl<Menu, Long>
  implements MenuMapper
{
  public static final String SQLID_GETROLENAMEBYID = "getRoleNameById";
  public static final String SQLID_GETBYPARENTIDANDMENUS = "getByParentIdAndMenus";
  public static final String SQLID_GETBYPARENTID = "getByParentId";
  public static final String SQLID_UPDATESTATEBYAUTHID = "updateStateByAuthId";

  public MenuMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public Role getRoleNameById(Integer roleId)
  {
    try {
      return (Role)getSqlSession().selectOne(getClass().getName() + "." + "getRoleNameById", roleId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<Menu> getByParentIdAndMenus(Map map)
  {
    try
    {
      return getSqlSession().selectList(this.namespace + "." + "getByParentIdAndMenus", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<Menu> getByParentId(Long parentId)
  {
    try
    {
      return getSqlSession().selectList(this.namespace + "." + "getByParentId", parentId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public int updateStateByAuthId(Map map)
  {
    int rows = 0;
    try {
      rows = getSqlSession().update(this.namespace + "." + "updateStateByAuthId", map);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }
}