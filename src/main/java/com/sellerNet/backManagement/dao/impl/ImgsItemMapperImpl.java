package com.sellerNet.backManagement.dao.impl;


import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.ImgsItemMapper;
import com.sellerNet.backManagement.entity.ImgsItem;

@Repository
public class ImgsItemMapperImpl extends BaseDaoImpl<ImgsItem, Long>
		implements ImgsItemMapper {

	public ImgsItemMapperImpl() {
		this.namespace = getClass().getName();
	}


}