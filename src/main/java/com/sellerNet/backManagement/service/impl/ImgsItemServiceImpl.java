package com.sellerNet.backManagement.service.impl;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.ImgsItemMapper;
import com.sellerNet.backManagement.entity.ImgsItem;
import com.sellerNet.backManagement.service.ImgsItemService;

@Service
public class ImgsItemServiceImpl extends BaseServiceImpl<ImgsItem, Long>
		implements ImgsItemService {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(ImgsItemServiceImpl.class);

	@Resource
	private ImgsItemMapper imgsItemMapper;

	protected BaseDao<ImgsItem, Long> getDao() {
		return this.imgsItemMapper;
	}
	
}