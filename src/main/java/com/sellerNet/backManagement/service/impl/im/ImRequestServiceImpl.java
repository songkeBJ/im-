package com.sellerNet.backManagement.service.impl.im;

import com.google.gson.JsonObject;
import com.sellerNet.backManagement.dao.AppUserOneMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.ImRequestMapper;
import com.sellerNet.backManagement.dto.im.ImRequestDTO;
import com.sellerNet.backManagement.dto.im.ImRequestDTO.ImRequestDTOType;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.SysOrder;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.im.ImFriend;
import com.sellerNet.backManagement.entity.im.ImGroup;
import com.sellerNet.backManagement.entity.im.ImGroupGrade;
import com.sellerNet.backManagement.entity.im.ImGroupGrade.GroupGrade;
import com.sellerNet.backManagement.entity.im.ImGroupMember;
import com.sellerNet.backManagement.entity.im.ImGroupRole;
import com.sellerNet.backManagement.entity.im.ImNews;
import com.sellerNet.backManagement.entity.im.ImRequest;
import com.sellerNet.backManagement.entity.im.ImRequest.ImRequestBuilder;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.entity.im.ImRequestOperation;
import com.sellerNet.backManagement.entity.im.ImRequestStatus;
import com.sellerNet.backManagement.entity.im.ImRequestType;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.service.SysOrderService;
import com.sellerNet.backManagement.service.im.ImFriendService;
import com.sellerNet.backManagement.service.im.ImGroupGradeService;
import com.sellerNet.backManagement.service.im.ImGroupMemberService;
import com.sellerNet.backManagement.service.im.ImGroupService;
import com.sellerNet.backManagement.service.im.ImRequestService;
import com.sellerNet.backManagement.service.impl.BaseServiceImpl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import jersey.repackaged.com.google.common.collect.Lists;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

@Service
public class ImRequestServiceImpl extends BaseServiceImpl<ImRequest, Long>
  implements ImRequestService
{
  private static final Logger LOGGER = LoggerFactory.getLogger(ImRequestServiceImpl.class);

  @Resource
  private ImRequestMapper imRequestMapper;

  @Resource
  private AppUserService userService;
  
  @Resource
  private AppUserOneService useroneService;

  @Resource
  private ImFriendService imFriendService;

  @Resource
  private ImGroupService imGroupService;

  @Resource
  private ImGroupMemberService imGroupMemberManager;

  @Resource
  private ImGroupGradeService imGroupGradeManager;
  
  @Resource
private RechargeRecordService rechargeRecordService;
	
	@Resource
	private  SysOrderService sysOrderService;
	
  @Transactional
  public JsonResult applyFriend(Long userId, Long friendId, String message,String status,Integer sayHelloPay,String remark,String lableName)
  {
    JsonResult jsonResult = new JsonResult();
    if ((StringUtils.isNotBlank(message)) && (message.length() > 63)) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("附加信息不能超过32个字");
      return jsonResult;
    }
    UserOne friend = this.useroneService.get(Integer.parseInt(friendId.toString()));
    if (friend.getUser_id()==Integer.parseInt(userId.toString())) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("不能添加自己为好友");
      return jsonResult;
    }

    ImFriend exist = this.imFriendService.findByUserIdAndFriendId(userId, friendId);

    if (exist != null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("已经是好友不能重复添加!");
      return jsonResult;
    }

    Map map = new HashMap();
    map.put("targetId", friendId);
    map.put("userId", userId);
    List receivedRequests = this.imRequestMapper.findAcceptedOrNoHandledFriendRequest(map);
    if (!CollectionUtils.isEmpty(receivedRequests)) {
      ImRequest receivedRequest = (ImRequest)receivedRequests.get(0);
      String log = "user {} request has been canceled, cause user {} ";
      if (ImRequestStatus.ACCEPTED.name().equals(receivedRequest.getStatus())) {
        log = log + "has accepted friend request from {} ";
      } else {
        log = log + "has a not handled request from {}";
        receivedRequest.setStatus(ImRequestStatus.NOT_HANDLED.name());
        receivedRequest.preModified(userId);
        this.imRequestMapper.update(receivedRequest);
//        this.imFriendService.addFriendIfNotFriend(friendId, userId);
      }
      LOGGER.info(log, new Object[] { userId, userId, friendId });
//      this.imFriendService.addFriendIfNotFriend(userId, friendId);
    }

    Map map2 = new HashMap();
    map2.put("userId", userId);
    map2.put("targetId", friendId);
    map2.put("requestType", ImRequestType.FRIEND_APPLY.name());
    map2.put("modifier", userId);
    map2.put("modifiedAt", new Date());
    this.imRequestMapper.clearHistoryRequests(map2);

    ImRequest request = ImRequest.getBuilder((long)friend.getUser_id(), (long)friend.getUser_id(), ImRequestType.FRIEND_APPLY.name()).addCreator(userId)
      .addMessage(StringUtils.trimToEmpty(message)).addFriendsGroupId(null).build();
    //添加remark和lableName
    request.setRemark(remark);
    request.setLableName(lableName);
    if(sayHelloPay!=null){
    	request.setPay(friend.getAddPay().toString());
    	if(friend.getAddPay()!=null){
			RechargeRecord rechargeRecord = new RechargeRecord();
			rechargeRecord.setUserId(Integer.parseInt(userId.toString()));
			rechargeRecord.setAmount(friend.getAddPay().toString());
			rechargeRecord.setCreatedTime(new Date());
			rechargeRecord.setActive("1");
			rechargeRecordService.insert(rechargeRecord);
	   }
    }
    if(status !=null){
    	request.setStatus(status);
    }
    this.imRequestMapper.insert(request);
    return jsonResult;
  }

  public JsonResult handleFriendRequest(Long userId, Long requestId, String action, String passAndAdd, Long friendsGroupId)
  {
    JsonResult jsonResult = new JsonResult();
    ImRequestOperation operation = ImRequestOperation.fromString(action);
    ImRequest request = (ImRequest)this.imRequestMapper.get(requestId);
    if (request == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("该请求不存在!");
      return jsonResult;
    }

//    if (!ImRequestStatus.NOT_HANDLED.name().equals(request.getStatus())) {
//      jsonResult.setCode("1");
//      jsonResult.setErrorDescription("改请求已经处理过了!");
//      return jsonResult;
//    }

    if ((request.getAuditedBy() != null) && 
      (!request.getAuditedBy().equals(userId))) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("您不是被添加的对象不能处理该请求!");
      return jsonResult;
    }
    
    if (request.getStatus().equals("EXPIRED")) {
    	      jsonResult.setCode("1");
    	      jsonResult.setErrorDescription("请求已过期！");
    	      return jsonResult;
    }

    UserOne sender = useroneService.get(Integer.parseInt(request.getCreator().toString()));
    UserOne receiver = useroneService.get(Integer.parseInt(userId.toString()));

    doHandleRequest(passAndAdd, friendsGroupId, operation, request, sender, receiver);
    return jsonResult;
  }

  public List<ImRequestDTO> findAll(Long userId, Integer page)
  {
    int start = 15 * (page.intValue() - 1);
    Map map = new HashMap();
    map.put("creator", userId);
    map.put("start",Integer.valueOf(start));
    map.put("end", 15);
    List<ImRequestDTO> list = this.imRequestMapper.findAllRequests(map);
    for (ImRequestDTO item : list) {
      if (item.getUserId().equals(userId))
      {
        item.setType(ImRequestDTO.ImRequestDTOType.SENT.name());
        item.setUserId(item.getAuditedBy());
        item.setNickname(useroneService.get(Integer.parseInt(item.getAuditedBy().toString())).getUsername());
        item.setAvatar(useroneService.get(Integer.parseInt(item.getAuditedBy().toString())).getAvator());
      }
      else {
        item.setType(ImRequestDTO.ImRequestDTOType.RECEIVED.name());
      }
      if (ImRequestType.GROUP_APPLY.name().equals(item.getType()))
      {
        if ((!item.getUserId().equals(userId)) && (!userId.equals(item.getAuditedBy())) && 
          (!ImRequestStatus.NOT_HANDLED.name().equals(item.getStatus()))) {
          if (ImRequestStatus.ACCEPTED.name().equals(item.getStatus()))
            item.setStatus(ImRequestStatus.OTHER_ADMIN_ACCEPTED.name());
          else if (ImRequestStatus.REJECTED.name().equals(item.getStatus())) {
            item.setStatus(ImRequestStatus.OTHER_ADMIN_REJECTED.name());
          }
        }
      }
    }
    return list;
  }

  public void applyJoinGroup(Long userId, Long groupId, String message)
  {
    User user = (User)this.userService.get(userId);

    ImGroupMember member = this.imGroupMemberManager.findDTOByUserIdAndGroupId(userId, groupId);

    ImGroup group = (ImGroup)this.imGroupService.get(groupId);
    List<ImGroupMember> admins = this.imGroupMemberManager.findAllAdminsDTO(group.getId());

    String msg = StringUtils.trimToEmpty(message);

    List receivers = Lists.newArrayList();
    for (ImGroupMember admin : admins) {
      receivers.add(admin.getImNumber());
    }

    ImRequest request = ImRequest.getBuilder(group.getId(), null, ImRequestType.GROUP_APPLY.name())
      .addMessage(msg).addCreator(user.getId()).build();
    request.setGroupId(groupId);

    ImRequest createdReq = addInBatch(request, userId, groupId);
  }

  public void handleGroupRequest(Long adminId, Long userId, Long groupId, String action)
  {
    ImRequestOperation operation = ImRequestOperation.fromString(action);

    Map map = new HashMap();
    map.put("userId", userId);
    map.put("groupId", groupId);
    List requests = this.imRequestMapper.findNotHandledGroupRequests(map);

    ImGroupMember self = this.imGroupMemberManager.findDTOByUserIdAndGroupId(adminId, groupId);

    ImGroup group = (ImGroup)this.imGroupService.get(groupId);

    UserOne user = useroneService.get(Integer.parseInt(userId.toString()));
    ImGroupGrade groupGrade = this.imGroupGradeManager.getGroupGrade(groupId, ImGroupGrade.GroupGrade.C);

    handleInBatch(requests, adminId, user, group, groupGrade, operation);
  }

  public void inviteJoinGroup(Long userId, Long userToInviteId, Long groupId)
  {
    ImGroupMember self = this.imGroupMemberManager.findDTOByUserIdAndGroupId(userId, groupId);

    ImGroupMember member = this.imGroupMemberManager.findDTOByUserIdAndGroupId(userToInviteId, groupId);

    ImGroup group = (ImGroup)this.imGroupService.get(groupId);

    ImRequest request = ImRequest.getBuilder(userToInviteId, userToInviteId, ImRequestType.GROUP_INVITE.name())
      .build();
    request.setGroupId(groupId);
    this.imRequestMapper.insert(request);
    ImRequest created = (ImRequest)this.imRequestMapper.get(request.getId());

    UserOne sender = useroneService.get(Integer.parseInt(userId.toString()));
    UserOne receiver = useroneService.get(Integer.parseInt(userId.toString()));
  }

  public void invitesJoinGroup(Long userId, List<Long> userToInviteIds, Long groupId)
  {
    ImGroupMember self = this.imGroupMemberManager.findDTOByUserIdAndGroupId(userId, groupId);

    ImGroup group = (ImGroup)this.imGroupService.get(groupId);

    List requests = new ArrayList();
    for (int i = 0; i < userToInviteIds.size(); i++) {
      ImRequest request = ImRequest.getBuilder((Long)userToInviteIds.get(i), (Long)userToInviteIds.get(i), ImRequestType.GROUP_INVITE.name()).build();
      request.setGroupId(groupId);
      requests.add(request);
    }
    this.imRequestMapper.insertBatch(requests);

    UserOne sender = useroneService.get(Integer.parseInt(userId.toString()));
    List receivers = new ArrayList();

    List requestIds = new ArrayList();
    for (int i = 0; i < requests.size(); i++)
      requestIds.add(((ImRequest)requests.get(i)).getId());
  }

  public void handleInviteRequest(Long userId, Long requestId, String action)
  {
    LOGGER.info("handleInviteRequest User {} request id {} action {}", new Object[] { userId, requestId, action });
    ImRequest request = (ImRequest)get(requestId);
    if (!ImRequestStatus.NOT_HANDLED.name().equals(request.getStatus())) {
      throw new RuntimeException("请求已经被处理");
    }
    UserOne user =useroneService.get(Integer.parseInt(userId.toString()));
    ImRequestOperation operation = ImRequestOperation.fromString(action);

    switch (operation) {
    case ACCEPT:
      request.setStatus(ImRequestStatus.ACCEPTED.name());

      ImGroup group = (ImGroup)this.imGroupService.get(request.getGroupId());
      ImGroupGrade groupGrade = this.imGroupGradeManager.getGroupGrade(request.getGroupId(), 
        ImGroupGrade.GroupGrade.C);

      this.imGroupMemberManager.addMemberToGroup(user, ImGroupRole.USER.name(), userId, groupGrade);

      group.setMemberCount(group.getMemberCount() + 1);
      this.imGroupService.update(group);

      break;
    case REJECT:
      request.setStatus(ImRequestStatus.REJECTED.name());
    }

    this.imRequestMapper.update(request);
  }

  public void handleGroupApplyRequest(Long operator, Long requestId, String action)
  {
    ImRequestOperation operation = ImRequestOperation.fromString(action);

    ImRequest request = (ImRequest)this.imRequestMapper.get(requestId);
    if ((request == null) || (!ImRequestType.GROUP_APPLY.name().equalsIgnoreCase(request.getRequestType()))) {
      throw new IllegalArgumentException("请求不存在或已删除");
    }
    if (!ImRequestStatus.NOT_HANDLED.name().equalsIgnoreCase(request.getStatus())) {
      throw new IllegalArgumentException("请求已经处理");
    }

    ImGroupMember self = this.imGroupMemberManager.findDTOByUserIdAndGroupId(operator, request.getGroupId());

    ImGroupMember member = this.imGroupMemberManager.findDTOByUserIdAndGroupId(request.getCreator(), 
      request.getGroupId());

    ImGroup group = (ImGroup)this.imGroupService.get(request.getGroupId());

    UserOne user = useroneService.get(Integer.parseInt(request.getCreator().toString()));

//    ImNews imNews = new ImNews();
//
//    this.imNewsMapper.insert(imNews);

    if (ImRequestOperation.ACCEPT == operation)
    {
      request.setStatus(ImRequestStatus.ACCEPTED.name());
      ImGroupGrade groupGrade = this.imGroupGradeManager.getGroupGrade(request.getGroupId(), 
        ImGroupGrade.GroupGrade.C);
      this.imGroupMemberManager.addMemberToGroup(user, ImGroupRole.USER.name(), operator, groupGrade);

      group.setMemberCount(group.getMemberCount() + 1);
      this.imGroupService.update(group);
    }
    else if (ImRequestOperation.REJECT == operation) {
      request.setStatus(ImRequestStatus.REJECTED.name());
    }

    request.setAuditedBy(operator);
    this.imRequestMapper.update(request);
  }

  private ImRequest getElseThrow(Long id, String code)
  {
    ImRequest request = (ImRequest)this.imRequestMapper.get(id);

    return request;
  }

  @Transactional
  private JsonResult doHandleRequest(String passAndAdd, Long friendsGroupId, ImRequestOperation operation, ImRequest request, UserOne sender, UserOne receiver)
  {
    JsonResult jsonResult = new JsonResult();
    String remark = request.getRemark();
	String lableName = request.getLableName();
	jsonResult.setErrorDescription("添加好友成功");
    JsonResult json2 = this.imFriendService.addFriendIfNotFriend(Long.valueOf(sender.getUser_id()), Long.valueOf(receiver.getUser_id()),remark,lableName);
	  if (json2.equals("1")) {
	    return json2;
	  }
	  if (passAndAdd.equals("true")) {
	    JsonResult json3 = this.imFriendService.addFriendIfNotFriend(Long.valueOf(receiver.getUser_id()), Long.valueOf(sender.getUser_id()),remark,lableName);
	    if (json2.equals("1")) {
	      return json2;
	    }
	  }
    jsonResult.setErrorDescription("好友处理成功!");
    this.imRequestMapper.update(request);
    
    return jsonResult;
  }

  @Transactional
  private void handleInBatch(List<ImRequest> requests, Long adminId, UserOne user, ImGroup group, ImGroupGrade groupGrade, ImRequestOperation operation)
  {
    for (ImRequest request : requests) {
      updateStatus(request, adminId, operation);
      request.preModified(adminId);
    }
    this.imRequestMapper.insertBatch(requests);
    if (ImRequestOperation.ACCEPT == operation)
    {
      this.imGroupMemberManager.addMemberToGroup(user, ImGroupRole.USER.name(), adminId, groupGrade);

      group.setMemberCount(group.getMemberCount() + 1);
      this.imGroupService.update(group);
    }
  }

  private void updateStatus(ImRequest request, Long adminId, ImRequestOperation operation) {
    switch (operation)
    {
    case ACCEPT:
      request.setStatus(isAuditedBySelf(request, adminId) ? 
        ImRequestStatus.ACCEPTED.name() : 
        ImRequestStatus.OTHER_ADMIN_ACCEPTED.name());
      break;
    case REJECT:
      request.setStatus(isAuditedBySelf(request, adminId) ? 
        ImRequestStatus.REJECTED.name() : 
        ImRequestStatus.OTHER_ADMIN_REJECTED.name());
    }
  }

  private boolean isAuditedBySelf(ImRequest request, Long adminId)
  {
    return (request.getAuditedBy() != null) && (request.getAuditedBy().equals(adminId));
  }

  @Transactional
  public ImRequest addInBatch(ImRequest request, Long userId, Long groupId) {
    Map map = new HashMap();
    map.put("userId", userId);
    map.put("targetId", groupId);
    map.put("requestType", ImRequestType.GROUP_APPLY.name());
    map.put("modifier", userId);
    map.put("modifiedAt", new Date());
    this.imRequestMapper.clearHistoryRequests(map);

    this.imRequestMapper.insert(request);
    return (ImRequest)this.imRequestMapper.get(request.getId());
  }

  protected BaseDao<ImRequest, Long> getDao() {
    return this.imRequestMapper;
  }

@Override
public List<ImRequest> findAcceptedOrNoHandledFriendRequest(Map map) {
	return this.imRequestMapper.findAcceptedOrNoHandledFriendRequest(map);
}

@Override
public JsonResult handleFriendRequest(Long id, Long requestId) {
	JsonResult json =new JsonResult<>();
	 UserOne sender = useroneService.get(Integer.parseInt(id.toString()));
	 UserOne receiver = useroneService.get(Integer.parseInt(requestId.toString()));
	 if(sender==null){
		 json.setErrorDescription("用户不存在");
		 return json;
	 }
	 if(receiver==null){
		 json.setErrorDescription("用户不存在");
		 return json;
	 }else{
	 }
	    Map map2 = new HashMap();
	    map2.put("userId", sender.getUser_id());
	    map2.put("targetId", receiver.getUser_id());
	    map2.put("requestType", ImRequestType.FRIEND_APPLY.name());
	    map2.put("modifier", sender.getUser_id());
	    map2.put("modifiedAt", new Date());
	    this.imRequestMapper.clearHistoryRequests(map2);
	    
	    Map map = new HashMap();
	    map.put("creator", sender.getUser_id());
	    map.put("targetId",receiver.getUser_id());
	    map.put("isLocked", 0);
	    //过期退还加好友金额
	  List<ImRequest> list =  imRequestMapper.selectParam(map);
	  for (ImRequest imRequest : list) {
		  sender.setBalance(sender.getBalance().add(new BigDecimal(imRequest.getPay())));
		  useroneService.update(sender);
			RechargeRecord rechargeRecord = new RechargeRecord();
			rechargeRecord.setUserId(sender.getUser_id());
			rechargeRecord.setAmount(imRequest.getPay());
			rechargeRecord.setOrderId("");
			rechargeRecord.setCreatedTime(new Date());
			rechargeRecord.setActive("18");
			rechargeRecordService.insert(rechargeRecord);
		  
		  imRequest.setIsLocked(true);
		  imRequestMapper.update(imRequest);
	  }
	    
	 //生成一条请求记录
	   ImRequest request = ImRequest.getBuilder(requestId, requestId, ImRequestType.FRIEND_APPLY.name()).addCreator(id)
			      .addMessage(StringUtils.trimToEmpty("诚意金添加好友")).addFriendsGroupId(null).build();
	   request.setPay(receiver.getAddPay().toString());
	   if(receiver.getAddPay()!=null){
			RechargeRecord rechargeRecord = new RechargeRecord();
			rechargeRecord.setUserId(Integer.parseInt(id.toString()));
			rechargeRecord.setAmount(receiver.getAddPay().toString());
			rechargeRecord.setCreatedTime(new Date());
			rechargeRecord.setActive("1");
			rechargeRecordService.insert(rechargeRecord);
	   }
	   request.setStatus("PAY_ADD");
	    imRequestMapper.insert(request);
	    
	return json;
}

@Override
public Integer countAllAdd(Map map) {
	 return imRequestMapper.countAllAdd(map);
}

@Override
public Integer delHistoryRequests(Map map2) {
	 return imRequestMapper.delHistoryRequests(map2);
}

@Override
public String countBydis(Map map) {
	return imRequestMapper.countBydis(map);
}

@Override
public List<ImRequest> selHistoryRequests(Map map) {
	return imRequestMapper.selHistoryRequests(map);
}

@Override
public List<ImRequestDTO> findSayHello(Long userId, Integer page) {
	  int start = 15 * (page.intValue() - 1);
	    Map map = new HashMap();
	    map.put("creator", userId);
	    map.put("start",Integer.valueOf(start));
	    map.put("end", 15);
	    List<ImRequestDTO> list = this.imRequestMapper.SayHelloRequests(map);
	    for (ImRequestDTO item : list) {
	      if (item.getUserId().equals(userId))
	      {
	        item.setType(ImRequestDTO.ImRequestDTOType.SENT.name());
	        item.setUserId(item.getAuditedBy());
	        item.setNickname(useroneService.get(Integer.parseInt(item.getAuditedBy().toString())).getUsername());
	        item.setAvatar(useroneService.get(Integer.parseInt(item.getAuditedBy().toString())).getAvator());
	      }
	      else {
	        item.setType(ImRequestDTO.ImRequestDTOType.RECEIVED.name());
	      }
	      if (ImRequestType.GROUP_APPLY.name().equals(item.getType()))
	      {
	        if ((!item.getUserId().equals(userId)) && (!userId.equals(item.getAuditedBy())) && 
	          (!ImRequestStatus.NOT_HANDLED.name().equals(item.getStatus()))) {
	          if (ImRequestStatus.ACCEPTED.name().equals(item.getStatus()))
	            item.setStatus(ImRequestStatus.OTHER_ADMIN_ACCEPTED.name());
	          else if (ImRequestStatus.REJECTED.name().equals(item.getStatus())) {
	            item.setStatus(ImRequestStatus.OTHER_ADMIN_REJECTED.name());
	          }
	        }
	      }
	    }
	    return list;
}

@Override
public List<ImRequest> findOutTimeAccept() {
	return imRequestMapper.findOutTimeAccept();
}
}