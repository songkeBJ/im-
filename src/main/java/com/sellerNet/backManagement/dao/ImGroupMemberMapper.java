package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.dto.im.ImGroupMemberDTO;
import com.sellerNet.backManagement.entity.im.ImGroupMember;
import java.util.List;
import java.util.Map;

/**
 * 群组成员Mapper
 * @author root
 *
 */
public abstract interface ImGroupMemberMapper extends BaseDao<ImGroupMember, Long>{
	
	public abstract List<ImGroupMember> findByGroupIdAndUserIdInAndIsDeletedFalse(Map paramMap);

	public abstract int deleteAllMembers(Map paramMap);

	public abstract int banAll(Map paramMap);

	public abstract int updateEnableStatusInBatch(Map paramMap);

	public abstract ImGroupMember findDTOByUserIdAndGroupId(Map paramMap);

	public abstract ImGroupMember findByUserIdAndGroupId(Map paramMap);

	public abstract List<ImGroupMember> findAllAdminsDTO(Long paramLong);

	public abstract List<ImGroupMemberDTO> findAllMembers(Long paramLong);

	public abstract ImGroupMemberDTO findGroupMemberDetail(Map paramMap);

	public abstract List<ImGroupMember> getGroupByTitle(String paramString);
  
	public abstract int deleteMember(Long id);
	
	/**
	 * 根据群组ID和角色名称获取群组成员列表
	 * @param map
	 * @return
	 */
	public abstract List<ImGroupMember> findByGroupIdAndRole(Map map);
  
  
}