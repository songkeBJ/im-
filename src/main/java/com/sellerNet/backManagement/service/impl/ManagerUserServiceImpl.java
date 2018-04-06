package com.sellerNet.backManagement.service.impl;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.ManagerUserMapper;
import com.sellerNet.backManagement.entity.AgentUser;
import com.sellerNet.backManagement.service.ManagerUserService;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class ManagerUserServiceImpl extends BaseServiceImpl<AgentUser, Long>
  implements ManagerUserService
{
  private static final Logger LOGGER = LoggerFactory.getLogger(ManagerUserServiceImpl.class);

  @Resource
  private ManagerUserMapper managerUserMapper;

  protected BaseDao<AgentUser, Long> getDao() {
    return this.managerUserMapper;
  }

  public AgentUser findByNameAndPassowrd(String username, String password)
  {
    Map map = new HashMap();
    map.put("name", username);
    map.put("password", password);
    return this.managerUserMapper.findByNameAndPassowrd(map);
  }

  public AgentUser findByName(String username)
  {
    Map map = new HashMap();
    map.put("name", username);
    return this.managerUserMapper.findByNameAndPassowrd(map);
  }

  public List<AgentUser> findByRoleId(Long roleId)
  {
    List<AgentUser> user = this.managerUserMapper.findByRoleId(roleId);
    return user;
  }

@Override
public AgentUser findByUserId(Long userId) {
	return managerUserMapper.findByUserId(userId);
}
}