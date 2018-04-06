package com.sellerNet.backManagement.service.im;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.im.ImGroupMemberDTO;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.im.ImGroup;
import com.sellerNet.backManagement.entity.im.ImGroupGrade;
import com.sellerNet.backManagement.entity.im.ImGroupMember;
import com.sellerNet.backManagement.service.baseService;

public abstract interface ImGroupMemberService extends baseService<ImGroupMember, Long>{
	
	public abstract void deleteAllMembers(Long paramLong1, Long paramLong2, Date paramDate);

	public abstract void addMemberToGroup(UserOne paramUser, String paramString, Long paramLong, ImGroupGrade paramImGroupGrade);

	public abstract List<ImGroupMemberDTO> addMemberToGroup(UserOne paramUser, ImGroup paramImGroup, List<Long> paramList);

	/**
	 * 根据用户Id和群组Id查询该组成员信息
	* @param userId
 	* @param groupId
 	* @return
 	*/
	public abstract ImGroupMember findByUserIdAndGroupId(Long userId, Long groupId);

	public abstract ImGroupMember findDTOByUserIdAndGroupId(Long paramLong1, Long paramLong2);

	public abstract List<ImGroupMember> findAllAdminsDTO(Long paramLong);

	public abstract List<ImGroupMember> findMembersInBatch(Long paramLong, List<Long> paramList);

	public abstract void updateInBatch(List<ImGroupMember> paramList);

	/**
	 * 根据群组Id获取所有的群组成员
	 * @param groupId ：群组ID
	 * @return
	 */
	public abstract List<ImGroupMemberDTO> findAllMembersDTO(Long groupId);

	public abstract ImGroupMemberDTO getGroupMemberDetail(Long paramLong1, Long paramLong2);

	public abstract void disableAllExcept(Long paramLong1, Long paramLong2, List<Long> paramList);

	public abstract void changeUserGrade(Long paramLong1, Long paramLong2, Long paramLong3, Long paramLong4);

	public abstract void changeUserTitle(Long paramLong1, Long paramLong2, Long paramLong3, String paramString);

	public abstract List<ImGroupMember> getGroupByTitle(String paramString);
  
	public abstract int deleteMember(Long id);
	
	/**
	 * 根据群组id和角色名称获取群组成员列表
	 * @param groupId : 群组ID
	 * @param role    : 用户角色
	 * @return
	 */
	public List<ImGroupMember> findByGroupIdAndRole(Long groupId,String role);
}