package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.im.ImGroupGrade;
import java.util.List;
import java.util.Map;

public abstract interface ImGroupGradeMapper extends BaseDao<ImGroupGrade, Long>
{
  public abstract List<ImGroupGrade> findByGroupId(Long paramLong);

  public abstract int deleteAllGrades(Map paramMap);

  public abstract ImGroupGrade getGroupGrade(Map paramMap);
}