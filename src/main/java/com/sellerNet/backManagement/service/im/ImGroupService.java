package com.sellerNet.backManagement.service.im;

import com.sellerNet.backManagement.dto.im.ImGroupDTO;
import com.sellerNet.backManagement.dto.im.ImGroupDetailDTO;
import com.sellerNet.backManagement.dto.im.ImUserGroupDTO;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.im.ImGroup;
import com.sellerNet.backManagement.service.baseService;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public abstract interface ImGroupService extends baseService<ImGroup, Long>
{
  public abstract List<ImUserGroupDTO> findUserGroups(Long paramLong);

  public abstract ImGroup findGroupByUserId(Long paramLong);

  public abstract ImGroupDetailDTO findGroupByChatGroupId(String paramString);

  public abstract JsonResult banGroup(Long paramLong1, Long paramLong2, boolean paramBoolean);

  public abstract JsonResult dismiss(Long paramLong1, Long paramLong2);

  public abstract JsonResult<ImGroupDTO> createGang(String groupName,String codeNumber,Long paramLong, List<Long> paramList,HttpServletRequest request);

  public abstract ImGroupDTO ScanToGroup(Long paramLong1, Long paramLong2);

  public abstract ImGroupDTO invitesToJoinGroupBatch(List<Long> paramList, Long paramLong);

  public abstract ImGroupDTO deleteUsersFromGroupBatch(List<Long> paramList, Long paramLong);

  public abstract void quit(Long paramLong1, Long paramLong2);

  public abstract JsonResult transfer(Long paramLong1, Long paramLong2, Long paramLong3);

  public abstract void addAdminInBatch(Long paramLong1, Long paramLong2, Long paramLong3);

  public abstract void removeAdmin(Long paramLong1, Long paramLong2, Long paramLong3);

  public abstract ImGroup findGroupByImNumber(String paramString);

  public abstract void removeMember(Long paramLong1, Long paramLong2, Long paramLong3);

  public abstract ImGroupDetailDTO getGroupDetail(Long paramLong);

  public abstract void disableInBatch(Long paramLong1, Long paramLong2, String paramString);

  public abstract void enableInBatch(Long paramLong1, Long paramLong2, String paramString);

  public abstract List<ImUserGroupDTO> search(String paramString);
}