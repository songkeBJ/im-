package com.sellerNet.backManagement.entity.im;

import com.sellerNet.backManagement.entity.BasePojo;
import java.util.Date;

public class ImGroupGrade extends BasePojo
{
  private static final long serialVersionUID = -745538432338979699L;
  private String grade;
  private Long groupId;
  private String name;
  private Integer orderBy;

  public ImGroupGrade()
  {
  }

  public ImGroupGrade(Long id, Date createdTime, String name, String grade, Long groupId, Integer orderBy)
  {
    setId(id);
    setCreatedTime(createdTime);
    setName(name);
    this.grade = grade;
    this.groupId = groupId;
    this.orderBy = orderBy;
  }

  public String getGrade() {
    return this.grade;
  }

  public void setGrade(String grade) {
    this.grade = grade;
  }

  public Long getGroupId() {
    return this.groupId;
  }

  public void setGroupId(Long groupId) {
    this.groupId = groupId;
  }

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public Integer getOrderBy() {
    return this.orderBy;
  }

  public void setOrderBy(Integer orderBy) {
    this.orderBy = orderBy;
  }

  public static enum GroupGrade
  {
    A, B, C
  }

  public static enum TongGrade
  {
    C, D;
  }
}