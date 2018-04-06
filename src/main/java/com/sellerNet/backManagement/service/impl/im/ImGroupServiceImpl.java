package com.sellerNet.backManagement.service.impl.im;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.ImGroupMapper;
import com.sellerNet.backManagement.dto.im.ImGroupDTO;
import com.sellerNet.backManagement.dto.im.ImGroupDetailDTO;
import com.sellerNet.backManagement.dto.im.ImGroupMemberDTO;
import com.sellerNet.backManagement.dto.im.ImUserGroupDTO;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.im.ImGroup;
import com.sellerNet.backManagement.entity.im.ImGroupGrade;
import com.sellerNet.backManagement.entity.im.ImGroupMember;
import com.sellerNet.backManagement.entity.im.ImGroupRole;
import com.sellerNet.backManagement.entity.im.ImGroupStatus;
import com.sellerNet.backManagement.entity.im.ImNews;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.im.ImGroupGradeService;
import com.sellerNet.backManagement.service.im.ImGroupMemberService;
import com.sellerNet.backManagement.service.im.ImGroupService;
import com.sellerNet.backManagement.service.impl.BaseServiceImpl;
import com.sellerNet.backManagement.utils.Constant;
import com.sellerNet.backManagement.utils.JsonUtils;
import com.sellerNet.backManagement.utils.NumberUtil;
import com.sellerNet.backManagement.utils.QRCodeCommon;

@Service
public class ImGroupServiceImpl extends BaseServiceImpl<ImGroup, Long>implements ImGroupService{
  private static final Logger LOGGER = LoggerFactory.getLogger(ImGroupServiceImpl.class);
  private static final int DEFAULT_CAPACITY = 500;
  private File uploadPath;
  @Resource
  private ImGroupMapper imGroupMapper;

  @Resource
  private ImGroupMemberService imGroupMemberManager;

  @Resource
  private ImGroupGradeService imGroupGradeManager;

  @Resource
  private Groupemplate groupemplate;

  @Resource
  private AppUserService appUserService;
  
  @Resource
  private AppUserOneService appUseroneService;
  
  @Resource
  private ImGroupMemberService imGroupMemberService;

  public List<ImUserGroupDTO> findUserGroups(Long userId)
  {
	List<ImUserGroupDTO> imUserGroupDTOs = this.imGroupMapper.findUserGroupsDTO(userId);
    for(int i =0;i<imUserGroupDTOs.size();i++){
    	ImUserGroupDTO imUserGroupDTO = imUserGroupDTOs.get(i);
    	List<ImGroupMemberDTO> imGroupMemberDTOs = imGroupMemberManager.findAllMembersDTO(imUserGroupDTO.getId());
    	List<String> urls = new ArrayList<>();
    	for (int j = 0; j < imGroupMemberDTOs.size();j++) {
    		if(j<6 && j<imGroupMemberDTOs.size()){
    			if(imGroupMemberDTOs.get(j).getAvatar()!=null){
    				urls.add(imGroupMemberDTOs.get(j).getAvatar());
    			}
    			
    		}
		}
    	imUserGroupDTO.setImages(urls);
    }
	return imUserGroupDTOs;
  }

  public JsonResult banGroup(Long userId, Long groupId, boolean isBan){
	JsonResult jsonResult = new JsonResult<>();
    ImGroup group = (ImGroup)this.imGroupMapper.get(groupId);
    JsonResult jsonResult2 = assertIsAdmin(userId, groupId);
    if(jsonResult2.getCode().equals("1")){
    	return jsonResult2;
    }
    group.setStatus(isBan ? ImGroupStatus.BANNED.name() : ImGroupStatus.ACTIVE.name());
    this.imGroupMapper.update(group);
    return jsonResult;
  }

  public JsonResult dismiss(Long userId, Long groupId){
    JsonResult jsonResult = assertIsOwner(userId, groupId);
    if(jsonResult.getCode().equals("1")){
    	 return jsonResult;
    }
    ImGroup group = (ImGroup)this.imGroupMapper.get(groupId);
    group.setStatus(ImGroupStatus.DISMISSED.name());
    this.imGroupMapper.update(group);

    Date modifiedAt = new Date();

    this.imGroupMemberManager.deleteAllMembers(groupId, userId, modifiedAt);
    this.imGroupGradeManager.deleteAllGrades(groupId, userId, modifiedAt);
    return jsonResult;
  }

  public JsonResult<ImGroupDTO> createGang(String groupName,String codeNumber,Long userId, List<Long> userToInviteIds,HttpServletRequest request)
  {
    JsonResult jsonResult = new JsonResult();
    UserOne user = appUseroneService.get(Integer.parseInt(userId.toString()));
    ImGroup imGroup = new ImGroup();
    if (userToInviteIds == null)
      imGroup.setMemberCount(imGroup.getMemberCount() + 1);
    else {
      imGroup.setMemberCount(imGroup.getMemberCount() + userToInviteIds.size() + 1);
    }
    imGroup.setCapacity(500);
    if(groupName!=null){
    	imGroup.setName(groupName);
    }else {
    	imGroup.setName("未命名");
	}
    imGroup.setIntroduction("未设置");
    imGroup.preCreate(userId);
    imGroup.setIsbang(codeNumber);
    imGroup.setGroupNumber(NumberUtil.generateNextGroupNumber(this.imGroupMapper.findMaxGroupNumber()));

    String chatGroupId = this.groupemplate.createGroup("未设置", user.getPhoneNumber());
    imGroup.setChatGroupId(chatGroupId);
    imGroup.setDisplayName("1");
    imGroup.setMessageNo("1");
    imGroup.setTopmessage("0");
    imGroup.setSaveMail("1");
    jsonResult.setDataObject(doCreateGang(user, imGroup,userToInviteIds,request));;
    return jsonResult;
  }

  @SuppressWarnings("unchecked")
@Transactional
  public ImGroupDTO doCreateGang(UserOne user, ImGroup imGroup, List<Long> userToInviteIds,HttpServletRequest request){
	//创建群组二维码结束
	this.imGroupMapper.insert(imGroup);
	ImGroup created = (ImGroup)this.imGroupMapper.get(imGroup.getId());
	//创建群组二维码开始
    Map map = new HashMap();
    map.put("type","groupType");
    map.put("groupId", imGroup.getId());
    String jsonString = JsonUtils.toJson(map);
    //在系统启动的时候，就开始初始化，在初始化时，检查上传图片的文件夹和存放临时文件的文件夹是否存在，如果不存在，就创建
    //获取根目录对应的真实物理路径  
    uploadPath = new File(request.getSession().getServletContext().getRealPath("images"));
    System.out.println("uploadPath=====" + uploadPath);  
    //如果目录不存在  
    if (!uploadPath.exists()) {  
        //创建目录  
        uploadPath.mkdir();  
    }  
    String timestr = String.valueOf(new Date().getTime());
    QRCodeCommon.createQRCode(jsonString, uploadPath.toString()+"/"+timestr+".png");
    created.setQrcode("images/"+timestr+".png");
    imGroupMapper.update(created);
    this.imGroupGradeManager.addDefaultGradesForGroup(created.getId(), (long)user.getUser_id());
    List members = new ArrayList();
    for (int i = 0; i < userToInviteIds.size(); i++) {
      members.add(appUseroneService.get(Integer.parseInt(userToInviteIds.get(i).toString())).getPhoneNumber());
    }
    this.groupemplate.InviteJoinGroup(imGroup.getChatGroupId(), members, imGroup.getName(), user.getPhoneNumber());
    List imGroupMemberDTOs = this.imGroupMemberManager.addMemberToGroup(user, imGroup, userToInviteIds);
    ImGroupDTO createdGroup = new ImGroupDTO();
    createdGroup.setAvatar(imGroup.getAvatar());
    createdGroup.setCapacity(imGroup.getCapacity());
    createdGroup.setChatGroupId(imGroup.getChatGroupId());
    createdGroup.setGroupNumber(imGroup.getGroupNumber());
    createdGroup.setIntroduction(imGroup.getIntroduction());
    createdGroup.setMemberCount(imGroup.getMemberCount());
    createdGroup.setName(imGroup.getName());
    createdGroup.setStatus(imGroup.getStatus());
    createdGroup.setImGroupMembers(imGroupMemberDTOs);
    return createdGroup;
  }

  public void quit(Long userId, Long groupId)
  {
    ImGroupMember member = this.imGroupMemberManager.findDTOByUserIdAndGroupId(userId, groupId);

    doQuit((ImGroup)this.imGroupMapper.get(groupId), member.getId(), userId);
    ImGroup group = (ImGroup)this.imGroupMapper.get(groupId);
  }

  public JsonResult transfer(Long userId, Long groupId, Long transferTo){
	JsonResult jsonResult = new JsonResult<>();
    ImGroupMember owner = this.imGroupMemberManager.findByUserIdAndGroupId(userId, groupId);
    if (owner != null){
    	if(ImGroupRole.isOwner(owner.getRole())==false){
    		jsonResult.setCode(Constant.RESUT_FAIL);
    		jsonResult.setErrorDescription("不是群组不能转让");
    		return jsonResult;
    	}
    } 

    ImGroupMember transferToUser = this.imGroupMemberManager.findByUserIdAndGroupId(transferTo, groupId);

    ImGroupGrade gradeA = this.imGroupGradeManager.getGroupGrade(groupId, ImGroupGrade.GroupGrade.A);
    ImGroupGrade gradeB = this.imGroupGradeManager.getGroupGrade(groupId, ImGroupGrade.GroupGrade.B);
    doTransfer(owner, transferToUser, gradeA, gradeB);
    return jsonResult;
  }

  public void addAdminInBatch(Long ownerId, Long groupId, Long userId)
  {
    List admin = this.imGroupMemberManager.findAllAdminsDTO(groupId);
    admin.size();

    ImGroupMember owner = this.imGroupMemberManager.findDTOByUserIdAndGroupId(ownerId, groupId);

    if (owner != null) ImGroupRole.OWNER.name().equals(owner.getRole());

    ImGroupMember member = this.imGroupMemberManager.findByUserIdAndGroupId(userId, groupId);

    ImGroupGrade imGroupGrade = this.imGroupGradeManager.getGroupGrade(groupId, ImGroupGrade.GroupGrade.B);
    member.setGroupGradeId(imGroupGrade.getId());
    member.setRole(ImGroupRole.ADMIN.name());
    member.preModified(ownerId);
    member.setTitle("副帮主");
    this.imGroupMemberManager.update(member);
  }

  public void removeAdmin(Long ownerId, Long groupId, Long adminId)
  {
    assertIsOwner(ownerId, groupId);
    ImGroupMember member = this.imGroupMemberManager.findByUserIdAndGroupId(adminId, groupId);
    member.setRole(ImGroupRole.USER.name());
    member.preModified(ownerId);
    member.setTitle("平民");
    ImGroupGrade imGroupGrade = this.imGroupGradeManager.getGroupGrade(groupId, ImGroupGrade.GroupGrade.C);
    member.setGroupGradeId(imGroupGrade.getId());
    this.imGroupMemberManager.update(member);
  }

  public ImGroup findGroupByImNumber(String groupNumber)
  {
    return this.imGroupMapper.findByGroupNumberAndIsDeletedFalse(groupNumber);
  }

  public void removeMember(Long adminId, Long userId, Long groupId)
  {
    assertIsAdmin(adminId, groupId);
    ImGroupMember member = this.imGroupMemberManager.findDTOByUserIdAndGroupId(adminId, groupId);

    this.imGroupMemberManager.delete(member.getId());
    ImGroup group = (ImGroup)this.imGroupMapper.get(groupId);
  }

  public ImGroupDetailDTO getGroupDetail(Long id)
  {
    ImGroup imGroup = (ImGroup)this.imGroupMapper.get(id);
    ImGroupDetailDTO detailDTO = new ImGroupDetailDTO(imGroup);
    detailDTO.setMembers(this.imGroupMemberManager.findAllMembersDTO(id));
    return detailDTO;
  }

  public void disableInBatch(Long userId, Long groupId, String memberIds)
  {
    assertIsAdmin(userId, groupId);
  }

  public void enableInBatch(Long userId, Long groupId, String memberIds)
  {
    assertIsAdmin(userId, groupId);
  }

  public List<ImUserGroupDTO> search(String terms)
  {
    return null;
  }

  protected BaseDao<ImGroup, Long> getDao()
  {
    return this.imGroupMapper;
  }

  private JsonResult assertIsAdmin(Long userId, Long groupId) {
    ImGroupMember member = this.imGroupMemberManager.findDTOByUserIdAndGroupId(userId, groupId);
    JsonResult jsonResult = new JsonResult<>();
    if(member==null){
		jsonResult.setCode(Constant.RESUT_FAIL);
		jsonResult.setErrorDescription("不是群成员");
		return jsonResult;
    }
    if (member != null){
    	if(ImGroupRole.isAdmin(member.getRole())==false){
    		jsonResult.setCode(Constant.RESUT_FAIL);
    		jsonResult.setErrorDescription("不是群管理员不能进行此操作");
    		return jsonResult;
    	}
    }
    return jsonResult;
  }

  private JsonResult assertIsOwner(Long userId, Long groupId){
	JsonResult jsonResult = new JsonResult<>();
    ImGroupMember member = this.imGroupMemberManager.findDTOByUserIdAndGroupId(userId, groupId);
    if(member==null){
		jsonResult.setCode(Constant.RESUT_FAIL);
		jsonResult.setErrorDescription("不是群成员");
		return jsonResult;
    }
    if (member != null){
    	if(ImGroupRole.isOwner(member.getRole())==false){
    		jsonResult.setCode(Constant.RESUT_FAIL);
    		jsonResult.setErrorDescription("不是群主不能解散群");
    	}
    }
    
    return jsonResult;
  }

  @Transactional
  public ImGroup doCreateGroup(UserOne user, ImGroup imGroup, Long parentId)
  {
    this.imGroupMapper.insert(imGroup);
    ImGroup created = (ImGroup)this.imGroupMapper.get(imGroup.getId());

    this.imGroupGradeManager.addDefaultGradesForGroup(created.getId(), (long)user.getUser_id());

    ImGroupGrade groupGrade = this.imGroupGradeManager.getGroupGrade(created.getId(), ImGroupGrade.GroupGrade.A);
    this.imGroupMemberManager.addMemberToGroup(user, ImGroupRole.OWNER.name(), (long)user.getUser_id(), groupGrade);
    return created;
  }

  @Transactional
  private void doQuit(ImGroup group, Long memberId, Long userId) {
    group.setMemberCount(group.getMemberCount() - 1);
    this.imGroupMemberManager.deleteMember(memberId);
    this.imGroupMapper.update(group);
  }

  @Transactional
  private void doTransfer(ImGroupMember owner, ImGroupMember member, ImGroupGrade gradeA, ImGroupGrade gradeB)
  {
    owner.setRole(ImGroupRole.USER.name());
    member.setRole(ImGroupRole.OWNER.name());
    owner.setGroupGradeId(gradeA.getId());
    member.setGroupGradeId(gradeB.getId());
    this.imGroupMemberManager.update(owner);
    this.imGroupMemberManager.update(member);
  }

  @Transactional
  public ImGroupDTO ScanToGroup(Long userId, Long groupId)
  {
    UserOne user = appUseroneService.get(Integer.parseInt(userId.toString()));
    
    ImGroup group = (ImGroup)this.imGroupMapper.get(groupId);

    ImGroupGrade groupGrade = this.imGroupGradeManager.getGroupGrade(groupId, ImGroupGrade.GroupGrade.C);

    this.imGroupMemberManager.addMemberToGroup(user, ImGroupRole.USER.name(), null, groupGrade);

    group.setMemberCount(group.getMemberCount() + 1);
    this.imGroupMapper.update(group);
    //同步到容联
    List members2 = new ArrayList();
    members2.add(user.getPhoneNumber());
    this.groupemplate.InviteJoinGroup(group.getChatGroupId(), members2,group.getName(), appUseroneService.get(Integer.parseInt(group.getCreator().toString())).getPhoneNumber());
    return findAllMembers(group);
  }

  @Transactional
  public ImGroupDTO invitesToJoinGroupBatch(List<Long> userToInviteIds, Long groupId)
  {
    ImGroup group = (ImGroup)this.imGroupMapper.get(groupId);

    List members = new ArrayList();
    List members2 = new ArrayList();
    List imNumbers = new ArrayList();
    if (userToInviteIds != null) {
      ImGroupGrade D = this.imGroupGradeManager.getGroupGrade(groupId, ImGroupGrade.GroupGrade.C);
      for (int i = 0; i < userToInviteIds.size(); i++) {
        UserOne memeberUser = this.appUseroneService.get(Integer.parseInt(userToInviteIds.get(i).toString()));
        members2.add(memeberUser.getPhoneNumber());
        //判断是否已经存在该成员
        ImGroupMember existIG = imGroupMemberManager.findDTOByUserIdAndGroupId(userToInviteIds.get(i), groupId);
        if(existIG!=null){
        	continue;
        }
        ImGroupMember memberD = new ImGroupMember();
        memberD.setGroupId(groupId);
        memberD.setUserId((Long)userToInviteIds.get(i));
        memberD.setRole(ImGroupRole.USER.name());

        memberD.setGroupGradeId(D.getId());
        memberD.setNameInGroup(memeberUser.getUsername());
        memberD.setTitle(D.getName());
        members.add(memberD);
      }
      this.groupemplate.InviteJoinGroup(group.getChatGroupId(), members2,group.getName(), appUseroneService.get(Integer.parseInt(group.getCreator().toString())).getPhoneNumber());
    }
    this.imGroupMemberManager.insertBatch(members);

    group.setMemberCount(group.getMemberCount() + members.size());

    this.imGroupMapper.update(group);

    return findAllMembers(group);
  }

  @Transactional
  public ImGroupDTO deleteUsersFromGroupBatch(List<Long> userToInviteIds, Long groupId)
  {
    ImGroup group = (ImGroup)this.imGroupMapper.get(groupId);

    List members = new ArrayList();
    List imNumbers = new ArrayList();
    if (userToInviteIds != null) {
      ImGroupGrade D = this.imGroupGradeManager.getGroupGrade(groupId, ImGroupGrade.GroupGrade.C);
      for (int i = 0; i < userToInviteIds.size(); i++) {
        UserOne memeberUser = appUseroneService.get(Integer.parseInt(userToInviteIds.get(i).toString()));
        ImGroupMember memberD = new ImGroupMember();
        memberD.setGroupId(groupId);
        memberD.setUserId((Long)userToInviteIds.get(i));
        memberD.setRole(ImGroupRole.USER.name());

        memberD.setGroupGradeId(D.getId());
        memberD.setNameInGroup(memeberUser.getUsername());
        memberD.setTitle(D.getName());
        members.add(memberD);
      }

    }

    this.imGroupMemberManager.deleteBatch(userToInviteIds);

    group.setMemberCount(group.getMemberCount() - members.size());

    this.imGroupMapper.update(group);

    return findAllMembers(group);
  }

  private ImGroupDTO findAllMembers(ImGroup group)
  {
    ImGroupDTO createdGroup = new ImGroupDTO();
    createdGroup.setAvatar(group.getAvatar());
    createdGroup.setCapacity(group.getCapacity());
    createdGroup.setChatGroupId(group.getChatGroupId());
    createdGroup.setGroupNumber(group.getGroupNumber());
    createdGroup.setIntroduction(group.getIntroduction());
    createdGroup.setMemberCount(group.getMemberCount());
    createdGroup.setName(group.getName());
    createdGroup.setStatus(group.getStatus());
    createdGroup.setImGroupMembers(this.imGroupMemberManager.findAllMembersDTO(group.getId()));
    return createdGroup;
  }

  public ImGroup findGroupByUserId(Long userId)
  {
    return this.imGroupMapper.findGroupByUserId(userId);
  }

  public ImGroupDetailDTO findGroupByChatGroupId(String chatGroupId)
  {
    ImGroup imGroup = this.imGroupMapper.findGroupByChatGroupId(chatGroupId);
    ImGroupDetailDTO detailDTO = new ImGroupDetailDTO(imGroup);
    detailDTO.setMembers(this.imGroupMemberManager.findAllMembersDTO(imGroup.getId()));
    return detailDTO;
  }
}