package com.sellerNet.backManagement.service.impl;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.RoleMapper;
import com.sellerNet.backManagement.entity.Role;
import com.sellerNet.backManagement.service.RoleService;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RoleServiceImpl extends BaseServiceImpl<Role, Long>
  implements RoleService
{
  private static final Logger LOGGER = LoggerFactory.getLogger(RoleServiceImpl.class);

  @Resource
  private RoleMapper roleMapper;

  protected BaseDao<Role, Long> getDao()
  {
    return this.roleMapper;
  }

  public int updateRole(String authIds, Long roleId)
  {
    Map map = new HashMap();
    map.put("roleId", Long.valueOf(roleId.longValue()));
    map.put("authIds", authIds);
    return this.roleMapper.updateRole(map);
  }
}