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
import com.sellerNet.backManagement.dao.SetUserShowMapper;
import com.sellerNet.backManagement.dao.SetexpressionMapper;
import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.entity.Code;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Set;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.SetUserShow;
import com.sellerNet.backManagement.service.SetUserShowService;
import com.sellerNet.backManagement.utils.BarcodeFactory;
import com.sellerNet.backManagement.utils.JsonUtils;
import com.sellerNet.backManagement.utils.Md5Utils;

@Service
public class SetUserShowServiceImpl extends BaseServiceImpl<SetUserShow, Long>
		implements SetUserShowService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(SetUserShowServiceImpl.class);

	@Resource
	private SetUserShowMapper setUserShowMapper;
	
	@Override
	public int deleteByPrimaryKey(Long id) {
		return setUserShowMapper.deleteByPrimaryKey(id);
	}

	@Override
	public int insertSelective(SetUserShow record) {
		return setUserShowMapper.insert(record);
	}

	@Override
	public List<SetUserShow> queryList(SetUserShow record) {
		return setUserShowMapper.queryList(record);
	}
	
	@Override
	public SetUserShow selectByPrimaryKey(Long uId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateByPrimaryKeySelective(SetUserShow record) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateByPrimaryKey(SetUserShow record) {
		// TODO Auto-generated method stub
		return 0;
	}

	protected BaseDao<SetUserShow, Long> getDao() {
		return this.setUserShowMapper;
	}


}