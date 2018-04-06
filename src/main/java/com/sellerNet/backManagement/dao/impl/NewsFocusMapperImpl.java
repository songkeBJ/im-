package com.sellerNet.backManagement.dao.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.NewsFocusMapper;
import com.sellerNet.backManagement.dao.NewsMapper;
import com.sellerNet.backManagement.dto.NewsDto;
import com.sellerNet.backManagement.entity.News;
import com.sellerNet.backManagement.entity.NewsIndex;
import com.sellerNet.backManagement.entity.NewsIndexDetail;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.User;

@Repository
public class NewsFocusMapperImpl extends SqlSessionDaoSupport  implements NewsFocusMapper {

	private String namespace;
  public NewsFocusMapperImpl(){
	  this.namespace = getClass().getName();
  }
  @Resource(name="sqlSessionTemplate")
  public void setSuperSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate)
  {
    super.setSqlSessionTemplate(sqlSessionTemplate);
  }

@Override
public Map<String, String> getByUserIdAndFoucsId(Map map) {
	try
    {
      return getSqlSession().selectOne(this.namespace + "." + "getByUserIdAndFoucsId", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public List<Map> getFocusUserId(Map map) {
	try
    {
      return getSqlSession().selectList(this.namespace + "." + "getFocusUserId", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}

@Override
public void insert(Map map) {
	try
    {
      getSqlSession().insert(this.namespace + "." + "insert", map);
    } catch (Exception e) {
      e.printStackTrace();
    }
	
}

@Override
public void delete(Map map) {
	try
    {
      getSqlSession().delete(this.namespace + "." + "delete", map);
    } catch (Exception e) {
      e.printStackTrace();
    }
	
}
@Override
public List<Map> getFocusList(Map map) {
	try
    {
      return getSqlSession().selectList(this.namespace + "." + "getFocusList", map);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
}
@Override
public Long getFocusCount(Long focusId) {
	try
	{
		return (Long)getSqlSession().selectOne(this.namespace + "." + "getFocusCount", focusId);
	} catch (Exception e) {
		e.printStackTrace();
	}return 0L;
}

}