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

import com.sellerNet.backManagement.dao.AuthMapper;
import com.sellerNet.backManagement.dao.AuthPhoneMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;

@Repository
public class AuthMapperImpl extends SqlSessionDaoSupport
  implements AuthMapper
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


@Override
public PagingResult getUserList(PageEntity pageEntity) {
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

	      List resultList = getSqlSession().selectList(this.namespace + "." + "getUserList", param, rowBounds);
	     // int totalSize = count(pageEntity.getParams());

	      PagingResult pagingResult = new PagingResult();
	      pagingResult.setCurrentPage(page);
	      pagingResult.setTotalSize(resultList.size());
	      pagingResult.setResultList(resultList);
	      return pagingResult;
	    }
	    catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}

@Override
public PagingResult getGroupList(PageEntity pageEntity) {
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

      List resultList = getSqlSession().selectList(this.namespace + "." + "getGroupList", param, rowBounds);
     // int totalSize = count(pageEntity.getParams());

      PagingResult pagingResult = new PagingResult();
      pagingResult.setCurrentPage(page);
      pagingResult.setTotalSize(resultList.size());
      pagingResult.setResultList(resultList);
      return pagingResult;
    }
    catch (Exception e) {
      e.printStackTrace();
    }return null;
}

}