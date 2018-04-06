package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.im.BackOut;

public abstract interface NewsBackMapper
{
	int delete(Map map);
	int insert(Map map);
	List<BackOut> selectByEvaId(Map map);
	long selectCountByEvaId(Map map); 
}