package com.sellerNet.backManagement.controller.imApp;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.ImageDtoUrl;
import com.sellerNet.backManagement.dto.LabelDto;
import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Lable;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PhoneNumber;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.UserOutDto;
import com.sellerNet.backManagement.entity.UserRelation;
import com.sellerNet.backManagement.entity.im.ImFriend;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.ImageService;
import com.sellerNet.backManagement.service.LableMemberService;
import com.sellerNet.backManagement.service.LableService;
import com.sellerNet.backManagement.service.PhoneNumberService;
import com.sellerNet.backManagement.service.UserRelationService;
import com.sellerNet.backManagement.service.im.ImFriendService;
import com.sellerNet.backManagement.service.im.ImGroupService;
import com.sellerNet.backManagement.utils.EncodingTool;
import com.sellerNet.backManagement.utils.ParamValidator;

@RestController
@RequestMapping("api/im/friend")
public class ImFriendController extends BaseController{
	
  private static final Logger LOGGER = LoggerFactory.getLogger(ImFriendController.class);

  @Resource
  private ImFriendService imFriendService;
  
  @Resource
  private ImGroupService imGroupService;

  @Resource
  private AppUserService userService;
  
  @Resource
  private AppUserOneService userOneService;

  @Resource
  private ImageService imageService;
  
  @Resource
  private LableService lableService;
  
  @Resource
  private LableMemberService lableMemberService;
  
  @Resource
  private PhoneNumberService phoneNumberService;
  
  @Resource
  private UserRelationService userRelationService;

  @RequestMapping(value="getFriends.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult<List<ImUserDTO>> getFriends(@RequestParam("id") Long id){
    JsonResult jsonResult = new JsonResult();
    if (id == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("用户id不能为空");
      return jsonResult;
    }

    List<ImUserDTO> users;
	try {
		users = this.imFriendService.findFriendsForUser(id);
		jsonResult.setDataObject(users);
	} catch (NumberFormatException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    jsonResult.setErrorDescription("获取用户列表成功!");
    return jsonResult;
  }

  /**
   * 直接删除好友
   * @param id
   * @param friendId
   * @return
   */
  @RequestMapping(value="delete.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult deleteFriend(@ModelAttribute("UserRelation") UserRelation userRelation){
    JsonResult jsonResult = new JsonResult();
    if (userRelation.getUserId() == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("用户id不能为空");
      return jsonResult;
    }
    if (userRelation.getBeUserId() == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("删除好友id不能为空");
      return jsonResult;
    }
    userRelation.setType(1);
    //判断是否存在
    Map map =new HashMap<>();
    map.put("userId", userRelation.getUserId());
    map.put("beUserId", userRelation.getBeUserId());
    map.put("type", userRelation.getType());
    map.put("status",0);
    List<UserRelation> urList =  userRelationService.selectParam(map);
    if(urList.size()>0){
    	jsonResult.setErrorDescription("已经提交删除申请");
    	 return jsonResult;
    }
   // userRelation.setReason(userRelation.getReason());
    //userRelation.setOtherReason(userRelation.getOtherReason());
    
   // List<String> list =userRelation.getImageList();
//    if(list!=null){
//    	 String img = "";
//    	    for (String string : list) {
//    	    	img+=string+",";
//    		}
//    	    userRelation.setImages(img);
//    }
    userRelationService.insert(userRelation);
    
//    JsonResult delResult = this.imFriendService.deleteFriend(id, friendId);
//    JsonResult delResult2 = this.imFriendService.deleteFriend(friendId, id);
//    if ((delResult.equals("1")) || (delResult2.equals("1"))) {
//      return delResult;
//    }
    jsonResult.setErrorDescription("删除好友申请成功!");
    return jsonResult;
  }
  
  /**
   * 好友加入黑名单
   * @param id
   * @param friendId
   * @return
   */
  @RequestMapping(value="defriend.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult tobeBlack(@ModelAttribute("UserRelation") UserRelation userRelation){
	  JsonResult jsonResult = new JsonResult();
	  if (userRelation.getUserId() == null) {
	      jsonResult.setErrorDescription("用户id不能为空");
	      return jsonResult;
	    }
	    if (userRelation.getBeUserId() == null) {
	      jsonResult.setErrorDescription("删除好友id不能为空");
	      return jsonResult;
	    }
	    Map map =new HashMap<>();
	    map.put("userId", userRelation.getUserId());
	    map.put("beUserId", userRelation.getBeUserId());
	    map.put("type", 2);
	    map.put("status",1);
	    List<UserRelation> urList =  userRelationService.selectParam(map);
	    if(urList.size()>0){
	    	jsonResult.setErrorDescription("已经提出拉黑申请");
	    	 return jsonResult;
	    }
	    //查询是否是好友，否则直接拉黑
	  //ImFriend imFriend = imFriendService.findByUserIdAndFriendId((long)userRelation.getUserId(), (long)userRelation.getBeUserId());
	 // if(imFriend==null){
		  userRelation.setType(2);
		  userRelation.setStatus(1);
		  userRelation.setCreatedTime(new Date());
		  jsonResult.setErrorDescription("加入黑名单成功!");
	  //}
//	  else{
//		  if (userRelation.getType() == null) {
//		        jsonResult.setErrorDescription("类型不能为空");
//		        return jsonResult;
//		      }
//		    if (userRelation.getReason() == null) {
//		        jsonResult.setErrorDescription("类型不能为空");
//		        return jsonResult;
//		      }
//		    List<String> list =userRelation.getImageList();
//		    String img = "";
//		    if(list!=null){
//		    	    for (String string : list) {
//		    	    	img+=string+",";
//		    		}
//		    	    userRelation.setImages(img);
//		    }
//		    userRelation.setImages(img);
//		    userRelation.setStatus(0);
//		    userRelation.setCreatedTime(new Date());
//		    jsonResult.setErrorDescription("加入黑名单申请成功!");
//	  }
	    
	  	//userRelation.setReason(userRelation.getReason());
	    //userRelation.setOtherReason(userRelation.getOtherReason());
	    userRelationService.insert(userRelation);
	    jsonResult.setErrorDescription("拉黑成功!");
	    return jsonResult;
  }
  
  /**
   * @param id
   * @param friendId
   * @return
  */
  @RequestMapping(value="friendLable.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult friendLable(@RequestParam("id") Long id, @RequestParam("friendId") Long friendId){
	  JsonResult jsonResult = new JsonResult();
	  if (id == null) {
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("用户id不能为空");
		  return jsonResult;
	  }
	  if (friendId == null) {
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("好友id不能为空");
		  return jsonResult;
	  }
	  LabelDto labelDto = new LabelDto();
	  Map map = new HashMap<>();
	  map.put("userId", id);
	  map.put("friendId", friendId);
	  ImFriend imFriend = imFriendService.findByUserIdAndFriendId(id, friendId);
	  if(imFriend!=null){
		  Lable lable = null;
		  if(imFriend.getAvatar()!=null){
			  labelDto.setAvatar(imFriend.getAvatar()); 
		  }
		  if(imFriend.getDescribe()!=null){
			  labelDto.setDescrib(imFriend.getDescribe()); 
		  }
		  if(imFriend.getRemark()!=null){
			  labelDto.setRemark(imFriend.getRemark());
		  }
		  
		  if(imFriend.getLableId()!=null){
			  labelDto.setLableId(imFriend.getLableId());
			  lable =  lableService.get(imFriend.getLableId());
			  if(lable!=null){
				  labelDto.setLableName(lable.getName());
			  }
			  
		  }
		  
		  Map map2 = new HashMap<>();
		  map.put("userId", friendId);
		  List<String> phoneNumbers = new ArrayList<>();
		  List<PhoneNumber> phoneNumbers2 = phoneNumberService.selectParam(map2);
		  if(phoneNumbers2.size()>0){
			  for(PhoneNumber phoneNumber:phoneNumbers2){
				  phoneNumbers.add(phoneNumber.getPhoneNumber());
			  }
		  }
		  if(phoneNumbers.size()>0){
			  labelDto.setPhoneNumbers(phoneNumbers);  
		  }
	  }
	  jsonResult.setDataObject(labelDto);
	  jsonResult.setErrorDescription("获取好友标签信息成功");
	  return jsonResult;
  }

  @RequestMapping(value={"addfriend/search.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult<User> searchFriend(@RequestParam(value="id", required=false) Long id, @RequestParam(value="terms", required=false) String terms)
    throws NumberFormatException, Exception
  {
    JsonResult jsonResult = new JsonResult();
    if (id == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("用户id不能为空");
      return jsonResult;
    }
    if (terms == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("搜索好友关键词不能为空");
      return jsonResult;
    }
    PageEntity param = new PageEntity(Integer.valueOf(0), Integer.valueOf(10));
    Map map = new HashMap();
    if (ParamValidator.isEmail(terms)){
    	map.put("userEmail", terms);
    }else{
    	map.put("phoneNumber", terms);
    }
//    else {
//      map.put("username", EncodingTool.encodeStr(terms));
//    }
    param.setParams(map);
    List<UserOne> frinds = userOneService.byUserIdAndTerms(map);
    if (frinds.size() == 0) {
      jsonResult.setCode("0");
      jsonResult.setErrorDescription("该用户不存在!");
      return jsonResult;
    }
	UserOne userOne = this.userOneService.byPhoneNumber(frinds.get(0).getPhoneNumber());
    User user = this.userService.byPhoneNumber(userOne.getPhoneNumber());
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
    if(user.getLabel()!=null){
    	   userOutDto.setLabel(user.getLabel());
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
    }
    
    ImFriend exist = this.imFriendService.findByUserIdAndFriendId(id,(long)frinds.get(0).getUser_id());
    if (exist != null) {
      jsonResult.setCode("0");
      jsonResult.setErrorDescription("该用户已经是你的好友!不能重复添加");
      userOutDto.setIsfriend(1);
     // jsonResult.setDataObject(userOutDto);
     // return jsonResult;
    }

    List<ImageDtoUrl> images = this.imageService.getByUserIdAndCategory(Long.valueOf(frinds.get(0).getUser_id()), "5",ImageCategory.EXPERIENCE.name());
    if ((images != null) && (images.size() > 0)) {
    	String[] str = images.get(0).getImages().split(",");
      for (int i = 0; i < str.length; i++) {
    	  userOutDto.getImages().add(str[i]);
      }
    }

    jsonResult.setDataObject(userOutDto);
    jsonResult.setErrorDescription("获取用户信息成功!");
    return jsonResult;
  }

  @RequestMapping(value={"myfriends/search.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult<List<User>> searchMyFriend(@RequestParam(value="id", required=false) Long id, @RequestParam(value="terms", required=false) String terms){
    JsonResult jsonResult = new JsonResult();
    if (id == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("用户id不能为空");
      return jsonResult;
    }
    if (terms == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("搜索好友关键词不能为空");
      return jsonResult;
    }
    Map map = new HashMap();
    if (ParamValidator.isChinaPhoneLegal(terms))
      map.put("phoneNumber", terms);
    else {
      map.put("username", EncodingTool.encodeStr(terms));
    }
    try {
    	  List users = this.userService.byUserIdAndTerms(map);
    	  Iterator it = users.iterator();
    	    while (it.hasNext()) {
    	      User user = (User)it.next();
    	      if ((this.imFriendService.findByUserIdAndFriendId(id, user.getUserId()) == null) || (this.imFriendService.findByUserIdAndFriendId(user.getUserId(), id) == null)) {
    	        it.remove();
    	      }
    	    }
    	    jsonResult.setDataObject(users);
    	    jsonResult.setErrorDescription("获取用户信息成功");
	} catch (Exception e) {
		// TODO: handle exception
	}
  

  
    return jsonResult;
  }
  
  
  
}