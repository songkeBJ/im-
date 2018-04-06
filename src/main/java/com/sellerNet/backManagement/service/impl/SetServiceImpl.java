package com.sellerNet.backManagement.service.impl;

import java.io.File;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.CodeMapper;
import com.sellerNet.backManagement.dao.SetexpressionMapper;
import com.sellerNet.backManagement.dao.SetMapper;
import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.entity.Code;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Setexpression;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.Set;
import com.sellerNet.backManagement.service.SetService;
import com.sellerNet.backManagement.utils.BarcodeFactory;
import com.sellerNet.backManagement.utils.JsonUtils;
import com.sellerNet.backManagement.utils.Md5Utils;

@Service
public class SetServiceImpl extends BaseServiceImpl<Set, Long>
		implements SetService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(SetServiceImpl.class);

	@Resource
	private SetMapper setparamMapper;
	
	protected BaseDao<Set, Long> getDao() {
		return this.setparamMapper;
	}
	
	@Override
	public int deleteByPrimaryKey(Long uId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Set record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Set selectByPrimaryKey(Long uId) {
		return setparamMapper.selectByPrimaryKey(uId);
	}

	@Override
	public int updateByPrimaryKeySelective(Set record) {
		return setparamMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Set record) {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public Set selectBySet(Set record) {
		return setparamMapper.selectBySet(record);
	}

}