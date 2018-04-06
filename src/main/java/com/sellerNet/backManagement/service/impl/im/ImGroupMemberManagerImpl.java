package com.sellerNet.backManagement.service.impl.im;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.ImGroupMemberMapper;
import com.sellerNet.backManagement.dto.im.ImGroupMemberDTO;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.im.ImGroup;
import com.sellerNet.backManagement.entity.im.ImGroupGrade;
import com.sellerNet.backManagement.entity.im.ImGroupMember;
import com.sellerNet.backManagement.entity.im.ImGroupRole;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.im.ImGroupGradeService;
import com.sellerNet.backManagement.service.im.ImGroupMemberService;
import com.sellerNet.backManagement.service.impl.BaseServiceImpl;

@Service
public class ImGroupMemberManagerImpl extends BaseServiceImpl<ImGroupMember, Long> implements ImGroupMemberService{
	
	private static final Logger log = LoggerFactory.getLogger(ImGroupMemberManagerImpl.class);

	@Resource
	private ImGroupMemberMapper imGroupMemberMapper;

	@Resource
	private AppUserService appUserService;
	
	@Resource
	private AppUserOneService appUseroneService;

	@Resource
	private ImGroupGradeService imGroupGradeManager;

	public ImGroupMember getElseThrow(Long id){ 
		ImGroupMember member = this.imGroupMemberMapper.get(id);
		return member;
	}

	@SuppressWarnings("unchecked")
	public void deleteAllMembers(Long groupId, Long deletedBy, Date modifiedAt){
		@SuppressWarnings("rawtypes")
		Map map = new HashMap();
		map.put("groupId", groupId);
		map.put("deletedBy", deletedBy);
		map.put("modifiedAt", modifiedAt);
		this.imGroupMemberMapper.deleteAllMembers(map);
	}

	@SuppressWarnings("unused")
	public void addMemberToGroup(UserOne user, String role, Long creator, ImGroupGrade groupGrade){
		ImGroupMember old = findByUserIdAndGroupId((long)user.getUser_id(), groupGrade.getGroupId());

		ImGroupMember member = new ImGroupMember();
		member.setGroupId(groupGrade.getGroupId());
		member.setUserId((long)user.getUser_id());
		member.setRole(role);

		member.setGroupGradeId(groupGrade.getId());
		member.setNameInGroup(user.getUsername());
		member.setTitle(groupGrade.getName());
		this.imGroupMemberMapper.insert(member);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<ImGroupMemberDTO> addMemberToGroup(UserOne user, ImGroup created, List<Long> userToInviteIds){
		List members = new ArrayList();
		ImGroupGrade imGroupGrade = null;
		imGroupGrade = this.imGroupGradeManager.getGroupGrade(created.getId(), ImGroupGrade.GroupGrade.A);
		ImGroupMember memberA = new ImGroupMember();
		memberA.setGroupId(created.getId());
		memberA.setUserId((long)user.getUser_id());
		memberA.setRole(ImGroupRole.OWNER.name());

		memberA.setGroupGradeId(imGroupGrade.getId());
		memberA.setNameInGroup(user.getUsername());
		memberA.setTitle(imGroupGrade.getName());
		members.add(memberA);
		if(userToInviteIds != null){
			ImGroupGrade C = this.imGroupGradeManager.getGroupGrade(created.getId(), ImGroupGrade.GroupGrade.C);
			for(int i = 0; i < userToInviteIds.size(); i++){
				UserOne memeberUser = appUseroneService.get(Integer.parseInt(userToInviteIds.get(i).toString()));
				ImGroupMember memberC = new ImGroupMember();
				memberC.setGroupId(created.getId());
				memberC.setUserId((Long)userToInviteIds.get(i));
				memberC.setRole(ImGroupRole.USER.name());

				memberC.setGroupGradeId(C.getId());
				memberC.setNameInGroup(memeberUser.getUsername());
				memberC.setTitle(C.getName());
				members.add(memberC);
			}
		}
		this.imGroupMemberMapper.insertBatch(members);
		return this.imGroupMemberMapper.findAllMembers(created.getId());
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ImGroupMember findByUserIdAndGroupId(Long userId, Long groupId){
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("groupId", groupId);
		return this.imGroupMemberMapper.findByUserIdAndGroupId(map);
	}

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public ImGroupMember findDTOByUserIdAndGroupId(Long userId, Long groupId){
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("groupId", groupId);
		return this.imGroupMemberMapper.findDTOByUserIdAndGroupId(map);
	}

	public List<ImGroupMember> findAllAdminsDTO(Long groupId){
		return this.imGroupMemberMapper.findAllAdminsDTO(groupId);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<ImGroupMember> findMembersInBatch(Long groupId, List<Long> memberIds){
		Map map = new HashMap();
		map.put("memberIds", memberIds);
		map.put("groupId", groupId);
		return this.imGroupMemberMapper.findByGroupIdAndUserIdInAndIsDeletedFalse(map);
	}

	@Transactional
	public void updateInBatch(List<ImGroupMember> members){
		if(!CollectionUtils.isEmpty(members)){
			this.imGroupMemberMapper.updateBatch(members);
		}
	}

	public List<ImGroupMemberDTO> findAllMembersDTO(Long groupId){
		return this.imGroupMemberMapper.findAllMembers(groupId);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public ImGroupMemberDTO getGroupMemberDetail(Long groupId, Long userId){
		Map map = new HashMap();
		map.put("groupId", groupId);
		map.put("userId", userId);
		ImGroupMemberDTO memberDTO = this.imGroupMemberMapper.findGroupMemberDetail(map);
		return memberDTO;
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Transactional
	public void disableAllExcept(Long groupId, Long operator, List<Long> userIds){
		if(CollectionUtils.isEmpty(userIds)) return;
		Date modifiedAt = new Date();

		Map map = new HashMap();
		map.put("operator", operator);
		map.put("groupId", groupId);
		map.put("modifiedAt", modifiedAt);
		this.imGroupMemberMapper.banAll(map);

		Map map2 = new HashMap();
		map2.put("groupId", groupId);
		map2.put("userIds", userIds);
		map2.put("isEnabled", operator);
		map2.put("modifiedAt", modifiedAt);
		userIds.add(operator);
		this.imGroupMemberMapper.updateEnableStatusInBatch(map2);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void changeUserGrade(Long operatorId, Long userId, Long groupId, Long groupGradeId){
		ImGroupMember operator = findDTOByUserIdAndGroupId(operatorId, groupId);
		if (operator == null) {
			log.error("Operator not found, id={}, groupId={}", operatorId, groupId);
		}

		log.info(String.format("Operator id=%s, role=%s", new Object[] { operatorId, operator.getRole() }));

		if ((!ImGroupRole.isAdmin(operator.getRole())) && (!ImGroupRole.isOwner(operator.getRole()))) {
			log.error("Operator role is {}", operator.getRole());
		}

		ImGroupGrade grade = (ImGroupGrade)this.imGroupGradeManager.get(groupGradeId);
		Map map = new HashMap();
		map.put("userId", userId);
		map.put("groupId", groupId);
		ImGroupMember member = this.imGroupMemberMapper.findByUserIdAndGroupId(map);
		if(member == null) {
			throw new RuntimeException("用户还不是门派成员");
		}
		if(!grade.getGroupId().equals(groupId)){
			throw new RuntimeException("门派等级不存在");
		}
		member.setGroupGradeId(grade.getId());
		this.imGroupMemberMapper.update(member);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void changeUserTitle(Long operatorId, Long userId, Long groupId, String title){
		if (StringUtils.isBlank(title)){
			throw new IllegalArgumentException("用户等级名称不能为空");
		}
		ImGroupMember operator = findDTOByUserIdAndGroupId(operatorId, groupId);
		if(operator == null) {
			log.error("Operator not found, id={}, groupId={}", operatorId, groupId);
		}

		log.info(String.format("Operator id=%s, role=%s", new Object[] { operatorId, operator.getRole() }));

		if((!ImGroupRole.isAdmin(operator.getRole())) && (!ImGroupRole.isOwner(operator.getRole()))){
			log.error("Operator role is {}", operator.getRole());
		}

		Map map = new HashMap();
		map.put("userId", userId);
		map.put("groupId", groupId);
		ImGroupMember member = this.imGroupMemberMapper.findByUserIdAndGroupId(map);
		if (member == null){
			throw new RuntimeException("用户还不是门派成员");
		}
		member.setTitle(title);
		this.imGroupMemberMapper.update(member);
	}

	protected BaseDao<ImGroupMember, Long> getDao(){
		return this.imGroupMemberMapper;
	}

	public List<ImGroupMember> getGroupByTitle(String title){
		return this.imGroupMemberMapper.getGroupByTitle(title);
	}

	@Override
	public int deleteMember(Long id) {
		return imGroupMemberMapper.deleteMember(id);
	}

	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Override
	public List<ImGroupMember> findByGroupIdAndRole(Long groupId, String role) {
		Map map = new HashMap<>();
		map.put("groupId", groupId);
		map.put("role", role);
		return imGroupMemberMapper.findByGroupIdAndRole(map);
	}
}