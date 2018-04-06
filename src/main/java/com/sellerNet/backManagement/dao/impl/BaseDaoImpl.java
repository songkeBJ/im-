package com.sellerNet.backManagement.dao.impl;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.mapping.BoundSql;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.session.Configuration;
import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;

@Repository("baseDao")
public class BaseDaoImpl<T, PK extends Serializable> extends SqlSessionDaoSupport
  implements BaseDao<T, PK>
{
  public String namespace;
  public static final String SQLID_INSERT = "insert";
  public static final String SQLID_INSERT_BATCH = "insertBatch";
  public static final String SQLID_UPDATE = "update";
  public static final String SQLID_UPDATE_PARAM = "updateParam";
  public static final String SQLID_UPDATE_BATCH = "updateBatch";
  public static final String SQLID_DELETE = "delete";
  public static final String SQLID_DELETE_PARAM = "deleteParam";
  public static final String SQLID_DELETE_BATCH = "deleteBatch";
  public static final String SQLID_TRUNCATE = "truncate";
  public static final String SQLID_SELECT = "select";
  public static final String SQLID_SELECT_PK = "selectPk";
  public static final String SQLID_SELECT_PARAM = "selectParam";
  public static final String SQLID_SELECT_FK = "selectFk";
  public static final String SQLID_COUNT = "count";
  public static final String SQLID_COUNT_PARAM = "countParam";

  @Resource(name="sqlSessionTemplate")
  public void setSuperSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate)
  {
    super.setSqlSessionTemplate(sqlSessionTemplate);
  }

  public String getNamespace() {
    return this.namespace;
  }

  public void setNamespace(String namespace) {
    this.namespace = namespace;
  }

  public int insert(T entity)
  {
    int rows = 0;
    try {
      rows = getSqlSession().insert(this.namespace + "." + "insert", 
        entity);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public int update(T entity)
  {
    int rows = 0;
    try {
      rows = getSqlSession().update(this.namespace + "." + "update", 
        entity);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public int updateParam(Map param)
  {
    int rows = 0;
    try {
      rows = getSqlSession().update(this.namespace + "." + "updateParam", 
        param);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public int delete(PK primaryKey)
  {
    int rows = 0;
    try {
      rows = getSqlSession().delete(this.namespace + "." + "delete", 
        primaryKey);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public int deleteParam(Map param)
  {
    int rows = 0;
    try {
      rows = getSqlSession().delete(this.namespace + "." + "deleteParam", 
        param);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public int truncate()
  {
    int rows = 0;
    try {
      rows = getSqlSession().delete(this.namespace + "." + "truncate");
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public int count()
  {
    int result = 0;
    try {
      result = ((Integer)getSqlSession().selectOne(this.namespace + "." + "count")).intValue();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return result;
  }

  public int count(Object param)
  {
    int result = 0;
    try {
      result = ((Integer)getSqlSession().selectOne(this.namespace + "." + "countParam", param)).intValue();
    } catch (Exception e) {
      e.printStackTrace();
    }
    return result;
  }

  public T get(PK primaryKey)
  {
    try {
      return getSqlSession().selectOne(this.namespace + "." + "selectPk", primaryKey);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<T> select()
  {
    try
    {
      return getSqlSession().selectList(this.namespace + "." + "select");
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<T> selectParam(Map param)
  {
    try
    {
      return getSqlSession().selectList(this.namespace + "." + "selectParam", param);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public PagingResult<T> selectPagination(PageEntity pageEntity)
  {
    try
    {
      int page = (pageEntity.getPage() == null) || ("".equals(pageEntity.getPage())) ? 1 : pageEntity.getPage().intValue();
      int size = (pageEntity.getSize() == null) || ("".equals(pageEntity.getSize())) ? 15 : pageEntity.getSize().intValue();

      RowBounds rowBounds = new RowBounds((page - 1) * size, size);

      Map param = pageEntity.getParams();
      if (param != null) {
        param.put("orderColumn", pageEntity.getOrderColumn());
        param.put("orderTurn", pageEntity.getOrderTurn());
      } else {
        param = new HashMap();
        param.put("orderColumn", pageEntity.getOrderColumn());
        param.put("orderTurn", pageEntity.getOrderTurn());
      }

      List resultList = getSqlSession().selectList(this.namespace + "." + "selectParam", param, rowBounds);
      int totalSize = count(pageEntity.getParams());

      PagingResult pagingResult = new PagingResult();
      pagingResult.setCurrentPage(page);
      pagingResult.setTotalSize(totalSize);
      pagingResult.setResultList(resultList);
      return pagingResult;
    }
    catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public int insertBatch(List<T> list)
  {
    try
    {
      return getSqlSession().insert(this.namespace + "." + "insertBatch", list);
    } catch (Exception e) {
      e.printStackTrace();
    }return 0;
  }

  public int updateBatch(List<T> list)
  {
    int rows = 0;
    try {
      for (Object t : list)
        rows += getSqlSession().update(this.namespace + "." + "update", t);
    }
    catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public int deleteBatch(List<PK> list)
  {
    try
    {
      return getSqlSession().delete(this.namespace + "." + "deleteBatch", list);
    } catch (Exception e) {
      e.printStackTrace();
    }return 0;
  }

  public void printLog(String sqlId, Object param)
  {
    Configuration configuration = getSqlSession().getConfiguration();

    MappedStatement mappedStatement = configuration.getMappedStatement(sqlId);

    BoundSql boundSql = mappedStatement.getBoundSql(param);

    String sql = boundSql.getSql().trim();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    System.out.println("info-sql: " + sdf.format(new Date()) + "  " + sql);
  }
}