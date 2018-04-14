package com.sellerNet.backManagement.controller.imApp;

import java.io.File;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dao.ImageMapper;
import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.entity.AddCertificationParam;
import com.sellerNet.backManagement.entity.Certification;
import com.sellerNet.backManagement.entity.Image;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.LableForUser;
import com.sellerNet.backManagement.entity.NewStatus;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.UserOutDto;
import com.sellerNet.backManagement.entity.VersionSys;
import com.sellerNet.backManagement.entity.im.ImFriend;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.CertificationService;
import com.sellerNet.backManagement.service.CodeService;
import com.sellerNet.backManagement.service.LableForUserService;
import com.sellerNet.backManagement.service.LableService;
import com.sellerNet.backManagement.service.MobileUserService;
import com.sellerNet.backManagement.service.NewStatusService;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.service.VersionService;
import com.sellerNet.backManagement.service.im.ImFriendService;
import com.sellerNet.backManagement.service.im.ImGroupService;
import com.sellerNet.backManagement.service.im.ImRequestService;
import com.sellerNet.backManagement.utils.BarcodeFactory;
import com.sellerNet.backManagement.utils.Constant;
import com.sellerNet.backManagement.utils.JsonUtils;
import com.sellerNet.backManagement.utils.Md5Utils;
/**
 * 登陆管理和用户管理
 * 1、账号注册
 * 2、账号登陆
 * 3、用户登陆
 * 4、忘记密码
 * 5、发送短信验证码
 * 6、修改个人信息
 * 7、根据手机号获取用户信息
 * 8、设置支付密码
 * 9、验证支付密码
 * 10、根据用户id和好友id获取用户信息
 * 11.上传实名认证信息
 * 
 */
@RestController
@RequestMapping({"api/users"})
public class UserManagerController extends BaseController{
	
  private static final Logger LOGGER = LoggerFactory.getLogger(UserManagerController.class);
  private File uploadPath;
  @Resource
  private AppUserService appUserService;
  
  @Resource
  private CertificationService certificationService;
  
  @Resource
  private AppUserOneService appUserOneService;

  @Resource
  private CodeService codeService;

  @Resource
  private ImFriendService imFriendService;
  
  @Resource
  private MobileUserService mobileUserService;
  
	@Resource
	private VersionService versionService;
	
  @Resource
  private ImageMapper imageService;
  
  @Resource
  private LableService lableService;
  
  @Resource
  private ImGroupService imGroupService;
  
  @Resource
  private RechargeRecordService rechargeRecordService;
  
  @Resource
  private ImRequestService imRequestService;
  
	  @Resource
	  private NewStatusService newStatusService;
	  
		@Resource 
		private LableForUserService lableForUserService;

		/**
		 * 清除deviceToken
		 */
		@ResponseBody
		@RequestMapping(value="cleanDeviceToken.do", method={RequestMethod.GET,RequestMethod.POST})
		public JsonResult cleanDeviceToken(@RequestParam(value="userId", required=true) String userId, 
				HttpServletRequest request) { 
			JsonResult jsonResult = new JsonResult();
			
			UserOne userOne = appUserOneService.get(Integer.valueOf(userId));
			if(userOne==null){
				jsonResult.setCode(Constant.RESUT_FAIL);
				jsonResult.setErrorDescription("该用户不存在");
				return jsonResult;
			}
			userOne.setDeviceToken(null);
			userOne.setEquipmentOS(null);
			appUserOneService.update(userOne);
			jsonResult.setCode(Constant.RESUT_SUCCESS);
			jsonResult.setErrorDescription("清除设备信息成功");
			return  jsonResult;
			
			//<editor-fold >
		}
  /**
   * 账号注册
   */
  @ResponseBody
  @RequestMapping(value="signUp.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult signUp(@RequestParam(value="phoneNumber", required=false) String phoneNumber, 
		  				   @RequestParam(value="code", required=false) String code, 
		  				   @RequestParam(value="password", required=false) String password,
		  				   HttpServletRequest request) { 
	  JsonResult jsonResult = new JsonResult();
	  //<editor-fold desc="step1 : 校验入参>
	  if (phoneNumber == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("手机号不能为空");
		  return jsonResult;
	  }
	  if (code == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("验证码不能为空");
		  return jsonResult;
	  }
	  if (password == null) {
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("密码不能为空");
		  return jsonResult;
	  }
	  //<editor-fold >
	  
	  //<editor-fold desc="step2 : 校验手机验证码>
	  JsonResult codemessage = this.codeService.checkCode(phoneNumber, code);
	  if (codemessage.getCode().equals(Constant.RESUT_FAIL)) {
		  return codemessage;
	  }
	  //<editor-fold >
	  //检查注册
	  checkUser(phoneNumber, jsonResult);
	
	  
	  //<editor-fold desc="step3 : 创建用户对象>
	  UserOne user = new UserOne();
	  user.setUsername("未填写");
	  user.setPassword(password);
	  user.setPhoneNumber(phoneNumber);
	  user.setBalance(new BigDecimal(0));
	  user.setLockStatus(0);
	  user.setMoneylock(0);
	  user.preCreate();
	  //<editor-fold >
	
	  //<editor-fold desc="step4 : 注册用户并返回注册信息>
	  return  appUserOneService.signUp(user,request);
	 
	  //<editor-fold >
  }

public JsonResult checkUser(String phoneNumber, JsonResult jsonResult) {
	try {
		  UserOne alreadyExist = this.appUserOneService.byPhoneNumber(phoneNumber);
		  User user2 =appUserService.byPhoneNumber(phoneNumber);
		  if(alreadyExist==null){
			  if(user2!=null){
				  appUserService.delete(user2.getId());
			  }
		  }else{
			  if(user2==null){
				  appUserOneService.delete(alreadyExist.getUser_id());
			  }else{
				  jsonResult.setCode(Constant.RESUT_FAIL);
				  jsonResult.setErrorDescription("用户已存在！");
				  return jsonResult;
			  }
		  }
		} catch (Exception e) {
			
		}
	return jsonResult;
}

  /**
   * 用户登陆
   */
  @ResponseBody
  @RequestMapping(value="signIn.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult<UserDto> signIn(@RequestParam(value="phoneNumber",required=false) String phoneNumber, 
		   						    @RequestParam(value="password",required=false) String password,
		   						    @RequestParam(value="deviceToken",required=true) String deviceToken,
		   						    @RequestParam(value="equipmentOS",required=true) String equipmentOS,
		   						    HttpServletRequest request){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (phoneNumber == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("手机号不能为空");
      return jsonResult;
    }
    if (password == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("密码不能为空");
      return jsonResult;
    }
    //<editor-fold >
    //<editor-fold desc="step3 : 用户登陆并返回登陆信息>
    return appUserOneService.signIn(phoneNumber, password,request,deviceToken,equipmentOS);
    //<editor-fold >
  }

  /**
   * 忘记密码
   */
  @ResponseBody
  @RequestMapping(value="forgetPassword.do", method={org.springframework.web.bind.annotation.RequestMethod.GET, org.springframework.web.bind.annotation.RequestMethod.POST})
  public JsonResult<UserDto> forgetPassword(@RequestParam(value="phoneNumber", required=false) String phoneNumber, 
		                                    @RequestParam(value="password", required=false) String password, 
		                                    @RequestParam(value="code", required=false) String code){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (phoneNumber == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("手机号不能为空");
      return jsonResult;
    }
    if (code == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("验证码不能为空");
      return jsonResult;
    }
    if (password == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("密码不能为空");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step2 : 校验验证码>
    JsonResult codemessage = this.codeService.checkCode(phoneNumber, code);
    if (codemessage.getCode().equals(Constant.RESUT_FAIL)) {
      return codemessage;
    }
    //<editor-fold >
    
    //<editor-fold desc="step3 : 手机号获取用户信息>
    UserOne alreadyExist = this.appUserOneService.byPhoneNumber(phoneNumber);
    if (alreadyExist == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户不存在");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step4 : 修改用户密码>
    alreadyExist.setPassword(password);
    alreadyExist.preModified();
    int count = this.appUserOneService.update(alreadyExist);
    if (count == 0) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户修改密码异常");
      return jsonResult;
    }
    String token=Md5Utils.encrypt(phoneNumber+alreadyExist.getPassword()+new Date().getTime());
    User user = appUserService.byUserId((long)alreadyExist.getUser_id());
    user.setToken(token);
    appUserService.update(user);
    jsonResult.setErrorDescription("修改密码成功!");
    Map tokenMap = new HashMap<>();
    tokenMap.put("token", token);
    jsonResult.setDataObject(tokenMap);
   //<editor-fold >
    return jsonResult;
  }
  
  /**
   * 忘记支付密码
   */
  @ResponseBody
  @RequestMapping(value="forgetPayPassword.do", method={org.springframework.web.bind.annotation.RequestMethod.GET, org.springframework.web.bind.annotation.RequestMethod.POST})
  public JsonResult<UserDto> forgetPayPassword(@RequestParam(value="phoneNumber", required=false) String phoneNumber, 
		                                    @RequestParam(value="password", required=false) String password, 
		                                    @RequestParam(value="code", required=false) String code){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (phoneNumber == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("手机号不能为空");
      return jsonResult;
    }
    if (code == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("验证码不能为空");
      return jsonResult;
    }
    if (password == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("密码不能为空");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step2 : 校验验证码>
    JsonResult codemessage = this.codeService.checkCode(phoneNumber, code);
    if (codemessage.getCode().equals(Constant.RESUT_FAIL)) {
      return codemessage;
    }
    //<editor-fold >
    
    //<editor-fold desc="step3 : 手机号获取用户信息>
    UserOne alreadyExist = this.appUserOneService.byPhoneNumber(phoneNumber);
    if (alreadyExist == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户不存在");
      return jsonResult;
    }
    //<editor-fold >
    User user = (User)this.appUserService.byPhoneNumber(alreadyExist.getPhoneNumber());
    //<editor-fold desc="step4 : 修改用户密码>
    user.setPaypassword(password);
    alreadyExist.preModified();
    int count = this.appUserService.update(user);
    if (count == 0) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户支付密码异常");
      return jsonResult;
    }
    jsonResult.setErrorDescription("修改支付密码成功!");
   //<editor-fold >
    return jsonResult;
  }
  
  /**
   * 修改支付密码
   */
  @ResponseBody
  @RequestMapping(value="editPayPassword.do", method={org.springframework.web.bind.annotation.RequestMethod.GET, org.springframework.web.bind.annotation.RequestMethod.POST})
  public JsonResult<UserDto> editPayPassword(@RequestParam(value="phoneNumber", required=false) String phoneNumber, 
		  									@RequestParam(value="code", required=false) String code, 
		                                    @RequestParam(value="newPassword", required=false) String newPassword, 
		                                    @RequestParam(value="reNewPassword", required=false) String reNewPassword){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (phoneNumber == null) {
    	jsonResult.setCode(Constant.RESUT_FAIL);
    	jsonResult.setErrorDescription("手机号不能为空");
    	return jsonResult;
    }
    if (code == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("验证码不能为空");
      return jsonResult;
    }
    if (newPassword == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("新支付密码不能为空");
      return jsonResult;
    }
    if (reNewPassword == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("新支付不能为空");
      return jsonResult;
    }
    if(!newPassword.equals(reNewPassword)){
    	   jsonResult.setCode(Constant.RESUT_FAIL);
    	   jsonResult.setErrorDescription("两次新密码不相同");
    	  return jsonResult;
    }
    //校验验证码
    JsonResult codemessage = this.codeService.checkCode(phoneNumber, code);
    if (codemessage.getCode().equals(Constant.RESUT_FAIL)) {
    	return codemessage;
    }
    //用户是否存在
    UserOne alreadyExist = this.appUserOneService.byPhoneNumber(phoneNumber);
    if (alreadyExist == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户不存在");
      return jsonResult;
    }
    User user = (User)this.appUserService.byPhoneNumber(alreadyExist.getPhoneNumber());
    
    //<editor-fold desc="step4 : 修改用户密码>
    user.setPaypassword(newPassword);
    
    int count = this.appUserService.update(user);
    if (count == 0) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户支付修改密码异常");
      return jsonResult;
    }
    jsonResult.setErrorDescription("修改支付密码成功!");
   //<editor-fold >
    return jsonResult;
  }
  
  /**
   * 修改密码
   */
  @ResponseBody
  @RequestMapping(value="editPassword.do", method={org.springframework.web.bind.annotation.RequestMethod.GET, org.springframework.web.bind.annotation.RequestMethod.POST})
  public JsonResult<UserDto> editPassword(@RequestParam(value="phoneNumber", required=false) String phoneNumber, 
		  									@RequestParam(value="oldPassword", required=false) String oldPassword, 
		                                    @RequestParam(value="newPassword", required=false) String newPassword, 
		                                    @RequestParam(value="reNewPassword", required=false) String reNewPassword){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (oldPassword == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("旧密码不能为空");
      return jsonResult;
    }
    if (newPassword == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("新密码不能为空");
      return jsonResult;
    }
    if (reNewPassword == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("重复新密码不能为空");
      return jsonResult;
    }
    if(!newPassword.equals(reNewPassword)){
    	   jsonResult.setCode(Constant.RESUT_FAIL);
    	   jsonResult.setErrorDescription("两次新密码不相同");
    	  return jsonResult;
    }
    
    UserOne alreadyExist = this.appUserOneService.byPhoneNumber(phoneNumber);
    if (alreadyExist == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户不存在");
      return jsonResult;
    }
    if(!oldPassword.equals(alreadyExist.getPassword())){
    	  jsonResult.setCode(Constant.RESUT_FAIL);
    	  jsonResult.setErrorDescription("旧密码输入不正确");
   	   	return jsonResult;
    }
    
    //<editor-fold desc="step4 : 修改用户密码>
    alreadyExist.setPassword(newPassword);
    alreadyExist.preModified();
    int count = this.appUserOneService.update(alreadyExist);
    if (count == 0) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户修改密码异常");
      return jsonResult;
    }
    jsonResult.setErrorDescription("修改密码成功!");
   //<editor-fold >
    return jsonResult;
  }


  /**
   * 发送短信验证码
   */
  @ResponseBody
  @RequestMapping(value={"sendMessage.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult sendMessage(@RequestParam("phoneNumber") String phoneNumber,
		  @RequestParam("mbId") String mbId
		  ){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (phoneNumber == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("手机号不能为空");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step1 : 发送短信验证码>
    try
    {
      this.codeService.sendOne(phoneNumber,mbId);
    }catch (Exception e) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("发送短信验证码异常");
      return jsonResult;
    }
    
    jsonResult.setErrorDescription("验证码已发送!请注意查收!");
    //<editor-fold >
    return jsonResult;
  }
  

  /**
   * 修改个人信息
  */
  @ResponseBody
  @RequestMapping(value="updateUser.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult updateUser(@RequestParam(value="avatar", required=false) String avatar, 
		  					   @RequestParam(value="username", required=false) String username, 
		  					   @RequestParam(value="districtName", required=false) String districtName, 
		  					   @RequestParam(value="sex", required=false) String sex, 
		  					   @RequestParam(value="thermalSignatrue", required=false) String thermalSignatrue, 
		  					   @RequestParam(value="id", required=false) Integer id,
		  					   @RequestParam(value="age", required=false) Integer age, 
		  					   @RequestParam(value="job", required=false) String job, 
		  					   @RequestParam(value="hobby", required=false) String hobby, 
		  					   @RequestParam(value="sign", required=false) String sign,
		  					   HttpServletRequest request){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户ID不能为空");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step2 : 修改用户信息>
    try {
    	UserOne userone = this.appUserOneService.get(id);
        User user = this.appUserService.byPhoneNumber(userone.getPhoneNumber());
        if (avatar != null) {
        	userone.setAvator(avatar);
        	jsonResult.setErrorDescription("修改头像地址成功");
        	//生成个人二维码开始
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
            
            String codeIconPath = avatar;
            String codePath = uploadPath.toString()+new Date().getTime()+".png";
            BarcodeFactory.encode(jsonString, 300, 300, codeIconPath, codeIconPath, false);
            user.setQrCode("images"+new Date().getTime()+".png");
            //生成个人二维码结束
        }

        if (username != null) {
        	userone.setUsername(username);
        	 Map map1 = new HashMap();
        	 map1.put("userIdF", userone.getUser_id());
             map1.put("username",userone.getUsername());
        	List<UserOne> userList =appUserOneService.selectParam(map1);
        	if(userList.size()>0){
        		jsonResult.setCode(Constant.RESUT_FAIL);
            	jsonResult.setErrorDescription("用户名不能重复!");
            	return jsonResult;
        	}
        	jsonResult.setErrorDescription("修改用户名成功");
        }

        if (sign != null) {
        	userone.setSign(sign);
        	jsonResult.setErrorDescription("修改个性签名成功");
        }
        if (sex != null) {
        	user.setSex(Integer.valueOf(Integer.parseInt(sex)));
        	jsonResult.setErrorDescription("修改性别成功");
        }

        if (thermalSignatrue != null) {
        	user.setThermalSignatrue(thermalSignatrue);
        	jsonResult.setErrorDescription("修改个人签名成功");
        }
        if (districtName != null) {
        	user.setDistrictId(districtName);
        	jsonResult.setErrorDescription("修改地区名称成功");
        }
        if (age != null) {
        	user.setAge(age);
        	jsonResult.setErrorDescription("修改年龄成功");
        }
        
        if (job != null) {
        	user.setJob(job);
        	jsonResult.setErrorDescription("修改职业成功");
        }
        if (hobby != null) {
        	user.setHobby(hobby);
        	jsonResult.setErrorDescription("修改爱好成功");
        }
        
        Long useridLong  = (long)userone.getUser_id();
        user.preModified(useridLong);
        appUserOneService.update(userone);
        appUserService.update(user);
    }catch (Exception e) {
    	jsonResult.setCode(Constant.RESUT_FAIL);
    	jsonResult.setErrorDescription("修改接口异常!");
    }
   //<editor-fold >
    return jsonResult;
  }

  /**
   * 根据用户id获取用户信息
  */
  @ResponseBody
  @RequestMapping(value={"byUserId.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult byUserId(@RequestParam(value="userId", required=false) String userId){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (userId == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户ID不能为空!");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step2 : 根据手机号获取用户信息>
    try {
    	UserOne userOne = this.appUserOneService.get(Integer.parseInt(userId));
        User user = this.appUserService.byPhoneNumber(userOne.getPhoneNumber());
        UserOutDto userOutDto = new UserOutDto();
        userOutDto.setId((long)userOne.getUser_id());
        userOutDto.setUsername(userOne.getUsername());
        
        if(user.getAccountNumber()!=null){
        	userOutDto.setAccountNumber(user.getAccountNumber());
    }
        if(user.getAge()!=null){
        	   userOutDto.setAge(user.getAge());
       }
        if(user.getHobby()!=null){
        	   userOutDto.setHobby(user.getHobby());
       }
        if(user.getJob()!=null){
        	 userOutDto.setJob(user.getJob());
       }
        if(user.getSpreadQrCode()!=null){
        	 userOutDto.setSpreadQrCOde(user.getSpreadQrCode());
       }
       
        if(userOne.getAddPay()!=null){
        	 userOutDto.setAddPay(userOne.getAddPay());
        }
        
        //获取标签
        try {
        	Map lableMap =new HashMap();
        	lableMap.put("userId", userOne.getUser_id());
        	List<LableForUser> lableForUserList = lableForUserService.selectParam(lableMap);
        	String lableStr="";
        	int aa=0;
        	for (LableForUser lableForUser : lableForUserList) {
        		if(aa>=3){
        			continue;
        		}
        		lableStr=lableStr+lableForUser.getLabelName()+" ";
        		aa++;
			}
         	   userOutDto.setLabel(lableStr);
		} catch (Exception e) {
			// TODO: handle exception
		}
    
        if(user.getToken()!=null){
        	 userOutDto.setToken(user.getToken());
        }
        if(userOne.getPassword()!=null){
        	userOutDto.setPassword(userOne.getPassword());
        }
        if(user.getQrCode()!=null){
        	userOutDto.setQrCode(user.getQrCode());
        }
        if(user.getDistrictId()!=null){
        	userOutDto.setDistrictId(user.getDistrictId());
        }
        if(user.getSex()!=null){
        	userOutDto.setSex(user.getSex());
        }
        if(user.getThermalSignatrue()!=null){
        	userOutDto.setThermalSignatrue(user.getThermalSignatrue());
        }
        if(user.getPhoneNumber()!=null){
        	userOutDto.setPhoneNumber(user.getPhoneNumber());
        }
        if(user.getUserEmail()!=null){
        	userOutDto.setUserEmail(user.getUserEmail());
        }
        if(userOne.getBalance()!=null){
        	BigDecimal money = userOne.getBalance();
        	userOutDto.setBalance(money);
        }
        if(userOne.getAvator()!=null){
        	userOutDto.setAvatar(userOne.getAvator());
        }
        if(user.getBackAvatar()!=null){
        	userOutDto.setBackAvatar(user.getBackAvatar());
        }
        if(user.getPaypassword()!=null){
        	userOutDto.setPaypassword(user.getPaypassword());
        }
        if(user.getIsvip()!=null){
        	userOutDto.setVip(user.getIsvip());
        }
        if(user.getIsbang()!=null){
        	userOutDto.setIsbang(user.getIsbang());
        	//设置群组id
        	Map map = new HashMap<>();
        	map.put("userId", userOne.getUser_id());
        	map.put("isbang", user.getIsbang());
        	//ImGroup imGroup = imGroupService.selectParam(map).get(0);
        	//userOutDto.setGroupId(imGroup.getId());
        }
        Map map = new HashMap<>();
        map.put("userId", userOne.getUser_id());
        map.put("category", ImageCategory.EXPERIENCE.name());
        //TODO 不确定返回什么类型的图片
        List<Image> images = imageService.getByUserIdAndCategory(map);
        List<String> urls = new ArrayList<>();
        if(images!=null){
        	for(int i=0;i<images.size();i++){
        		String str = images.get(i).getUrl();
        		if(str!=null && !str.equals("")){
    				String[] str1=str.split(",");
    				for (int j = 0; j < str1.length; j++) {
    					urls.add(str1[j]);
    					if(urls.size()>6){
    						break;
    					}
    				}
        		}
            }
        }
        
        userOutDto.setImages(urls);
        jsonResult.setDataObject(userOutDto);
        jsonResult.setErrorDescription("获取用户信息成功");
	} catch (Exception e) {
		  jsonResult.setErrorDescription("获取用户失败");
	}
    
    //<editor-fold >
    return jsonResult;
  }
  
  /**
   * 根据手机号获取用户信息
  */
  @ResponseBody
  @RequestMapping(value={"byPhoneNumber.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult byPhoneNumber(@RequestParam(value="phoneNumber", required=false) String phoneNumber){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (phoneNumber == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("手机号不能为空!");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step2 : 根据手机号获取用户信息>
    try {
    	UserOne userOne = this.appUserOneService.byPhoneNumber(phoneNumber);
        User user = this.appUserService.byPhoneNumber(phoneNumber);
        UserOutDto userOutDto = new UserOutDto();
        userOutDto.setId((long)userOne.getUser_id());
        userOutDto.setUsername(userOne.getUsername());
        userOutDto.setAccountNumber(user.getAccountNumber());
        userOutDto.setAge(user.getAge());
        userOutDto.setHobby(user.getHobby());
        userOutDto.setJob(user.getJob());
        userOutDto.setSpreadQrCOde(user.getSpreadQrCode());
        userOutDto.setAddPay(userOne.getAddPay());
        userOutDto.setSign(userOne.getSign());
        if(user.getToken()!=null){
        	 userOutDto.setToken(user.getToken());
        }
        if(userOne.getPassword()!=null){
        	userOutDto.setPassword(userOne.getPassword());
        }
        if(user.getQrCode()!=null){
        	userOutDto.setQrCode(user.getQrCode());
        }
        if(user.getDistrictId()!=null){
        	userOutDto.setDistrictId(user.getDistrictId());
        }
        if(user.getSex()!=null){
        	userOutDto.setSex(user.getSex());
        }
        if(user.getThermalSignatrue()!=null){
        	userOutDto.setThermalSignatrue(user.getThermalSignatrue());
        }
        if(user.getPhoneNumber()!=null){
        	userOutDto.setPhoneNumber(user.getPhoneNumber());
        }
        if(user.getUserEmail()!=null){
        	userOutDto.setUserEmail(user.getUserEmail());
        }
        if(userOne.getBalance()!=null){
        	BigDecimal money = userOne.getBalance();
        	userOutDto.setBalance(money);
        }
        if(userOne.getAvator()!=null){
        	userOutDto.setAvatar(userOne.getAvator());
        }
        if(user.getBackAvatar()!=null){
        	userOutDto.setBackAvatar(user.getBackAvatar());
        }
        if(user.getPaypassword()!=null){
        	userOutDto.setPaypassword(user.getPaypassword());
        }
        if(user.getIsvip()!=null){
        	userOutDto.setVip(user.getIsvip());
        }
        if(user.getIsbang()!=null){
        	userOutDto.setIsbang(user.getIsbang());
        	//设置群组id
        	Map map = new HashMap<>();
        	map.put("userId", userOne.getUser_id());
        	map.put("isbang", user.getIsbang());
        	//ImGroup imGroup = imGroupService.selectParam(map).get(0);
        	//userOutDto.setGroupId(imGroup.getId());
        }
        Map map = new HashMap<>();
        map.put("userId", userOne.getUser_id());
        map.put("category", ImageCategory.EXPERIENCE.name());
        //TODO 不确定返回什么类型的图片
        List<Image> images = imageService.getByUserIdAndCategory(map);
        List<String> urls = new ArrayList<>();
        if(images!=null){
        	for(int i=0;i<images.size();i++){
        		String str = images.get(i).getUrl();
        		if(str!=null && !str.equals("")){
    				String[] str1=str.split(",");
    				for (int j = 0; j < str1.length; j++) {
    					urls.add(str1[j]);
    					if(urls.size()>6){
    						break;
    					}
    				}
        		}
            }
        }
        //查询实名认证状态
        Certification certification = certificationService.selectByUserId(Integer.toString(userOne.getUser_id()));
        int isCertification = 0;
        if(certification==null){
        	isCertification = 1;
        }else if(certification.getPass().equals("0")){
        	isCertification = 2;
        	userOutDto.setUserCode(certification.getUser_code());
        }else if(certification.getPass().equals("1")){
        	isCertification = 3;
        	userOutDto.setUserRealName(certification.getUser_realname());
        	userOutDto.setUserCode(certification.getUser_code());
        }else{
        	isCertification = 4;
        }
        userOutDto.setIsCertification(isCertification);
        userOutDto.setImages(urls);
        jsonResult.setDataObject(userOutDto);
        jsonResult.setErrorDescription("获取用户信息成功");
	} catch (Exception e) {
		LOGGER.error("error", e);
		  jsonResult.setErrorDescription("获取用户失败");
	}
    
    //<editor-fold >
    return jsonResult;
  }

  /**
   * 设置支付密码
  */
  @ResponseBody
  @RequestMapping(value="paypassword.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult updatePassword(@RequestParam(value="id", required=false) Long id, 
		  						   @RequestParam(value="password", required=false) String password){
    JsonResult jsonResult = new JsonResult();
    
    //<editor-fold desc="step1 : 校验入参>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户id不能为空!");
      return jsonResult;
    }

    if (password == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("支付密码不能为空!");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step2 : 设置支付密码>
    UserOne userOne = appUserOneService.get(Integer.valueOf(id.toString()));
    User user = (User)this.appUserService.byPhoneNumber(userOne.getPhoneNumber());

    user.setPaypassword(password);
    user.preModified(id);
    int count = this.appUserService.update(user);
    if (count == 0) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("设置支付密码失败!");
      return jsonResult;
    }
    jsonResult.setErrorDescription("设置支付密码成功!");
    //<editor-fold >
    return jsonResult;
  }

   /**
    * 验证支付密码
  */
  @ResponseBody
  @RequestMapping(value="verificationpassword.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult verificationpassword(@RequestParam(value="id", required=false) Long id, 
		  								 @RequestParam(value="password", required=false) String password){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户id不能为空!");
      return jsonResult;
    }

    if (password == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("支付密码不能为空!");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step1 : 验证支付密码>
    UserOne userOne = appUserOneService.get(Integer.valueOf(id.toString()));
    User user = (User)this.appUserService.byPhoneNumber(userOne.getPhoneNumber());
    if (!password.equals(user.getPaypassword())) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("支付密码不正确!请重新输入!");
      return jsonResult;
    }

    jsonResult.setCode(Constant.RESUT_SUCCESS);
    jsonResult.setErrorDescription("支付密码验证成功!");
    //<editor-fold >
    return jsonResult;
  }
  
  /**
   * 根据用户id和好友手机号码获取信息
  */
  @ResponseBody
  @RequestMapping(value="getByIdAndPhone.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult getByIdAndPhone(@RequestParam(value="id", required=false) Long id, 
		                           @RequestParam(value="phoneNumber", required=false) String phoneNumber){
    JsonResult jsonResult = new JsonResult();
    
    //<editor-fold desc="step1 : 校验入参>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户id不能为空!");
      return jsonResult;
    }
    if (phoneNumber == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("对方手机号码不能为空!");
      return jsonResult;
    }
    UserOutDto userDto = new UserOutDto();
    UserOne userOne = appUserOneService.byPhoneNumber(phoneNumber);
    if (userOne == null) {
        jsonResult.setCode(Constant.RESUT_FAIL);
        jsonResult.setErrorDescription("好友不存在!");
        return jsonResult;
      }
    //<editor-fold 
    ImFriend exist = this.imFriendService.findByUserIdAndFriendId(id, (long)userOne.getUser_id());
    if(exist==null){
    	  jsonResult.setCode(Constant.RESUT_FAIL);
          jsonResult.setErrorDescription("对方不是您好友!");
         // return jsonResult;
    }else{
    	 userDto.setIsfriend(1);
    	 //好友备注
      	 userDto.setRemark(exist.getRemark());
      	 //好友标签
      	 userDto.setLabelName(exist.getDescribe());
    }
    
    //<editor-fold desc="step1 : 获取用户信息>
    User user = (User)this.appUserService.byPhoneNumber(userOne.getPhoneNumber());
    
    Map map = new HashMap<>();
    map.put("userId", userOne.getUser_id());
    map.put("category", ImageCategory.EXPERIENCE.name());
    //TODO 不确定返回什么类型的图片
    List<Image> images = imageService.getByUserIdAndCategory(map);
    List<String> urls = new ArrayList<>();
    if(images!=null){
    	for(int i=0;i<images.size();i++){
    		String str = images.get(i).getUrl();
    		if(str!=null && !str.equals("")){
				String[] str1=str.split(",");
				for (int j = 0; j < str1.length; j++) {
					urls.add(str1[j]);
					if(urls.size()>6){
						break;
					}
				}
    		}
        }
    }
    
    userDto.setImages(urls);
    userDto.setId((long)userOne.getUser_id());
    userDto.setUsername(userOne.getUsername());
    userDto.setPassword(userOne.getPassword());
    userDto.setPhoneNumber(userOne.getPhoneNumber());
    userDto.setAccountNumber(user.getAccountNumber());
    userDto.setAvatar(userOne.getAvator());
    userDto.setAddPay(userOne.getAddPay());
    userDto.setQrCode(user.getQrCode());
    userDto.setJob(user.getJob());
    userDto.setHobby(user.getHobby());
    userDto.setAge(user.getAge());
    //个性签名
    userDto.setSign(userOne.getSign());
    if(user.getBackAvatar()!=null){
    	 userDto.setBackAvatar(user.getBackAvatar());
    }
    //BigDecimal money =userOne.getBalance();
   // userDto.setBalance(money);
    if(user.getDistrictId()!=null){
    	userDto.setDistrictId(user.getDistrictId());
    }
    if(user.getSex()!=null){
    	userDto.setSex(user.getSex());
    }
    if(user.getThermalSignatrue()!=null){
    	userDto.setThermalSignatrue(user.getThermalSignatrue());
    }
    if(userOne.getEmail()!=null){
    	userDto.setUserEmail(userOne.getEmail());
    }
    if(user.getPaypassword()!=null){
    	//userDto.setPaypassword(user.getPaypassword());
    }
	 jsonResult.setCode(Constant.RESUT_SUCCESS);
    jsonResult.setDataObject(userDto);
    jsonResult.setErrorDescription("获取好友信息成功!");
   //<editor-fold >
    return jsonResult;
  }
  
  /*
   * 修改好友备注
   */
  @ResponseBody
  @RequestMapping(value="updateRemark.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult updateRemark(@RequestParam(value="id", required=false) Long id, 
		                           @RequestParam(value="friendId", required=false) Long friendId,
		                           @RequestParam(value="remark", required=false) String remark
		                           ){
    JsonResult jsonResult = new JsonResult();
    
    //<editor-fold desc="step1 : 校验入参>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户id不能为空!");
      return jsonResult;
    }
    if (friendId == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("好友Id不能为空!");
      return jsonResult;
    }
    if(StringUtils.isBlank(remark)){
    	remark="";
    }
    //<editor-fold 
    ImFriend exist = this.imFriendService.findByUserIdAndFriendId(id, friendId);
    if(exist==null){
  	    jsonResult.setCode(Constant.RESUT_FAIL);
        jsonResult.setErrorDescription("对方不是您好友!");
       return jsonResult;
  }else{
  	 //好友备注
	  exist.setRemark(exist.getRemark());
	  imFriendService.update(exist);
	  jsonResult.setCode(Constant.RESUT_SUCCESS);
      jsonResult.setErrorDescription("修改备注成功!");
     return jsonResult;
  }
  }
  
  /**
   * 根据用户id和好友id获取用户信息
  */
  @ResponseBody
  @RequestMapping(value="getUserInfo.do",  method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult updatePassword(@RequestParam(value="id", required=false) Long id, 
		                           @RequestParam(value="friendId", required=false) Long friendId)
  {
    JsonResult jsonResult = new JsonResult();
    
    //<editor-fold desc="step1 : 校验入参>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户id不能为空!");
      return jsonResult;
    }
    if (friendId == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("好友Id不能为空!");
      return jsonResult;
    }
    UserOutDto userDto = new UserOutDto();
    //<editor-fold 
    ImFriend exist = this.imFriendService.findByUserIdAndFriendId(id, friendId);
    if(exist==null){
  	  //jsonResult.setCode(Constant.RESUT_FAIL);
        jsonResult.setErrorDescription("对方不是您好友!");
       // return jsonResult;
        userDto.setIsfriend(0);
  }else{
  	 userDto.setIsfriend(1);
  	 //好友备注
  	 userDto.setRemark(exist.getRemark());
  	 //好友标签
  	 userDto.setLabelName(exist.getDescribe());
  }
    //<editor-fold desc="step1 : 获取用户信息>
    UserOne userOne = appUserOneService.get(Integer.valueOf(friendId.toString()));
    User user = (User)this.appUserService.byPhoneNumber(userOne.getPhoneNumber());

    userDto.setAddPay(userOne.getAddPay());
    Map map = new HashMap<>();
    map.put("userId", friendId);
    map.put("category", ImageCategory.EXPERIENCE.name());
    //TODO 不确定返回什么类型的图片
    List<Image> images = imageService.getByUserIdAndCategory(map);
    List<String> urls = new ArrayList<>();
    if(images!=null){
    	for(int i=0;i<images.size();i++){
    		String str = images.get(i).getUrl();
    		if(str!=null && !str.equals("")){
				String[] str1=str.split(",");
				for (int j = 0; j < str1.length; j++) {
					urls.add(str1[j]);
					if(urls.size()>6){
						break;
					}
				}
    		}
        }
    }
    
    
//    if (exist == null) {
//        jsonResult.setCode(Constant.RESUT_FAIL);
//        jsonResult.setErrorDescription("好友不存在!");
//        return jsonResult;
//    }
    userDto.setImages(urls);
    userDto.setId((long)userOne.getUser_id());
    userDto.setUsername(userOne.getUsername());
    userDto.setPassword(userOne.getPassword());
    userDto.setPhoneNumber(userOne.getPhoneNumber());
    userDto.setAccountNumber(user.getAccountNumber());
    userDto.setAvatar(userOne.getAvator());
    //个性签名
    userDto.setSign(userOne.getSign());
    if(user.getBackAvatar()!=null){
    	 userDto.setBackAvatar(user.getBackAvatar());
    }
    BigDecimal money =userOne.getBalance();
    userDto.setBalance(money);
    if(user.getDistrictId()!=null){
    	userDto.setDistrictId(user.getDistrictId());
    }
    if(user.getSex()!=null){
    	userDto.setSex(user.getSex());
    }
    if(user.getThermalSignatrue()!=null){
    	userDto.setThermalSignatrue(user.getThermalSignatrue());
    }
    if(userOne.getEmail()!=null){
    	userDto.setUserEmail(userOne.getEmail());
    }
    if(user.getPaypassword()!=null){
    	userDto.setPaypassword(user.getPaypassword());
    }
    
    jsonResult.setDataObject(userDto);
    jsonResult.setErrorDescription("获取用户信息成功!");
   //<editor-fold >
    return jsonResult;
  }
  
  
  /**
   * 获取版本号
   */
  @ResponseBody
  @RequestMapping(value={"getVersion.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult getVersion(){
    JsonResult jsonResult = new JsonResult();
    try {
		VersionSys ap =versionService.get(1L);
        jsonResult.setDataObject(ap);
        jsonResult.setErrorDescription("获取版本号成功");
	} catch (Exception e) {
		  jsonResult.setErrorDescription("获取版本号失败");
	}
    //<editor-fold >
    return jsonResult;
  }
  
  /**
   * 获取是否有新消息
   */
  @ResponseBody
  @RequestMapping(value={"getNewInfo.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult getNewInfo(@RequestParam(value="userId", required=false) Long userId){
    JsonResult jsonResult = new JsonResult();
    try {
    	NewStatus newStatus =newStatusService.get(userId);
        jsonResult.setDataObject(newStatus);
        jsonResult.setErrorDescription("成功");
	} catch (Exception e) {
		  jsonResult.setErrorDescription("失败");
	}
    //<editor-fold >
    return jsonResult;
  }
  
  /**
   * 校验用户是否注册
   */
  @ResponseBody
  @RequestMapping(value="verificationUser.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult verificationUser(@RequestParam(value="phoneNumber", required=false) String phoneNumber){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 校验入参>
    if (phoneNumber == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("手机号不能为空!");
      return jsonResult;
    }
    //<editor-fold >
    
    //<editor-fold desc="step1 : 验证支付密码>
    User user = (User)this.appUserService.byPhoneNumber(phoneNumber);
    if (user!=null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户已经被注册");
      return jsonResult;
    }else{
    	   jsonResult.setCode(Constant.RESUT_SUCCESS);
    	   jsonResult.setErrorDescription("恭喜您，可以用该账号");
    }
    //<editor-fold >
    return jsonResult;
  }
  
  /*
	 * 添加实名认证信息
	 */
	@ResponseBody
	@RequestMapping(value="addCertification.do", method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult addCertification(@ModelAttribute("addCertificationParam")AddCertificationParam addCertificationParam) throws Exception {
		//将正反面照片保存到本地,并获取他们的保存路径
		//String positivePath = "images/certificationImg/"+getUUID();
		//String reversePath = "images/certificationImg/"+getUUID();
		//img_positive.transferTo(new File(positivePath));
		//img_reverse.transferTo(new File(reversePath));
		//参数校验
		JsonResult jsonResult = new JsonResult<>();
		String user_id = Long.toString(addCertificationParam.getUserId());
		String user_code = addCertificationParam.getUserCode();
		String user_realname = addCertificationParam.getUserRealName();
		List<String> images = addCertificationParam.getImages();
		if (user_id==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		}
		if (user_code==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户身份证号不能为空");
			return jsonResult;
		}
		if (user_realname==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户真实姓名不能为空");
			return jsonResult;
		}
		if (images.size()==0) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户身份证正反面不能为空");
			return jsonResult;
		}
		if (images.size()<2) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户身份证正反面必须都要上传");
			return jsonResult;
		}
		//判断是否已经提交过
		Certification certification = certificationService.selectByUserId(user_id);
		if(certification!=null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("该用户已提交过实名认证申请");
			return jsonResult;
		}
		certification = new Certification();
		certification.setPass("0");
		certification.setUser_id(user_id);
		certification.setUser_code(user_code);
		certification.setUser_realname(user_realname);
		certification.setCreatedTime(new Date());
		certificationService.addCertification(certification);
		/*保存图片*/
		String imagestr = "";
		Image image = new Image();
		image.setCategory(ImageCategory.CERTIFICATION.name());
		image.preCreate(Long.valueOf(user_id));
		image.setObjectId(Long.valueOf(certification.getId()));
		if(images!=null&&images.size()>0){
			for(int i=0;i<images.size();i++){
				if(i==0){
					imagestr+=images.get(i);
				}else {
					imagestr+=","+images.get(i);
				}
			}
		}
		image.setUrl(imagestr);
		imageService.insert(image);
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("实名认证信息添加成功");
		return jsonResult; 
	}

	/*
	 * 获取不带-的UUID
	 */
	private String getUUID() {
		return UUID.randomUUID().toString().replace("-", "");
	}
}