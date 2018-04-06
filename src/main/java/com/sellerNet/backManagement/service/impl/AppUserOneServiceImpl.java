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
import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.dto.UserOneCountDto;
import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.Code;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.NewStatus;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.NewStatusService;
import com.sellerNet.backManagement.utils.BarcodeFactory;
import com.sellerNet.backManagement.utils.JsonUtils;
import com.sellerNet.backManagement.utils.Md5Utils;

@Service
@Transactional
public class AppUserOneServiceImpl extends BaseServiceImpl<UserOne, Integer> implements AppUserOneService{
  
  private static final Logger LOGGER = LoggerFactory.getLogger(AppUserOneServiceImpl.class);

  private File uploadPath;
  @Resource
  private AppUserOneMapper appUserOneMapper;
  
  @Resource
  private AppUserMapper appUserMapper;
  
  @Resource
  private CodeMapper codeMapper;
  @Resource
  private NewStatusService newStatusService;

  protected BaseDao<UserOne, Integer> getDao() { 
	  return this.appUserOneMapper; 
  }


  public UserOne byPhoneNumber(String phoneNumber){
	UserOne alreadyexist = this.appUserOneMapper.byPhoneNumber(phoneNumber);
    return alreadyexist;
  }

  public JsonResult signUp(UserOne user,HttpServletRequest request){
	  
    JsonResult jsonResult = new JsonResult();

    UserOne alreadyExist = this.appUserOneMapper.byPhoneNumber(user.getPhoneNumber());
    if (alreadyExist != null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("该手机号已经注册!");
      return jsonResult;
    }
    user.setAvator("");
    user.setCustomerServiceStatus(0);
    user.setAddPay(new BigDecimal(0));
    String token=Md5Utils.encrypt(user.getPhoneNumber()+user.getPassword()+new Date().getTime());
    int count = this.appUserOneMapper.insert(user);
    if (count == 0) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("用户注册失败");
      return jsonResult;
    }
    jsonResult.setErrorDescription("用户注册成功");
    User user2= new User();
    user2.setToken(token);
    user2.setLabel("");
    user2.setPhoneNumber(user.getPhoneNumber());
    user2.setUserId((long)(user.getUser_id()));
    int accountNumber=0;
    
    try {
        if(appUserMapper.byMaxUser()!=null){
        	accountNumber = Integer.parseInt(appUserMapper.byMaxUser().getAccountNumber());
        }
	} catch (Exception e) {
	}
    
    user2.setAccountNumber(String.valueOf(accountNumber+1));
    try {
        //生成个人二维码开始
        UserOne userone = this.appUserOneMapper.byPhoneNumber(user2.getPhoneNumber());
        Map map1 = new HashMap();
        map1.put("type","userType");
        map1.put("userId", userone.getUser_id());
        String jsonString = JsonUtils.toJson(map1);
        //获取根目录对应的真实物理路径  
        uploadPath = new File(request.getSession().getServletContext().getRealPath("images"));
        System.out.println("uploadPath=====" + uploadPath);  
        //如果目录不存在  
        if (!uploadPath.exists()) {  
            //创建目录  
            uploadPath.mkdir();  
        } 
        
        String codeIconPath = uploadPath+"/default.jpg";
        String imageName = new Date().getTime()+".png";
        String codePath = uploadPath.toString()+"/"+imageName;
        BarcodeFactory.encode(jsonString, 300, 300, codeIconPath, codePath, false);
        user2.setQrCode("images/"+imageName);
	} catch (Exception e) {
		// TODO: handle exception
	}
    user2.setSex(1);
    int count2 = appUserMapper.insert(user2);
    if (count2 == 0) {
        jsonResult.setCode("1");
        jsonResult.setErrorDescription("用户注册失败");
        return jsonResult;
    }
    Map map = new HashMap();
    map.put("phoneNumber", user.getPhoneNumber());
    Code code = codeMapper.selectParam(map).get(0);
    code.setIsLocked(false);
    codeMapper.update(code);
    Map tokenMap = new HashMap<>();
    tokenMap.put("token", token);
    jsonResult.setDataObject(tokenMap);
    return jsonResult;
  }

  public JsonResult<UserDto> signIn(String phoneNumber, String password,HttpServletRequest request,String deviceToken,String equipmentOS){
    JsonResult jsonResult = new JsonResult();

    UserOne alreadyExist = this.appUserOneMapper.byPhoneNumber(phoneNumber);
    if (alreadyExist == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("用户不存在!");
      return jsonResult;
    }
    if (alreadyExist.getLockStatus() == 1) {
        jsonResult.setCode("1");
        jsonResult.setErrorDescription("该账号已经被锁定");
        return jsonResult;
      }
    
    UserDto userDto = new UserDto();
    
    if(alreadyExist.getLastTime()==null){
    	userDto.setIfFirstTime(0);
    }else{
    	userDto.setIfFirstTime(1);
    }
    userDto.setUserId((long)alreadyExist.getUser_id());
    userDto.setPhoneNumber(alreadyExist.getPhoneNumber());
    userDto.setAvatar(alreadyExist.getAvator());
    //更新用户信息
    User user = appUserMapper.byPhoneNumber(phoneNumber);
    if(user!=null){
    	if(user.getUserId()==null){
    		user.setUserId((long)alreadyExist.getUser_id());
    		appUserMapper.update(user);
    	}
    }else{
    	user=new User();
    	user.setAccountNumber("0");
    	user.setPhoneNumber(alreadyExist.getPhoneNumber());
    	user.setUserId((long)(alreadyExist.getUser_id()));
    	user.setQrCode("");
    	appUserMapper.insert(user);
    }
    
    if(appUserMapper.byPhoneNumber(phoneNumber).getBackAvatar()!=null){
    	 userDto.setBackAvatar(appUserMapper.byPhoneNumber(phoneNumber).getBackAvatar());
    }
    BigDecimal money = alreadyExist.getBalance();
    userDto.setBalance(money);
    if(appUserMapper.byPhoneNumber(phoneNumber).getDistrictId()!=null){
    	userDto.setDistrictId(appUserMapper.byPhoneNumber(phoneNumber).getDistrictId());
    }
    if(appUserMapper.byPhoneNumber(phoneNumber).getSex()!=null){
    	userDto.setSex(appUserMapper.byPhoneNumber(phoneNumber).getSex());
    }
    if(appUserMapper.byPhoneNumber(phoneNumber).getThermalSignatrue()!=null){
    	userDto.setThermalSignatrue(appUserMapper.byPhoneNumber(phoneNumber).getThermalSignatrue());
    }
    if(alreadyExist.getEmail()!=null){
    	userDto.setUserEmail(alreadyExist.getEmail());
    }
    userDto.setUsername(alreadyExist.getUsername());
    System.out.print("用戶密碼"+Md5Utils.encrypt(password));
    if (!alreadyExist.getPassword().equals(password)) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("用户密码不正确!");
      return jsonResult;
    }
    String usertoId;
    //更新token和设备信息
    User user3 = appUserMapper.byPhoneNumber(phoneNumber);
    usertoId=user3.getUserId().toString();
    String token=Md5Utils.encrypt(phoneNumber+password+new Date().getTime());
    user3.setToken(token);
    if(user3.getSex()==null){
    	user3.setSex(1);
    }
    alreadyExist.setDeviceToken(deviceToken);
    alreadyExist.setEquipmentOS(equipmentOS);
    appUserMapper.update(user3);
    alreadyExist.setLastTime(new Date());
    appUserOneMapper.update(alreadyExist);
    
    //判断是否完善信息
    if(user3.getAge()==null||user3.getDistrictId()==null){
    	userDto.setInfoStatus(0);
    }else{
    	userDto.setInfoStatus(1);
    }
    
    try {
//		新消息提醒
    	NewStatus newStatus =newStatusService.get(user3.getUserId());
    	if(newStatus==null){
    		newStatus =new NewStatus();
    		newStatus.setUserId(Integer.parseInt(usertoId));
    		newStatus.setAdvertStatus(0);
    		newStatus.setInviteStatus(0);
    		newStatus.setFirendAppyStatus(0);
    		newStatus.setNearStatus(0);
    		newStatusService.insert(newStatus);
    	}
	} catch (Exception e) {
	}
    userDto.setToken(token);
    jsonResult.setDataObject(userDto);
    jsonResult.setErrorDescription("登陆成功!");
    return jsonResult;
  }

  public List<UserOne> byUserIdAndTerms(Map map){
    return this.appUserOneMapper.byUserIdAndTerms(map);
  }


@Override
public List<UserOne> byInvite6(Integer userId) {
	return appUserOneMapper.byInvite6(userId);
}

@Override
public List<UserOne> selectCustomerService() {
	// TODO Auto-generated method stub
	Map map = new HashMap();
	map.put("customerServiceStatus",1);
	List<UserOne> list=appUserOneMapper.selectParam(map);
	return list;
}




@Override
public int deleteCustomerService(List<Long> idList) {
	return appUserOneMapper.deleteCustomerService(idList);
}
@Override
public Integer findmySpreadNumOne(int parseInt) {
	return appUserOneMapper.findmySpreadNumOne(parseInt);
}
@Override
public Integer findmySpreadNumTwo(int parseInt) {
	return appUserOneMapper.findmySpreadNumTwo(parseInt);
}
@Override
public Integer findmySpreadNumThree(int parseInt) {
	return appUserOneMapper.findmySpreadNumThree(parseInt);
}


@Override
public Integer dayCount(Map map) {
	return appUserOneMapper.dayCount(map);
}


@Override
public Integer monthCount(Map map) {
	return appUserOneMapper.monthCount(map);
}


@Override
public Integer allCount(Map map) {
	return appUserOneMapper.allCount(map);
}


@Override
public  List<UserOneCountDto> dayCashCount(Map map) {
	return appUserOneMapper.dayCashCount(map);
}


@Override
public String allPay() {
	return appUserOneMapper.allPay();
}


@Override
public Integer allCountBySex(Map map) {
	// TODO Auto-generated method stub
	return appUserOneMapper.allCountBySex(map);
}


@Override
public List<Map<String, Object>> countByMonth(Map map) {
	return appUserOneMapper.countByMonth(map);
}


@Override
public String allDayPay() {
	return appUserOneMapper.allDayUserPay();
}


@Override
public String allMonthPay() {
	return appUserOneMapper.allMonthUserPay();
}


@Override
public PagingResult selectCustomerServiceList(Map map) {
	// TODO Auto-generated method stub
	return null;
}

}