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
import com.sellerNet.backManagement.dao.SetparamMapper;
import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.entity.Code;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.Setparam;
import com.sellerNet.backManagement.service.SetparamService;
import com.sellerNet.backManagement.utils.BarcodeFactory;
import com.sellerNet.backManagement.utils.JsonUtils;
import com.sellerNet.backManagement.utils.Md5Utils;

@Service
public class SetparamServiceImpl extends BaseServiceImpl<Setparam, Long>
		implements SetparamService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(SetparamServiceImpl.class);

	@Resource
	private SetparamMapper setparamMapper;
	
	@Override
	protected BaseDao<Setparam, Long> getDao() {
		return setparamMapper;
	}
	
	@Override
	public int deleteByPrimaryKey(Long uId) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertSelective(Setparam record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Setparam selectByPrimaryKey(Long uId) {
		return setparamMapper.selectByPrimaryKey(uId);
	}

	@Override
	public int updateByPrimaryKeySelective(Setparam record) {
		return setparamMapper.updateByPrimaryKeySelective(record);
	}

	@Override
	public int updateByPrimaryKey(Setparam record) {
		// TODO Auto-generated method stub
		return 0;
	}


}