package com.sellerNet.backManagement.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.LableMemberMapper;
import com.sellerNet.backManagement.entity.LableMember;
import com.sellerNet.backManagement.service.LableMemberService;

@Service
public class LableMemberServiceImpl extends BaseServiceImpl<LableMember, Long>implements LableMemberService{
  
  private static final Logger LOGGER = LoggerFactory.getLogger(LableMemberServiceImpl.class);
  @Resource
  private LableMemberMapper lableMemberMapper;

  protected BaseDao<LableMember, Long> getDao(){
    return this.lableMemberMapper;
  }

	@Override
	public List<LableMember> getUserIdAndLableId(Long lableId, Long userId) {
		Map map = new HashMap();
		map.put("lableId", lableId);
		map.put("userId", userId);
		return lableMemberMapper.getUserIdAndLableId(map);
	}
}