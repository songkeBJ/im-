package com.sellerNet.backManagement.dao.impl.im;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.ImGroupMemberMapper;
import com.sellerNet.backManagement.dao.impl.BaseDaoImpl;
import com.sellerNet.backManagement.dto.im.ImGroupMemberDTO;
import com.sellerNet.backManagement.entity.im.ImGroupMember;

@Repository
public class ImGroupMemberMapperImpl extends BaseDaoImpl<ImGroupMember, Long> implements ImGroupMemberMapper {
  
	public static final String SQLID_FINDBYGROUPIDANDUSERIDINANDISDELETEDFALSE = "findByGroupIdAndUserIdInAndIsDeletedFalse";
	public static final String SQLID_DELETEALLMEMBERS = "deleteAllMembers";
	public static final String SQLID_BANALL = "banAll";
	public static final String SQLID_UPDATEENABLESTATUSINBATCH = "updateEnableStatusInBatch";
	public static final String SQLID_FINDDTOBYUSERIDANDGROUPID = "findDTOByUserIdAndGroupId";
	public static final String SQLID_FINDBYUSERIDANDGROUPID = "findByUserIdAndGroupId";
	public static final String SQLID_FINDALLADMINSDTO = "findAllAdminsDTO";
	public static final String SQLID_FINDALLMEMBERS = "findAllMembers";
	public static final String SQLID_FINDGROUPMEMBERDETAIL = "findGroupMemberDetail";
	public static final String SQLID_GETGROUPBYTITLEL = "getGroupByTitle";
	public static final String SQLID_DELETEMEMBERL = "deleteMember";
	public static final String SQLID_FINDBYGROUPIDANDROLE = "findByGroupIdAndRole";

	public ImGroupMemberMapperImpl(){
		this.namespace = getClass().getName();
	}

	public List<ImGroupMember> findByGroupIdAndUserIdInAndIsDeletedFalse(Map param){
		try{
			return getSqlSession().selectList(getClass().getName() + "." + "findByGroupIdAndUserIdInAndIsDeletedFalse", param);
		}catch (Exception e) {
			e.printStackTrace();
		}return null;
	}

	public int deleteAllMembers(Map param){
		int rows = 0;
		try{
			rows = getSqlSession().delete(this.namespace + "." + "deleteAllMembers", param);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return rows;
	}

	public int banAll(Map param){
		int rows = 0;
		try{
			rows = getSqlSession().delete(this.namespace + "." + "banAll", param);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return rows;
	}

	public int updateEnableStatusInBatch(Map param){
		int rows = 0;
		try{
			rows = getSqlSession().update(this.namespace + "." + "updateEnableStatusInBatch", param);
		}catch (Exception e){
			e.printStackTrace();
		}
		return rows;
	}

	public ImGroupMember findDTOByUserIdAndGroupId(Map param){
		try{
			return (ImGroupMember)getSqlSession().selectOne(this.namespace + "." + "findDTOByUserIdAndGroupId", param);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ImGroupMember findByUserIdAndGroupId(Map param){
		try{
			return (ImGroupMember)getSqlSession().selectOne(this.namespace + "." + "findByUserIdAndGroupId", param);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<ImGroupMember> findAllAdminsDTO(Long groupId){
		try{
			return getSqlSession().selectList(getClass().getName() + "." + "findAllAdminsDTO", groupId);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<ImGroupMemberDTO> findAllMembers(Long groupId){
		try{
			return getSqlSession().selectList(getClass().getName() + "." + "findAllMembers", groupId);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public ImGroupMemberDTO findGroupMemberDetail(Map param){
		try{
			return (ImGroupMemberDTO)getSqlSession().selectOne(getClass().getName() + "." + "findGroupMemberDetail", param);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	public List<ImGroupMember> getGroupByTitle(String title){
		try{
			return getSqlSession().selectList(getClass().getName() + "." + "getGroupByTitle", title);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public int deleteMember(Long id){
		int rows = 0;
		try{
			rows = getSqlSession().update(this.namespace + "." + SQLID_DELETEMEMBERL, id);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return rows;
	}

	@Override
	public List<ImGroupMember> findByGroupIdAndRole(Map map) {
		try{
			return getSqlSession().selectList(getClass().getName() + "." + SQLID_FINDBYGROUPIDANDROLE, map);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}