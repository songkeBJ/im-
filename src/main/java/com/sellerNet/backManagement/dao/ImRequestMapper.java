package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.dto.im.ImRequestDTO;
import com.sellerNet.backManagement.entity.im.ImRequest;
import java.util.List;
import java.util.Map;

public abstract interface ImRequestMapper extends BaseDao<ImRequest, Long>
{
  public abstract List<ImRequestDTO> findAllRequests(Map paramMap);

  public abstract List<ImRequest> findNotHandledGroupRequests(Map paramMap);

  public abstract int clearHistoryRequests(Map paramMap);
  
  public abstract int delHistoryRequests(Map paramMap);

  public abstract List<ImRequest> findAcceptedOrNoHandledFriendRequest(Map paramMap);

public abstract Integer countAllAdd(Map map);

public abstract String countBydis(Map map);

public abstract List<ImRequest> selHistoryRequests(Map map);

public abstract List<ImRequestDTO> SayHelloRequests(Map map);

public abstract List<ImRequest> findOutTimeAccept();
}