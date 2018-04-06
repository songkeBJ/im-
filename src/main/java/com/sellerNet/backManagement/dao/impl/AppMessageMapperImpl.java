package com.sellerNet.backManagement.dao.impl;

import java.util.Date;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.AppMessageMapper;
import com.sellerNet.backManagement.entity.AppMessage;

@Repository
public class AppMessageMapperImpl extends BaseDaoImpl<AppMessage, Long>
		implements AppMessageMapper {

	public AppMessageMapperImpl() {
		this.namespace = getClass().getName();
	}

	@Override
	public AppMessage getLastByUserId(Long userid) {
		try {
			return getSqlSession()
					.selectOne(
							this.getClass().getName() + "." + "getLastByUserId",
							userid);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	@Override
	public int insert(AppMessage appMessage) {
		int rows = 0;
		if (appMessage.getPushtime() == null) {
			appMessage.setPushtime(new Date());
		}
		if (appMessage.getReadtime() == null) {
			appMessage.setReadtime(new Date());
		}
		try {
			rows = getSqlSession().insert(this.namespace + "." + "insert",
					appMessage);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return rows;
	}

	@Override
	public Long getNotReadCountByUserId(Long userid) {
		return getSqlSession().selectOne(this.namespace+"."+"getNotReadCountByUserId", userid);
	}
}