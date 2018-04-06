package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.NewsBackMapper;
import com.sellerNet.backManagement.dao.NewsComplainMapper;
import com.sellerNet.backManagement.dto.im.BackOut;
@Repository
public class NewsBackMapperImpl extends SqlSessionDaoSupport implements NewsBackMapper{

	private String namespace;
	
	public NewsBackMapperImpl() {
		this.namespace = this.getClass().getName();
	}

	@Resource(name="sqlSessionTemplate")
	  public void setSuperSqlSessionTemplate(SqlSessionTemplate sqlSessionTemplate)
	  {
	    super.setSqlSessionTemplate(sqlSessionTemplate);
	  }

	@Override
	public int delete(Map map) {
		try {
			return getSqlSession().delete(namespace+"."+"delete", map);
		} catch (Exception e) {
			e.printStackTrace();
		}return 0;
	}

	@Override
	public int insert(Map map) {
		try {
			return getSqlSession().insert(namespace+"."+"insert", map);
		} catch (Exception e) {
			e.printStackTrace();
		}return 0;
	}

	@Override
	public List<BackOut> selectByEvaId(Map map) {
		try {
			return getSqlSession().selectList(namespace+"."+"selectByEvaId", map);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}

	@Override
	public long selectCountByEvaId(Map map) {
		try {
			return getSqlSession().selectOne(namespace+"."+"selectCountByEvaId", map);
		} catch (Exception e) {
			e.printStackTrace();
		}return 0;
	}

}
