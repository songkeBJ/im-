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

import com.sellerNet.backManagement.dao.AuthPhoneMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;

@Repository
public class AuthPhoneMapperImpl<T, PK extends Serializable> extends SqlSessionDaoSupport
  implements AuthPhoneMapper<T, Serializable>
{
  public String namespace=getClass().getName();

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

  public int insert(Map map)
  {
    int rows = 0;
    try {
      rows = getSqlSession().insert(this.namespace + "." + "insert", 
    		  map);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }

  public int update(Map map)
  {
    int rows = 0;
    try {
      rows = getSqlSession().update(this.namespace + "." + "update", 
    		  map);
    } catch (Exception e) {
      e.printStackTrace();
    }
    return rows;
  }
  public Map get(Map map)
  {
	  Map selectOne =null;
	  try {
		   selectOne = getSqlSession().selectOne(this.namespace + "." + "selectPk", 
				  map);
	  } catch (Exception e) {
		  e.printStackTrace();
	  }
	  return selectOne;
  }

}