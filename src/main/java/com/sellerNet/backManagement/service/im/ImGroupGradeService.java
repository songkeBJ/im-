package com.sellerNet.backManagement.service.im;

import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.im.ImGroupGrade;
import com.sellerNet.backManagement.entity.im.ImGroupGrade.GroupGrade;
import com.sellerNet.backManagement.service.baseService;
import java.util.Date;
import java.util.List;

public abstract interface ImGroupGradeService extends baseService<ImGroupGrade, Long>
{
  public abstract List<ImGroupGrade> findByImGroupId(Long paramLong);

  public abstract void deleteAllGrades(Long paramLong1, Long paramLong2, Date paramDate);

  public abstract JsonResult addDefaultGradesForGroup(Long paramLong1, Long paramLong2);

  public abstract void modify(Long paramLong1, Long paramLong2, String paramString);

  public abstract ImGroupGrade getGroupGrade(Long paramLong, ImGroupGrade.GroupGrade paramGroupGrade);
}