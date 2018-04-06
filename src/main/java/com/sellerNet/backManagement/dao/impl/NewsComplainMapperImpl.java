package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.mybatis.spring.SqlSessionTemplate;
import org.mybatis.spring.support.SqlSessionDaoSupport;
import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.NewsComplainMapper;
@Repository
public class NewsComplainMapperImpl extends BaseDaoImpl<Map, Long> implements NewsComplainMapper{

	public NewsComplainMapperImpl() {
		this.namespace = this.getClass().getName();
	}

	@Override
	public Long countByNewsId(Long newsId) {
		try {
			return getSqlSession().selectOne(namespace+"."+"countByNewsId", newsId);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}
	@Override
	public List<Map> selectByNewsId(Long newsId) {
		try {
			return getSqlSession().selectList(namespace+"."+"selectByNewsId", newsId);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
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
	public List<Map> countByNewsIdAndType(Long newsId) {
		try {
			return getSqlSession().selectList(namespace+"."+"countByNewsIdAndType", newsId);
		} catch (Exception e) {
			e.printStackTrace();
		}return null;
	}

}
