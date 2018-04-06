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

import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.AppUserOneMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.CodeMapper;
import com.sellerNet.backManagement.dao.SetexpressionMapper;
import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.entity.Code;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Setexpression;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.SetexpressionService;
import com.sellerNet.backManagement.utils.BarcodeFactory;
import com.sellerNet.backManagement.utils.JsonUtils;
import com.sellerNet.backManagement.utils.Md5Utils;

@Service
public class SetexpressionServiceImpl extends
		BaseServiceImpl<Setexpression, Long> implements SetexpressionService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(SetexpressionServiceImpl.class);

	@Resource
	private SetexpressionMapper setexpressionMapper;

	protected BaseDao<Setexpression, Long> getDao() {
		return this.setexpressionMapper;
	}

	@Override
	public int deleteByPrimaryKey(Long uId) {
		
		return 0;
	}

	@Override
	public int insert(Setexpression record) {
		return setexpressionMapper.insert(record);
	}

	@Override
	public int insertSelective(Setexpression record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Setexpression selectByPrimaryKey(Long uId) {
		
		return null;
	}
	
	@Override
	public List<Setexpression> queryList(Setexpression record) {
		return setexpressionMapper.queryList(record);
	}

	@Override
	public int updateByPrimaryKeySelective(Setexpression record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(Setexpression record) {
		// TODO Auto-generated method stub
		return 0;
	}


}