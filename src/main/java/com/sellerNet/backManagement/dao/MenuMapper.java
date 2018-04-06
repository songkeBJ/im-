package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.Menu;
import com.sellerNet.backManagement.entity.Role;
import java.util.List;
import java.util.Map;

public abstract interface MenuMapper extends BaseDao<Menu, Long>
{
  public abstract Role getRoleNameById(Integer paramInteger);

  public abstract List<Menu> getByParentIdAndMenus(Map paramMap);

  public abstract List<Menu> getByParentId(Long paramLong);

  public abstract int updateStateByAuthId(Map paramMap);
}