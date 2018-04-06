package com.sellerNet.backManagement.service.impl;

import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.utils.Md5Utils;

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
public class AppUserServiceImpl extends BaseServiceImpl<User, Long> implements AppUserService{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AppUserServiceImpl.class);

	@Resource
	private AppUserMapper appUserMapper;

	protected BaseDao<User, Long> getDao() { 
		return this.appUserMapper; 
	}


	public User byPhoneNumber(String phoneNumber){
		User alreadyexist = this.appUserMapper.byPhoneNumber(phoneNumber);
		return alreadyexist;
	}

	public JsonResult signUp(User user){
		JsonResult jsonResult = new JsonResult();

		User alreadyExist = this.appUserMapper.byPhoneNumber(user.getPhoneNumber());
		if (alreadyExist != null) {
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("该手机号已经注册!");
			return jsonResult;
		}

		int count = this.appUserMapper.insert(user);
		if (count == 0) {
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("用户注册失败");
			return jsonResult;
		}
		jsonResult.setErrorDescription("用户注册成功");

		return jsonResult;
	}

	public JsonResult<UserDto> signIn(String phoneNumber, String password){
		JsonResult jsonResult = new JsonResult();

		User alreadyExist = this.appUserMapper.byPhoneNumber(phoneNumber);
		if (alreadyExist == null) {
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("用户不存在!");
			return jsonResult;
		}
		UserDto userDto = new UserDto();
	    userDto.setPhoneNumber(alreadyExist.getPhoneNumber());
	    userDto.setAvatar(alreadyExist.getAvatar());
	    userDto.setBackAvatar(alreadyExist.getBackAvatar());
	    userDto.setBalance(alreadyExist.getBalance());
	    userDto.setDistrictId(alreadyExist.getDistrictId());
	    userDto.setSex(alreadyExist.getSex());
	    userDto.setThermalSignatrue(alreadyExist.getThermalSignatrue());
	    userDto.setUserEmail(alreadyExist.getUserEmail());
	    userDto.setUsername(alreadyExist.getUsername());

	    if (!alreadyExist.getPassword().equals(Md5Utils.encrypt(password))) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("用户密码不正确!");
	      return jsonResult;
	    }

	    //jsonResult.setDataObject(userDto);
	    jsonResult.setErrorDescription("登陆成功!");
	    return jsonResult;
	}

	public List<User> byUserIdAndTerms(Map map){
		return this.appUserMapper.byUserIdAndTerms(map);
	}


	@Override
	public List<User> findByCondition(Map map) {
		return this.appUserMapper.findByCondition(map);
	}


	@Override
	public Map<String, Object> appUserCount(String year) {
		Map<String, Object> appUserCountMap = new HashMap<>();
		//统计
		return null;
	}


	@Override
	public User byUserId(Long userId) {
		return appUserMapper.byUserId(userId);
	}

}