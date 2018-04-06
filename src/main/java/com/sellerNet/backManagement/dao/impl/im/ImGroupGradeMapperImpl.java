package com.sellerNet.backManagement.dao.impl.im;

import com.sellerNet.backManagement.dao.ImGroupGradeMapper;
import com.sellerNet.backManagement.dao.impl.BaseDaoImpl;
import com.sellerNet.backManagement.entity.im.ImGroupGrade;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ImGroupGradeMapperImpl extends BaseDaoImpl<ImGroupGrade, Long>
  implements ImGroupGradeMapper
{
  public static final String SQLID_FINDBYGROUPID = "findByGroupId";
  public static final String SQLID_DELETEALLGRADES = "deleteAllGrades";
  public static final String SQLID_GETGROUPGRADE = "getGroupGrade";

  public ImGroupGradeMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public List<ImGroupGrade> findByGroupId(Long groupId)
  {
    try {
      return getSqlSession().selectList(getClass().getName() + "." + "findByGroupId", groupId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public int deleteAllGrades(Map param)
  {
    int rows = 0;
    try {
      rows = getSqlSession().update(this.namespace + "." + "deleteAllGrades", 
        param);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public ImGroupGrade getGroupGrade(Map param)
  {
    try
    {
      return (ImGroupGrade)getSqlSession().selectOne(getClass().getName() + "." + "getGroupGrade", param);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }
}