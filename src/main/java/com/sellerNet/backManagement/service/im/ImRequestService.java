package com.sellerNet.backManagement.service.im;

import com.sellerNet.backManagement.dto.im.ImRequestDTO;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.im.ImRequest;
import com.sellerNet.backManagement.service.baseService;

import java.util.List;
import java.util.Map;

public abstract interface ImRequestService extends baseService<ImRequest, Long>
{
  public abstract JsonResult applyFriend(Long paramLong1, Long paramLong2, String paramString,String status, Integer sayHelloPay,String remark,String lableName);

  public abstract JsonResult handleFriendRequest(Long paramLong1, Long paramLong2, String paramString1, String paramString2, Long paramLong3);

  public abstract List<ImRequestDTO> findAll(Long paramLong, Integer paramInteger);

  public abstract void applyJoinGroup(Long paramLong1, Long paramLong2, String paramString);

  public abstract void handleGroupRequest(Long paramLong1, Long paramLong2, Long paramLong3, String paramString);

  public abstract void inviteJoinGroup(Long paramLong1, Long paramLong2, Long paramLong3);

  public abstract void invitesJoinGroup(Long paramLong1, List<Long> paramList, Long paramLong2);

  public abstract void handleInviteRequest(Long paramLong1, Long paramLong2, String paramString);

  public abstract void handleGroupApplyRequest(Long paramLong1, Long paramLong2, String paramString);
  
  public abstract List<ImRequest> findAcceptedOrNoHandledFriendRequest(Map map);

public abstract JsonResult handleFriendRequest(Long id, Long requestId);

public abstract Integer countAllAdd(Map map);

public abstract Integer delHistoryRequests(Map map2);

public abstract String countBydis(Map map);

public abstract List<ImRequest> selHistoryRequests(Map map);

public abstract List<ImRequestDTO> findSayHello(Long id, Integer parseInt);

public abstract List<ImRequest> findOutTimeAccept();
}