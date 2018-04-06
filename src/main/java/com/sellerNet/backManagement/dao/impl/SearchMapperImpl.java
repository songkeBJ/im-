package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.NewsComplainMapper;
import com.sellerNet.backManagement.dao.SearchMapper;
@Repository
public class SearchMapperImpl extends SqlSessionDaoSupport implements SearchMapper{

	private String namespace;
	
	public SearchMapperImpl() {
		this.namespace = this.getClass().getName();
	}

	@Resource(name="sqlSessionTemplate")
	  public void setSuperSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate)
	  {
	    super.setSqlSessionTemplate(sqlSessionTemplate);
	  }

	@Override
	public int insertSearch(Map map) {
		 try
		    {
		      return getSqlSession().insert(this.namespace + "." + "insertSearch", map);
		    } catch (Exception e) {
		      e.printStackTrace();
		    }return 0;
	}

	@Override
	public int updateSearch(Map map) {
		try
	    {
	      return getSqlSession().update(this.namespace + "." + "updateSearch", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return 0;
	}

	@Override
	public List<Map> selectHotSearch(Map map) {
		try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "selectHotSearch", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public List<Map> selectSearchByUserId(Map map) {
		try
	    {
	      return getSqlSession().selectList(this.namespace + "." + "selectSearchByUserId", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public Map selectSearchByUserIdAndName(Map map) {
		try
	    {
	      return getSqlSession().selectOne(this.namespace + "." + "selectSearchByUserIdAndName", map);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public int deleteSearchBatch(List list) {
		try
	    {
	      return getSqlSession().delete(this.namespace + "." + "deleteSearchBatch", list);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return 0;
	}

	@Override
	public Map selectHotSearchByName(Map paraMap) {
		try
	    {
	      return getSqlSession().selectOne(this.namespace + "." + "selectHotSearchByName", paraMap);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
	}

	@Override
	public int insertHotSearch(Map paraMap) {
		try
	    {
	      getSqlSession().insert(this.namespace + "." + "insertHotSearch", paraMap);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return 0;
		
	}

	@Override
	public int updateHotSearch(Map userIdAndName2) {
		try
	    {
	      getSqlSession().update(this.namespace + "." + "updateHotSearch", userIdAndName2);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return 0;
		
	}

}
