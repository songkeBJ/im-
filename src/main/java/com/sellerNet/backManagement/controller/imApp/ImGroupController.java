package com.sellerNet.backManagement.controller.imApp;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.im.ImGroupDTO;
import com.sellerNet.backManagement.dto.im.ImGroupDetailDTO;
import com.sellerNet.backManagement.dto.im.ImGroupMemberDTO;
import com.sellerNet.backManagement.dto.im.ImUserGroupDTO;
import com.sellerNet.backManagement.entity.Code;
import com.sellerNet.backManagement.entity.GroupParam;
import com.sellerNet.backManagement.entity.InvitesGroupParam;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.im.ImGroup;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.CodeService;
import com.sellerNet.backManagement.service.im.ImGroupMemberService;
import com.sellerNet.backManagement.service.im.ImGroupService;
import com.sellerNet.backManagement.utils.JsonUtils;
/**
 * 创建群聊
 * 
 * 1、创建群聊
 * 2、我加入的群聊
 * 3、解散群组
 * 4、对朋友圈进行点赞
 * 5、朋友圈更新背景图片
 * 
 */
@RestController
@RequestMapping({"api/im/groups"})
public class ImGroupController extends BaseController{
  private static final Logger LOGGER = LoggerFactory.getLogger(ImGroupController.class);

  @Resource
  ImGroupService imGroupService;
  
  @Resource
  ImGroupMemberService imGroupMemberService;
  
  @Resource 
  CodeService codeService;
  
  @Resource 
  AppUserOneService userOneService;
  
  @Resource
  private Groupemplate groupemplate;

  /**
	 * 创建群聊
	 * @param jsonString
	 * @return 是否发布成功
	 */
  @RequestMapping(value={"/add.do"}, method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult<ImGroupDTO> createAndInviteGroup(@RequestParam("JsonString") String jsonString,HttpServletRequest request){
    JsonResult jsonResult = new JsonResult();
    GroupParam groupParam = JsonUtils.getObject(jsonString, GroupParam.class);
    if (groupParam.getId() == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("用户Id不能为空");
      return jsonResult;
    }
    if (groupParam.getUserToInviteIds() == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("邀请好友集合不能为空");
      return jsonResult;
    }
    if(groupParam.getCodeNumber()!=null){
    	Code code = new Code();
    	code.setCode(groupParam.getCodeNumber());
    	code.setIsLocked(false);
    	codeService.update(code);
    }
    if (groupParam.getUserToInviteIds().size()<=1) {
    	 jsonResult.setCode("1");
         jsonResult.setErrorDescription("2人以上才可创建群聊");
         return jsonResult;
    }
    
    JsonResult result = this.imGroupService.createGang(groupParam.getGroupName(),groupParam.getType(),groupParam.getId(), groupParam.getUserToInviteIds(),request);
    if (result.getCode().equals("1")) {
      return result;
    }
    result.setErrorDescription("创建群成功!");
    return result;
  }
  
  /**
   * 我加入的群聊
   *
   * @param userId 用户id
   * @return
   */
  @RequestMapping(value = "/all.do", method ={RequestMethod.GET,RequestMethod.POST})
  public JsonResult<ImUserGroupDTO> getUserGroups(@RequestParam("id") Long id) {
	JsonResult jsonResult = new JsonResult<>();
	//<editor-fold desc="step1 : 校验入参>
	 if (id == null) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("用户Id不能为空");
	      return jsonResult;
	 }
	//<editor-fold >
	//<editor-fold desc="step1 : 加载群聊>
  	List<ImUserGroupDTO> userGroupDTO = imGroupService.findUserGroups(id);
  	jsonResult.setDataObject(userGroupDTO);
  	jsonResult.setErrorDescription("加载群聊成功");
  	//<editor-fold desc="step1 : 校验入参>
    return jsonResult;
  }
  
  /**
   * 获取群详情
   *
   * @param id 门派id
   * @return
   */
  @RequestMapping(value = "/detail.do", method = {RequestMethod.GET,RequestMethod.POST})
  public JsonResult<ImGroupDetailDTO> getGroupDetail(@RequestParam(value="id",required=false) Long id) {
	 
	  JsonResult jsonResult = new JsonResult<>();
	  //<editor-fold desc="step1 : 校验入参>
	  if (id == null) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("群组Id不能为空");
	      return jsonResult;
	  }
	 //<editor-fold >
	ImGroupDetailDTO imGroupDetailDTO = imGroupService.getGroupDetail(id);
	jsonResult.setDataObject(imGroupDetailDTO);
	jsonResult.setErrorDescription("获取群组详情成功");
	return jsonResult;
  }
  
  /**
   * 获取帮派详情
   *
   * @param id 门派id
   * @return
   */
  @SuppressWarnings("rawtypes")
@RequestMapping(value = "/detailByChatId.do", method = {RequestMethod.GET,RequestMethod.POST})
  public JsonResult<ImGroupDetailDTO> getGroupDetail(@RequestParam(value="chatGroupId",required=false) String chatGroupId) {
	  JsonResult jsonResult = new JsonResult<>();
	//<editor-fold desc="step1 : 校验入参>
	  if (chatGroupId == null) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("荣联Id不能为空");
	      return jsonResult;
	  }
	 //<editor-fold >
	  try {
		  jsonResult.setDataObject(imGroupService.findGroupByChatGroupId(chatGroupId));
		  jsonResult.setErrorDescription("获取群组详情成功");
	} catch (Exception e) {
		  jsonResult.setErrorDescription("群组不存在");
	}
	
	  return jsonResult;
  }
  
  
  /**
   * 扫描（群二维码）邀请加入群组
   *
   * @param userId         :被邀请用户id
   * @param groupId        :门派ID
   * @return 返回该群信息
   */
  @RequestMapping(value = "/scanToGroup.do", method = {RequestMethod.GET,RequestMethod.POST})
  public JsonResult inviteToJoinGroup(@RequestParam(value="userId",required=false) Long userId,
                                      @RequestParam(value="groupId",required=false) Long groupId) {
	  JsonResult jsonResult = new JsonResult<>();
	  //<editor-fold desc="step1 : 校验入参>
	  if (userId == null) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("群组Id不能为空");
	      return jsonResult;
	  }
	  if (groupId == null) {
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("群组Id不能为空");
		  return jsonResult;
	  }
	 //<editor-fold >
	  //判断该用户是不是群组的成员
	  ImGroupMemberDTO imGroupMemberDTO = imGroupMemberService.getGroupMemberDetail(groupId, userId);
	  if(imGroupMemberDTO!=null){
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("您已经是群成员不能重复添加");
		  return jsonResult;
	  }
	  ImGroupDTO imGroupDTO = imGroupService.ScanToGroup(userId, groupId);
	  jsonResult.setDataObject(imGroupDTO.getChatGroupId());
	  jsonResult.setErrorDescription("扫描加入群组成功");
      return jsonResult;
  }
  
  /**
   * 添加用户到群中
   * @param userToInviteIds:被邀请用户id集合
   * @param groupId        :门派ID
   * @return
   */
  @RequestMapping(value = "/invites.do", method = {RequestMethod.GET,RequestMethod.POST})
  public JsonResult invitesToJoinGroup(@RequestParam("JsonString") String jsonString){
	  InvitesGroupParam invitesGroup = JsonUtils.getObject(jsonString, InvitesGroupParam.class);
	  JsonResult jsonResult = new JsonResult<>();
	  //<editor-fold desc="step1 : 校验入参>
	  if (invitesGroup.getGroupId() == null) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("群组Id不能为空");
	      return jsonResult;
	  }
	  if (invitesGroup.getUserToInviteIds() == null) {
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("用户集合不能为空");
		  return jsonResult;
	  }
	 //<editor-fold >
  	 
  	 imGroupService.invitesToJoinGroupBatch(invitesGroup.getUserToInviteIds(), invitesGroup.getGroupId());
  	 jsonResult.setErrorDescription("添加群成员成功");
  	 return jsonResult;
  }
  
  /**
   * 批量删除成员
   * @param userToInviteIds:用户id集合
   * @param groupId        :门派ID
   * @return
   */
  @RequestMapping(value = "/removeMembers.do", method = {RequestMethod.GET,RequestMethod.POST})
  public JsonResult deleteUsersFromGroupBatch(@RequestParam("JsonString") String jsonString){
  	 InvitesGroupParam invitesGroup = JsonUtils.getObject(jsonString, InvitesGroupParam.class);
  	JsonResult jsonResult = new JsonResult<>();
	  //<editor-fold desc="step1 : 校验入参>
	  if (invitesGroup.getGroupId() == null) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("群组Id不能为空");
	      return jsonResult;
	  }
	  if (invitesGroup.getUserToInviteIds() == null) {
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("用户集合不能为空");
		  return jsonResult;
	  }
	 //<editor-fold >
	 imGroupService.deleteUsersFromGroupBatch(invitesGroup.getUserToInviteIds(), invitesGroup.getGroupId());
  	 jsonResult.setErrorDescription("批量删除群成员成功");
	 return jsonResult;
  }
  
  
  /**
   * 解散群
   *
   * @param id
   * @param groupId
   * @return
   */
  @RequestMapping(value = "/dismiss.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult dismissGroup(@RequestParam(value="id") Long id,
                                 @RequestParam(value="groupId") Long groupId) {
	JsonResult jsonResult = new JsonResult<>();
	//<editor-fold desc="step1 : 校验入参>
	 if (id == null) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("用户Id不能为空");
	      return jsonResult;
	 }
	//<editor-fold >
	//<editor-fold desc="step1 : 校验入参>
	  JsonResult jsonResult2 = imGroupService.dismiss(id, groupId);
	  if(jsonResult2.getCode().equals("1")){
		  return jsonResult2;
	  }
	  jsonResult.setErrorDescription("解散群成功");
	//<editor-fold desc="step1 : 校验入参>
      return jsonResult;
  }
  
  /**
   * 设置禁言或者取消禁言
   *
   * @param userId
   * @param groupId
   * @param isBan
   * @return
   */
  @RequestMapping(value = "/ban.do", method = {RequestMethod.GET,RequestMethod.POST})
  public JsonResult banGroup(@RequestParam(value="id",required=false) Long id,
                             @RequestParam(value="groupId",required=false) Long groupId,
                             @RequestParam(value="isBan",required=false) Boolean isBan) {
	  JsonResult jsonResult = new JsonResult<>();
		//<editor-fold desc="step1 : 校验入参>
		 if (id == null) {
		      jsonResult.setCode("1");
		      jsonResult.setErrorDescription("用户Id不能为空");
		      return jsonResult;
		 }
		 if (groupId == null) {
			 jsonResult.setCode("1");
			 jsonResult.setErrorDescription("群id不能为空");
			 return jsonResult;
		 }
		 if (isBan == null) {
			 jsonResult.setCode("1");
			 jsonResult.setErrorDescription("禁言入参不能为空");
			 return jsonResult;
		 }
		//<editor-fold >
		 JsonResult jsonResult2 = imGroupService.banGroup(id, groupId, isBan);
		 if(jsonResult2.getCode().equals("1")){
		   return jsonResult2;
		 }
		 jsonResult.setDataObject("群禁言操作成功");
		 return jsonResult;
  }
	  /**
	   * 修改群名称等等
	   *
	   * @param terms
	   * @return
	   */
	  @RequestMapping(value = "/updateName.do", method = {RequestMethod.GET,RequestMethod.POST})
	  public JsonResult updateName(@RequestParam(value="groupId",required=false) Long groupId,
	  		                       @RequestParam(value="name",required=false) String name,
	  		                       @RequestParam(value="topmessage",required=false) String topmessage,
	  		                       @RequestParam(value="messageNo",required=false) String messageNo,
	  		                       @RequestParam(value="saveMail",required=false) String saveMail,
	  		                       @RequestParam(value="displayName",required=false) String displayName) {
		  JsonResult jsonResult = new JsonResult<>();
		 //<editor-fold desc="step1 : 校验入参>
		 if (groupId == null) {
		      jsonResult.setCode("1");
		      jsonResult.setErrorDescription("群组Id不能为空");
		      return jsonResult;
		 }
		//<editor-fold >
	  	ImGroup imGroup = imGroupService.get(groupId);
	  	if(messageNo!=null){
	  		imGroup.setMessageNo(messageNo);
	  	}
	  	if(topmessage!=null){
	  		imGroup.setTopmessage(topmessage);
	  	}
	  	if(saveMail!=null){
	  		imGroup.setSaveMail(saveMail);
	  	}
	  	if(displayName!=null){
	  		imGroup.setDisplayName(displayName);
	  	}
	  	if(name!=null){
	  		imGroup.setName(name);
	  	}
	  	imGroupService.update(imGroup);
	  	jsonResult.setErrorDescription("修改成功");
	  	return jsonResult;
	  }
	  
	  /**
	   * 发布群公告
	   *
	   * @param terms
	   * @return
	   */
	  @RequestMapping(value = "/notice.do", method = {RequestMethod.GET,RequestMethod.POST})
	  public JsonResult notice(@RequestParam(value="groupId",required=false) Long groupId,
	  		                   @RequestParam(value="introduction",required=false) String introduction,
	  		                   @RequestParam(value="id") Long id) {
		  JsonResult jsonResult = new JsonResult<>();
		 //<editor-fold desc="step1 : 校验入参>
		 if (id == null) {
		      jsonResult.setCode("1");
		      jsonResult.setErrorDescription("用户id不能为空");
		      return jsonResult;
		 }
		 if (groupId == null) {
			 jsonResult.setCode("1");
			 jsonResult.setErrorDescription("群id不能为空");
			 return jsonResult;
		 }
		 if (introduction == null) {
			 jsonResult.setCode("1");
			 jsonResult.setErrorDescription("群公告不能为空");
			 return jsonResult;
		 }
		//<editor-fold >
	  	ImGroup imGroup = imGroupService.get(groupId);
	  	imGroup.setIntroduction(introduction);
	  	imGroup.preModified(id);
	  	imGroupService.update(imGroup);
	  	jsonResult.setErrorDescription("发布群公告成功");
	  	return jsonResult;
	  }
  
	  /**
	     * 成员退出群组
	     *
	     * @param userId
	     * @param groupId
	     * @return
	     */
	    @RequestMapping(value = "/quit.do", method = RequestMethod.POST)
	    public JsonResult quitGroup(@RequestParam(value="id",required=false) Long id,
	                                @RequestParam(value="groupId",required=false) Long groupId) {
	    	JsonResult jsonResult = new JsonResult<>();
	    	//<editor-fold desc="step1 : 校验入参>
			 if (id == null) {
			      jsonResult.setCode("1");
			      jsonResult.setErrorDescription("用户id不能为空");
			      return jsonResult;
			 }
			 if (groupId == null) {
				 jsonResult.setCode("1");
				 jsonResult.setErrorDescription("群id不能为空");
				 return jsonResult;
			 }
			//<editor-fold >
	    	imGroupService.quit(id, groupId);
	    	jsonResult.setErrorDescription("退出群成功");
	        return jsonResult;
	    }
	    
	    /**
	     * 转让群聊
	     *
	     * @param userId
	     * @param groupId
	     * @param transferTo
	     * @return
	     */
	    @RequestMapping(value = "/transfer.do", method = RequestMethod.POST)
	    public JsonResult banGroup(@RequestParam(value="id",required=false) Long id,
	                               @RequestParam(value="groupId",required=false) Long groupId,
	                               @RequestParam(value="transferTo",required=false) Long transferTo) {
	    	JsonResult jsonResult = new JsonResult<>();
	    	//<editor-fold desc="step1 : 校验入参>
			 if (id == null) {
			      jsonResult.setCode("1");
			      jsonResult.setErrorDescription("用户id不能为空");
			      return jsonResult;
			 }
			 if (groupId == null) {
				 jsonResult.setCode("1");
				 jsonResult.setErrorDescription("群id不能为空");
				 return jsonResult;
			 }
			 if (transferTo == null) {
				 jsonResult.setCode("1");
				 jsonResult.setErrorDescription("转让用户Id不能为空");
				 return jsonResult;
			 }
			//<editor-fold >
	    	JsonResult jsonResult2 = imGroupService.transfer(id, groupId, transferTo);
	    	if(jsonResult2.getCode().equals("1")){
	    		return jsonResult2;
	    	}
	    	jsonResult.setErrorDescription("群转让成功");
	        return jsonResult;
	    }
	    
	    /**
		 * 获取面对面建群加入群聊的人
		 * @param jsonString
		 * @return 是否发布成功
		 */
	    @RequestMapping(value = "/getUsersByNumber.do", method = {RequestMethod.POST,RequestMethod.GET})
	    public JsonResult getGroupNumber(@RequestParam(value="id",required=false) Long id,
	    						         @RequestParam(value="numberCode",required=false) String numberCode){
	    	JsonResult jsonResult = new JsonResult<>();
	    	if (id == null) {
			      jsonResult.setCode("1");
			      jsonResult.setErrorDescription("用户id不能为空");
			      return jsonResult;
			 }
			 if (numberCode == null) {
				 jsonResult.setCode("1");
				 jsonResult.setErrorDescription("群数字不能为空");
				 return jsonResult;
			 }
			 //查询是否已经创建了
			Map map1 = new HashMap<>();
			map1.put("code",numberCode);
			map1.put("creator", id);
			List<Code> codes1 = codeService.selectParam(map1);
			if(codes1.size()==0){
				Code code  =  new Code();
		    	code.preCreate(id);
		    	code.setCode(numberCode);
		    	int i = codeService.insert(code);
			}
	    	Map map = new HashMap();
	    	map.put("code", numberCode);
	    	List<Code> codes = codeService.selectParam(map);
	    	List<UserOne> users = new ArrayList<>();
	    	for (int j = 0; j < codes.size(); j++) {
				Code code2 = codes.get(j);
				UserOne userOne = userOneService.get(Integer.parseInt(code2.getCreator().toString()));
				users.add(userOne);
			}
	    	jsonResult.setDataObject(users);
	    	jsonResult.setErrorDescription("获取加入群聊的人成功");
	    	return jsonResult;
	    }
	    
	    /**
	     * 删除面对面建群加入群聊的人
	     * @param jsonString
	     * @return 是否发布成功
	     */
	    @RequestMapping(value = "/deleteCodeUser.do", method = {RequestMethod.POST,RequestMethod.GET})
	    public JsonResult deleteCodeUser(@RequestParam(value="id",required=false) Long id,
	    								 @RequestParam(value="number",required=false) String number){
	    	JsonResult jsonResult = new JsonResult<>();
	    	if (id == null) {
	    		jsonResult.setCode("1");
	    		jsonResult.setErrorDescription("用户id不能为空");
	    		return jsonResult;
	    	}
	    	if (number == null) {
	    		jsonResult.setCode("1");
	    		jsonResult.setErrorDescription("输入的数字不能为空");
	    		return jsonResult;
	    	}
	    	Map map = new HashMap<>();
	    	map.put("userid", id);
	    	codeService.deleteParam(map);
	    	Map map2 = new HashMap<>();
	    	map.put("number", number);
	    	List<ImGroup> groups = this.imGroupService.selectParam(map);
	    	groups.get(0).setNumber("");
	    	imGroupService.update(groups.get(0));
	    	jsonResult.setErrorDescription("删除面对面建群信息成功");
	    	return jsonResult;
	    }
	    
	    /**
		 * 创建面对面群聊
		 * @param jsonString
		 * @return 是否发布成功
		 */
	  @RequestMapping(value={"/faceTofaceAdd.do"}, method={RequestMethod.GET,RequestMethod.POST})
	  public JsonResult<ImGroupDTO> createFaceToFaceGroup(@RequestParam("JsonString") String jsonString,HttpServletRequest request){
	    JsonResult jsonResult = new JsonResult();
	    GroupParam groupParam = JsonUtils.getObject(jsonString, GroupParam.class);
	    if (groupParam.getId() == null) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("用户Id不能为空");
	      return jsonResult;
	    }
	    if (groupParam.getUserToInviteIds() == null) {
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("邀请好友集合不能为空");
	      return jsonResult;
	    }
	    if(groupParam.getCodeNumber()!=null){
	    	Map map = new HashMap<>();
	    	map.put("number", groupParam.getCodeNumber());
	    	List<ImGroup> groups = this.imGroupService.selectParam(map);
	    	if(groups.size()>0){
		    	jsonResult.setErrorDescription("创建面对面买家群成功!");
	    		jsonResult.setDataObject(groups.get(0));
	    		return jsonResult;
	    	}
	    }
	    JsonResult result = this.imGroupService.createGang(null,null,groupParam.getId(), groupParam.getUserToInviteIds(),request);
	    if (result.getCode().equals("1")) {
	      return result;
	    }
	    result.setErrorDescription("创建面对面买家群成功!");
	    return result;
	  }
	   
	  /**
	   * 获取我的帮派或堂口
	   *
	   * @param userId 用户id
	   * @return
	   */
	  @RequestMapping(value = "/getBangs.do", method ={RequestMethod.GET,RequestMethod.POST})
	  public JsonResult<ImUserGroupDTO> getBangs(@RequestParam("id") Long id,
			    							     @RequestParam("type") String type) {
		JsonResult jsonResult = new JsonResult<>();
		//<editor-fold desc="step1 : 校验入参>
		 if (id == null) {
		      jsonResult.setCode("1");
		      jsonResult.setErrorDescription("用户Id不能为空");
		      return jsonResult;
		 }
		 if (type == null) {
			 jsonResult.setCode("1");
			 jsonResult.setErrorDescription("类型不能为空");
			 return jsonResult;
		 }
		//<editor-fold >
		//<editor-fold desc="step1 : 加载群聊>
		Map map = new HashMap<>();
		map.put("userId", id);
		map.put("isbang", type);
	  	List<ImGroup> imGroups = imGroupService.selectParam(map);
	  	jsonResult.setDataObject(imGroups);
	  	jsonResult.setErrorDescription("加载群聊成功");
	  	//<editor-fold desc="step1 : 校验入参>
	    return jsonResult;
	  }
  
}