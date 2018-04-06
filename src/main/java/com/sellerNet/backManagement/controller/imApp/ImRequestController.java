package com.sellerNet.backManagement.controller.imApp;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.CollectionUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.google.gson.JsonObject;
import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.im.ImRequestDTO;
import com.sellerNet.backManagement.dto.im.PhoneAndName;
import com.sellerNet.backManagement.entity.ImRequestParam;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.NewStatus;
import com.sellerNet.backManagement.entity.Setparam;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.UserRelation;
import com.sellerNet.backManagement.entity.im.ImFriend;
import com.sellerNet.backManagement.entity.im.ImRequest;
import com.sellerNet.backManagement.entity.im.ImRequestType;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.NewStatusService;
import com.sellerNet.backManagement.service.SetparamService;
import com.sellerNet.backManagement.service.UserRelationService;
import com.sellerNet.backManagement.service.im.ImFriendService;
import com.sellerNet.backManagement.service.im.ImGroupService;
import com.sellerNet.backManagement.service.im.ImRequestService;
import com.sellerNet.backManagement.utils.Constant;
import com.sellerNet.backManagement.utils.JsonUtils;

/**
 * 请求管理
 * 1、添加好友
 * 2、账号登陆
 * 3、用户登陆
 * 4、忘记密码
 * 5、发送短信验证码
 * 6、修改个人信息
 * 7、根据手机号获取用户信息
 * 8、设置支付密码
 * 9、验证支付密码
 * 10、根据用户id和好友id获取用户信息
 * 
 */
@RestController
@RequestMapping({"api/im/requests"})
public class ImRequestController extends BaseController{
  private static final Logger LOGGER = LoggerFactory.getLogger(ImRequestController.class);

  @Resource
  private ImRequestService imRequestService;

  @Resource
  private AppUserService appUserService;
  
  @Resource
  private AppUserOneService appUserOneService;
 
  @Resource
  private ImGroupService imGroupService;

  @Resource
  private ImFriendService imFriendService;
  
  @Resource
  private SetparamService setparamService;
  
  @Resource
  private UserRelationService userRelationService;
  
  @Resource
  private NewStatusService newStatusService;

  /**
   * 添加好友
   * @param id
   * @param friendId
   * @param message
   * @return
  */
  @SuppressWarnings("unchecked")
@RequestMapping(value={"friends/apply.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult applyToBeFriend(@RequestParam(value="id", required=false) Long id, 
		  						    @RequestParam(value="friendId", required=false) Long friendId, 
		  						    @RequestParam(value="remark", required=false) String remark, 
		  						    @RequestParam(value="lableName", required=false) String lableName, 
		  						    @RequestParam(value="status", required=false)  String status,
		  						  @RequestParam(value="sayHelloPay", required=false)  Integer sayHelloPay,
		  						    @RequestParam(value="message", required=false, defaultValue="") String message){
    JsonResult jsonResult = new JsonResult();
    
    //<editor-fold desc="step1 : 校验入参>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户Id不能为空");
      return jsonResult;
    }
    if (friendId == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("好友Id不能为空");
      return jsonResult;
    }
    //<editor-fold >
    //检查是否被拉黑
    Map urmap =new HashMap<>();
    urmap.put("userId", id);
    urmap.put("beUserId", friendId);
    urmap.put("status", 1);
    urmap.put("type", 2);
   List<UserRelation> urList = userRelationService.selectParam(urmap);
    if(urList!=null&&urList.size()>0){
    	jsonResult.setCode(Constant.RESUT_FAIL);
        jsonResult.setErrorDescription("对方拒绝您的信息");
        return jsonResult;
    }
    
    //<editor-fold desc="step1 : 判断是不是好友关系>
    ImFriend imFriend = imFriendService.findByUserIdAndFriendId(id, friendId);
    if(imFriend!=null){
    	jsonResult.setCode(Constant.RESUT_FAIL);
        jsonResult.setErrorDescription("已经是好友不能重复添加");
        return jsonResult;
    }
    //<editor-fold >
    //<editor-fold desc="step1 : 添加好友>
    JsonResult jsonResult2 = this.imRequestService.applyFriend(id, friendId,message,status,sayHelloPay,remark,lableName);
    if (jsonResult2.getCode().equals(Constant.RESUT_FAIL)) {
      return jsonResult2;
    }
    
	 try {
//				新消息提醒
	    	NewStatus newStatus =newStatusService.get(friendId);
	    	if(newStatus!=null){
	    	    if(status!=null&&status.equals("SAYHELLO")){
	    	    	newStatus.setNearStatus(1);
	    	    	newStatus.setFirendAppyStatus(1);
	    	    }else{
	    	    	newStatus.setFirendAppyStatus(1);
	    	    }
	    		newStatusService.update(newStatus);
	    	}else{
	    		newStatus =new NewStatus();
	    		 if(status!=null&&status.equals("SAYHELLO")){
		    	    	newStatus.setNearStatus(1);
		    	    	newStatus.setFirendAppyStatus(1);
		    	    }else{
		    	    	newStatus.setFirendAppyStatus(1);
		    	    }
	    		newStatus.setUserId(Integer.parseInt(friendId.toString()));
	    		newStatus.setAdvertStatus(0);
	    		newStatus.setInviteStatus(0);
	    		newStatusService.insert(newStatus);
	    	}
		} catch (Exception e) {
			System.out.println(e);
		}
    
    jsonResult.setErrorDescription("好友申请发送成功!");
    
    // number5== 好友不需要验证时进行的处理
    Setparam record = new Setparam();
    record = setparamService.selectByPrimaryKey(friendId);
    if(record!=null){
    	if (!("1".equals(record.getAddfriendflag()))) {// 添加朋友时不需要验证，则做添加成功的处理
        	// 查询请求id
        	Map map = new HashMap();
            map.put("targetId", friendId);
            map.put("userId", id);
            List receivedRequests = this.imRequestService.findAcceptedOrNoHandledFriendRequest(map);
            if (!CollectionUtils.isEmpty(receivedRequests)) {
                ImRequest receivedRequest = (ImRequest)receivedRequests.get(0);
                JsonResult jsonResult3 = this.imRequestService.handleFriendRequest(friendId, receivedRequest.getId(), "ACCEPT", "true", null);
            	jsonResult.setErrorDescription("好友处理成功!");
            }
        }
    }
    //<editor-fold >
    return jsonResult;
  }

  /**
   * 获取所有好友请求
   	* @param id
 	* @param mailList
 	* @param type
 	* @param page
 	* @return
  */
  @RequestMapping(value={"/all.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult<List<ImRequestDTO>> findAllRequests(@RequestParam("JsonString") String jsonString){
    
	//<editor-fold desc="step1 : 入参序列话成对象>
	  ImRequestParam imRequestParam = JsonUtils.getObject(jsonString, ImRequestParam.class);
	//<editor-fold >
	JsonResult jsonResult = new JsonResult();
	//<editor-fold desc="step1 : 获取所有的请求>
    if (imRequestParam.getId() == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户Id不能为空");
      return jsonResult;
    }
    if (imRequestParam.getPage() == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("页号不能为空");
      return jsonResult;
    }

    if (imRequestParam.getMailList() == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("通讯录不能为空");
      return jsonResult;
    }

    try {
		NewStatus newStatus =newStatusService.get(imRequestParam.getId());
		if(newStatus!=null){
			newStatus.setFirendAppyStatus(0);
			newStatusService.update(newStatus);
		}
	} catch (Exception e) {
		System.out.println(e);
	}
    
    //<editor-fold desc="step1 : 校验入参>
    List<ImRequestDTO>  requestDTOs = this.imRequestService.findAll(imRequestParam.getId(),imRequestParam.getPage());
    for (ImRequestDTO imrequest : requestDTOs) {
      if ((imrequest.getRequestType().equals("FRIEND_APPLY")) && (imrequest.getType().equals(ImRequestDTO.ImRequestDTOType.SENT.name())) && (imrequest.getStatus().equals("NOT_HANDLED")))
        imrequest.setStatus("等待验证");
      if ((imrequest.getRequestType().equals("FRIEND_APPLY")) && (imrequest.getType().equals(ImRequestDTO.ImRequestDTOType.SENT.name())) && (imrequest.getStatus().equals("PAY_ADD")))
          imrequest.setStatus("等待验证");
      else if ((imrequest.getRequestType().equals("FRIEND_APPLY")) && (imrequest.getType().equals(ImRequestDTO.ImRequestDTOType.RECEIVED.name())) && (imrequest.getStatus().equals("NOT_HANDLED")))
        imrequest.setStatus("接受");
      else if ((imrequest.getRequestType().equals("FRIEND_APPLY")) && (imrequest.getType().equals(ImRequestDTO.ImRequestDTOType.RECEIVED.name())) && (imrequest.getStatus().equals("PAY_ADD")))
          imrequest.setStatus("接受");
      else if ((imrequest.getRequestType().equals("FRIEND_APPLY")) && (imrequest.getStatus().equals("ACCEPTED"))) {
        imrequest.setStatus("已添加");
      }
      
    }
    List request = new ArrayList();
    if (imRequestParam.getMailList() != null) {
      for (PhoneAndName phoneNumber : imRequestParam.getMailList()) {
        UserOne allExist = this.appUserOneService.byPhoneNumber(phoneNumber.getPhoneNumber());
        if (allExist != null) {
          ImFriend existFriend = this.imFriendService.findByUserIdAndFriendId(imRequestParam.getId(), (long)allExist.getUser_id());
          if ((imRequestParam.getType() == 1) && (existFriend == null)) {
            ImRequestDTO imRequestDTO = new ImRequestDTO();
            imRequestDTO.setStatus("添加");
            imRequestDTO.setUserId((long)allExist.getUser_id());
            imRequestDTO.setNickname(phoneNumber.getUsername());
            imRequestDTO.setAvatar(allExist.getAvator());
            requestDTOs.add(imRequestDTO);
          }
          if ((imRequestParam.getType() == 2) && (existFriend == null)) {
            ImRequestDTO imRequestDTO = new ImRequestDTO();
            imRequestDTO.setStatus("添加");
            imRequestDTO.setUserId((long)allExist.getUser_id());
            imRequestDTO.setNickname(phoneNumber.getUsername());//手机通讯录中的昵称
            imRequestDTO.setAvatar(allExist.getAvator());
            request.add(imRequestDTO);
          } else if ((imRequestParam.getType() == 2) && (existFriend != null)) {
            ImRequestDTO imRequestDTO = new ImRequestDTO();
            imRequestDTO.setStatus("已添加");
            imRequestDTO.setUserId((long)allExist.getUser_id());
            imRequestDTO.setNickname(allExist.getUsername());//买家账号昵称
            request.add(imRequestDTO);
          }
        }
      }
    }
    if (imRequestParam.getType() == 1)
      jsonResult.setDataObject(requestDTOs);
    else if (imRequestParam.getType() == 2) {
      jsonResult.setDataObject(request);
    }

    jsonResult.setErrorDescription("获取好友请求成功!");
    return jsonResult;
  }

  /**
   * 处理好友请求
   * @param id
   * @param requestId
   * @param action
   * @param addFriend
   * @param friendsGroupId
   * @return
  */
  @RequestMapping(value={"/friends/handle.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult handleFriendRequest(@RequestParam(value="id", required=false) Long id, 
		  								@RequestParam(value="requestId", required=false) Long requestId, 
		  								@RequestParam(value="action", required=false) String action, 
		  								@RequestParam(value="addFriend", required=false) String addFriend, 
		  								@RequestParam(value="friendsGroupId", required=false) Long friendsGroupId){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 获取所有的请求>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户Id不能为空");
      return jsonResult;
    }
    if (requestId == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("请求Id不能为空");
      return jsonResult;
    }
    if (action == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("处理（同意或者拒绝）不能为空");
      return jsonResult;
    }
    //<editor-fold >
    JsonResult jsonResult2 = this.imRequestService.handleFriendRequest(id, requestId, action, addFriend, friendsGroupId);
    if (jsonResult2.equals(Constant.RESUT_FAIL)) {
      return jsonResult2;
    }
    return jsonResult;
  }
  
  /**
   * 诚意金 加好友
   * @param id
   * @param requestId
   * @param action
   * @param addFriend
   * @param friendsGroupId
   * @return
  */
  @RequestMapping(value={"/friends/addFirendByMoney.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult handleFriendRequest(@RequestParam(value="id", required=false) Long id, 
		  								@RequestParam(value="friendId", required=false) Long friendId){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 获取所有的请求>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户Id不能为空");
      return jsonResult;
    }
    if (friendId == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("请求对方Id不能为空");
      return jsonResult;
    }
    
    ImFriend imFriend = imFriendService.findByUserIdAndFriendId(id, friendId);
    if(imFriend!=null){
    	jsonResult.setCode(Constant.RESUT_FAIL);
        jsonResult.setErrorDescription("已经是好友不能重复添加");
        return jsonResult;
    }
    
    //<editor-fold >
    JsonResult jsonResult2 = this.imRequestService.handleFriendRequest(id, friendId);
    if (jsonResult2.equals(Constant.RESUT_FAIL)) {
      return jsonResult2;
    }

    jsonResult.setErrorDescription("好友申请成功!");
    return jsonResult;
  }
  /**
   * 清空打招呼列表
   * @param id
   * @return
   */
  @RequestMapping(value={"/friends/delHistoryRequests.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult delHistoryRequests(@RequestParam(value="id", required=false) Long id){
    JsonResult jsonResult = new JsonResult();
    //<editor-fold desc="step1 : 获取所有的请求>
    if (id == null) {
      jsonResult.setCode(Constant.RESUT_FAIL);
      jsonResult.setErrorDescription("用户Id不能为空");
      return jsonResult;
    }
    Map map2 = new HashMap();
    map2.put("userId", id);
    map2.put("requestType", ImRequestType.FRIEND_APPLY.name());
    //<editor-fold >
    Integer i = this.imRequestService.delHistoryRequests(map2);
    
    
    jsonResult.setErrorDescription("好友处理成功!");
    return jsonResult;
  }
  
  
  public static void main(String[] args) {
	  Map<String,Object> map = new HashMap<String, Object>();
	  ImRequestParam param = new ImRequestParam();
	  param.setId(1L);
	  param.setPage(5);
	  param.setType(2);
	  List<PhoneAndName> phoneAndNames = new ArrayList<>();
	  PhoneAndName phoneAndName = new PhoneAndName();
	  phoneAndName.setPhoneNumber("18510829660");
	  phoneAndName.setUsername("张三");
	  phoneAndNames.add(phoneAndName);
	  PhoneAndName phoneAndName2 = new PhoneAndName();
	  phoneAndName2.setPhoneNumber("18510829661");
	  phoneAndName2.setUsername("李四");
	  phoneAndNames.add(phoneAndName2);
	  param.setMailList(phoneAndNames);
	  map.put("json", param);
	  System.out.println(JsonUtils.toJson(map));
}
  
  
  
  
}