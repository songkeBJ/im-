package com.sellerNet.backManagement.service.impl;

import static org.hamcrest.CoreMatchers.is;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.IslikeMapper;
import com.sellerNet.backManagement.dao.NewsBackMapper;
import com.sellerNet.backManagement.dao.NewsComplainMapper;
import com.sellerNet.backManagement.dto.im.BackOut;
import com.sellerNet.backManagement.entity.Islike;
import com.sellerNet.backManagement.service.NewsBackService;
import com.sellerNet.backManagement.service.NewsComplainService;
@Service
@Transactional
public class NewsBackServiceImpl implements NewsBackService{
	
	@Resource
	private NewsBackMapper newsBackMapper;
	@Resource
	private IslikeMapper islikeMapper;

	@Override
	public int insert(Map map) {
		return newsBackMapper.insert(map);
	}

	@Override
	public List<BackOut> selectByEvaId(Map map) {
		return newsBackMapper.selectByEvaId(map);
	}

	@Override
	public int delete(Map map) {
		return newsBackMapper.delete(map);
	}

	@Override
	public void deleteNewsBACK(Map map) {
		Long id = (Long) map.get("id");
		//删除资讯评论的回复的点赞记录
		List<Islike> idAndCategory = islikeMapper.getByExprienceIdAndCategory(map);
		List<Long> paramList=new ArrayList<>();
		for (Islike islike : idAndCategory) {
			paramList.add(islike.getId());
		}
		islikeMapper.deleteBatch(paramList);
		//删除回复记录
		map.clear();
		map.put("id", id);
		newsBackMapper.delete(map);
	}
	

}
