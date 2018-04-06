package com.sellerNet.backManagement.dao;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.Evaluate;
import com.sellerNet.backManagement.entity.EvaluateNewsOut;
import com.sellerNet.backManagement.entity.EvaluateOut;

/**
 * 评论相关接口
 * @author gxg
 * @time   2016年9月14日
 * 
 */
public interface EvaluateMapper extends BaseDao<Evaluate, Long> {
	
	List<Evaluate> getByObjectIdAndCategory(Map map);

	List<EvaluateNewsOut> getNewsEvaluates(Map map);
	EvaluateNewsOut getNewsEvaluatesIslikeTime(Map map);
	EvaluateNewsOut getNewsEvaluatesBackTime(Map map);

	List<EvaluateNewsOut> getByParentIdAndCategory(Map map);

	EvaluateNewsOut getOutByIdAndCategory(Map map);
}
