package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.entity.Evaluate;
import com.sellerNet.backManagement.entity.EvaluateNewsOut;
import com.sellerNet.backManagement.entity.EvaluateOut;
import com.sellerNet.backManagement.entity.EvaluateParam;
import com.sellerNet.backManagement.entity.ImageCategory;

public interface EvaluateService extends baseService<Evaluate, Long>{

	/**
	 * 发表评论或者点赞
	 * @param evaluate
	 * @return
	 */
	public Evaluate postEvaluate(EvaluateParam evaluate);
	
	List<Evaluate> getByObjectIdAndCategory(Long objectId,Long parentId,String category);

	public List<EvaluateNewsOut> getNewsEvaluates(Long id, String name);

	public EvaluateNewsOut getNewsEvaluatesIslikeTime(Map map);

	public Long getNewsEvaluatesBackTime(Map map);

	public List<EvaluateNewsOut> getByParentIdAndCategory(Long id, String category);

	public EvaluateNewsOut getOutByIdAndCategory(Long id,String category);

	public void deleteNewsEVA(Long id);
}
