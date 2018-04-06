package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.dto.im.BackOut;

public interface NewsBackService {
	int insert(Map map);
	List<BackOut> selectByEvaId(Map map);
	int delete(Map map);
	void deleteNewsBACK(Map map);
}
