package com.sellerNet.backManagement.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.AppUserOneMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.EvaluateMapper;
import com.sellerNet.backManagement.dao.IslikeMapper;
import com.sellerNet.backManagement.dao.NewsBackMapper;
import com.sellerNet.backManagement.dto.im.BackOut;
import com.sellerNet.backManagement.entity.Evaluate;
import com.sellerNet.backManagement.entity.EvaluateNewsOut;
import com.sellerNet.backManagement.entity.EvaluateOut;
import com.sellerNet.backManagement.entity.EvaluateParam;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.Islike;
import com.sellerNet.backManagement.service.EvaluateService;
import com.sellerNet.backManagement.service.NewsBackService;

@Service  
@Transactional 
public class EvaluateServiceImpl extends BaseServiceImpl<Evaluate, Long> implements EvaluateService{

	private static final Logger LOGGER = LoggerFactory.getLogger(EvaluateServiceImpl.class);
	
	@Resource
	private EvaluateMapper evaluateMapper;
	
	@Resource
	private AppUserMapper appUserMapper;
	
	@Resource
	private AppUserOneMapper appUseroneMapper;
	@Resource
	private NewsBackMapper newsBackMapper;
	@Resource
	private NewsBackService newsBackService;
	@Resource
	private IslikeMapper islikeMapper;
	
	@Override
	protected BaseDao<Evaluate, Long> getDao() {
		return evaluateMapper;
	}

	@Override
	public Evaluate postEvaluate(EvaluateParam param) {
		Evaluate evaluate = new Evaluate();
		evaluate.preCreate(param.getUserId());
//		if(param.getLike().equals("true")){
//			evaluate.setLikeOn(true);
//		}else {
//			evaluate.setLikeOn(false);
//		}
		if(param.getParentId()!=null){
			if(!param.getParentId().equals("0")){
				Evaluate evaluate2 = evaluateMapper.get(param.getEvaluateId());
				//获取被回复的名称
				String beReply = appUseroneMapper.get(Integer.parseInt(evaluate2.getCreator().toString())).getUsername();
				//获取回复的名称
				String reply   = appUseroneMapper.get(Integer.parseInt(param.getUserId().toString())).getUsername();
				//拼接回复内容
				String content = reply+"回复"+beReply+":"+param.getContent();
				evaluate.setContent(content);
			}else if(param.getParentId().equals("0")){
				String reply   = appUseroneMapper.get(Integer.parseInt(param.getUserId().toString())).getUsername();
				evaluate.setContent(reply+":"+param.getContent());
			}
		}
		evaluate.setParentId(Long.valueOf(param.getParentId()));
		evaluate.setObjectId(param.getExprienceId());
		evaluate.preCreate(param.getUserId());
//		evaluate.setOrderBy(param.getOrderBy());
		evaluate.setCategory(ImageCategory.NEWS.name());
		evaluateMapper.insert(evaluate);
		return evaluate;
	}

	@Override
	public List<Evaluate> getByObjectIdAndCategory(Long objectId,Long parentId,String category) {
		Map map = new HashMap<>();
		map.put("objectId", objectId);
		map.put("parentId", parentId);
		map.put("category", category);
		return evaluateMapper.getByObjectIdAndCategory(map);
	}

	@Override
	public List<EvaluateNewsOut> getNewsEvaluates(Long objectId, String category) {
		Map map = new HashMap<>();
		map.put("objectId", objectId);
		map.put("parentId", 0);
		map.put("category", category);
		return evaluateMapper.getNewsEvaluates(map);
	}

	@Override
	public EvaluateNewsOut getNewsEvaluatesIslikeTime(Map map) {
		return evaluateMapper.getNewsEvaluatesIslikeTime(map);
	}

	@Override
	public Long getNewsEvaluatesBackTime(Map map) {
		return newsBackMapper.selectCountByEvaId(map);
	}

	@Override
	public List<EvaluateNewsOut> getByParentIdAndCategory(Long id, String category) {
		Map map =new HashMap<>();
		map.put("parentId", id);
		map.put("category", category);
		return evaluateMapper.getByParentIdAndCategory(map);
	}

	@Override
	public EvaluateNewsOut getOutByIdAndCategory(Long id,String category) {
		Map map =new HashMap<>();
		map.put("id", id);
		map.put("category", category);
		return evaluateMapper.getOutByIdAndCategory(map);
	}

	@Override
	public void deleteNewsEVA(Long id) {
		Map map=new HashMap<>();
		map.put("evaluateId", id);
		//删除所有的回复
		List<BackOut> selectByEvaId = newsBackMapper.selectByEvaId(map);
		map.clear();
		for (BackOut backOut : selectByEvaId) {
			map.put("exprienceId", backOut.getId());
			map.put("category", ImageCategory.NEWS_BACK.name());
			newsBackService.deleteNewsBACK(map);
			map.clear();
		}
		//删除所有的点赞
		List<Long> paramList=new ArrayList<>();
		map.clear();
		map.put("exprienceId", id);
		map.put("category", ImageCategory.NEWS_EVA.name());
		List<Islike> exprienceIdAndCategory = islikeMapper.getByExprienceIdAndCategory(map);
		for (Islike islike : exprienceIdAndCategory) {
			paramList.add(islike.getId());
		}
		islikeMapper.deleteBatch(paramList);
	}
	
	

}
