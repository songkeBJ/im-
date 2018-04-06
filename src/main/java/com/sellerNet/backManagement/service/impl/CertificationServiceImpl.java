package com.sellerNet.backManagement.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.sellerNet.backManagement.config.RedPackage;
import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.AppUserOneMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.CertificationMapper;
import com.sellerNet.backManagement.dao.RedMapper;
import com.sellerNet.backManagement.dao.RedRecordMapper;
import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.Certification;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.RedRecord;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.openapi.sdk.utils.DateUtil;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.CertificationService;
import com.sellerNet.backManagement.service.RedService;
import com.sellerNet.backManagement.utils.Md5Utils;
import com.sellerNet.backManagement.utils.RedUtils;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CertificationServiceImpl extends BaseServiceImpl<Certification, Long> implements CertificationService{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(CertificationServiceImpl.class);

	@Resource
	private CertificationMapper certificationMapper;
	
	protected BaseDao<Certification, Long> getDao() { 
		return this.certificationMapper; 
	}
	
	@Override
	public void addCertification(Certification certification) {
		certificationMapper.insert(certification);
	}
	
	/*
	 * 检查是否实名认证通过
	 */
	@Override
	public boolean checkPass(String user_id) {
		Certification certification = certificationMapper.selectByUserId(user_id);
		if(certification==null){
			return false;
		}
		return certification.getPass().equals("0")?false:true;
	}

	@Override
	public Certification selectByUserId(String user_id) {
		return certificationMapper.selectByUserId(user_id);
	}


	
}