package com.sellerNet.backManagement.service.impl.im;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import jersey.repackaged.com.google.common.collect.Lists;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import com.sellerNet.backManagement.dao.ImGroupGradeMapper;
import com.sellerNet.backManagement.dao.impl.BaseDaoImpl;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.im.ImGroupGrade;
import com.sellerNet.backManagement.entity.im.ImGroupMember;
import com.sellerNet.backManagement.entity.im.ImGroupRole;
import com.sellerNet.backManagement.service.MessageService;
import com.sellerNet.backManagement.service.im.ImGroupGradeService;
import com.sellerNet.backManagement.service.im.ImGroupMemberService;

@Service
public class ImGroupGradeServiceImpl extends BaseDaoImpl<ImGroupGrade, Long> implements ImGroupGradeService{

  @Resource
  private ImGroupGradeMapper imGroupGradeMapper;

  @Resource
  private MessageService messageService;

  @Resource
  private ImGroupMemberService imGroupMemberManager;

  public List<ImGroupGrade> findByImGroupId(Long groupId)
  {
    return this.imGroupGradeMapper.findByGroupId(groupId);
  }

  public void deleteAllGrades(Long groupId, Long deletedBy, Date modifiedAt)
  {
    Map map = new HashMap();
    map.put("groupId", groupId);
    map.put("deletedBy", deletedBy);
    map.put("modifiedAt", modifiedAt);
    this.imGroupGradeMapper.deleteAllGrades(map);
  }

  public JsonResult addDefaultGradesForGroup(Long groupId, Long creator)
  {
    JsonResult jsonResult = new JsonResult();
    List exist = findByImGroupId(groupId);
    if (!CollectionUtils.isEmpty(exist)) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("帮派等级已经存在");
      return jsonResult;
    }
    List groupGrades = Lists.newArrayList();
    int order = 0;
    for (ImGroupGrade.GroupGrade grade : ImGroupGrade.GroupGrade.values()) {
      ImGroupGrade groupGrade = new ImGroupGrade();
      groupGrade.preCreate(creator);
      groupGrade.setGroupId(groupId);
      groupGrade.setOrderBy(Integer.valueOf(order++));
      groupGrade.setGrade(grade.name());
      groupGrade.setName(this.messageService.getText(String.format("im.group.grade.%s.name", new Object[] { grade.name().toLowerCase() })));
      groupGrades.add(groupGrade);
    }
    addInBatch(groupGrades);
    return jsonResult;
  }

  public void modify(Long id, Long userId, String name)
  {
    ImGroupGrade grade = (ImGroupGrade)this.imGroupGradeMapper.get(id);
    ImGroupMember user = this.imGroupMemberManager.findDTOByUserIdAndGroupId(userId, grade.getGroupId());
    if (user != null) ImGroupRole.isAdmin(user.getRole());

    grade.setName(name);
    this.imGroupGradeMapper.update(grade);
  }

  public ImGroupGrade getGroupGrade(Long groupId, ImGroupGrade.GroupGrade grade)
  {
    if (grade == null) {
      throw new IllegalArgumentException("群等级不能为空");
    }
    Map map = new HashMap();
    map.put("groupId", groupId);
    map.put("grade", grade.name());
    return this.imGroupGradeMapper.getGroupGrade(map);
  }

  @Transactional
  private void addInBatch(List<ImGroupGrade> grades) {
    this.imGroupGradeMapper.insertBatch(grades);
  }
}