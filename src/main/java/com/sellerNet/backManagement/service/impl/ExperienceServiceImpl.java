package com.sellerNet.backManagement.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.EvaluateMapper;
import com.sellerNet.backManagement.dao.ExperienceMapper;
import com.sellerNet.backManagement.dao.ImageMapper;
import com.sellerNet.backManagement.dao.VideoMapper;
import com.sellerNet.backManagement.entity.Experience;
import com.sellerNet.backManagement.entity.Image;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.ReleaseParam;
import com.sellerNet.backManagement.entity.Video;
import com.sellerNet.backManagement.service.ExperienceService;
import com.sellerNet.backManagement.utils.NumberUtil;
@Service  
@Transactional 
public class ExperienceServiceImpl extends BaseServiceImpl<Experience, Long> implements ExperienceService{

	private static final Logger LOGGER = LoggerFactory.getLogger(ExperienceServiceImpl.class);
	
	@Resource
	private ExperienceMapper experienceMapper;//心得
	
	@Resource
	private EvaluateMapper evaluateMapper;//评论
	
	@Resource
	private ImageMapper imageMapper;//图片
	@Resource
	private VideoMapper videoMapper;//小视频
	
	@Override
	protected BaseDao<Experience, Long> getDao() {
		return experienceMapper;
	}
	
	
	@Override
	public Experience release(ReleaseParam param) {
		
		/*保存心得*/
		Experience experience = new Experience();
		experience.setContent(param.getContent());
		experience.setDistrictId(param.getDistrictId());
		experience.preCreate(param.getId());
		/*提醒谁看*/
//		if(param.getReminds()!=null){
//			if(param.getReminds().size()>0){
//				String users = null;
//				for(int i=0;i<param.getReminds().size();i++){
//					if(i==0){
//						users=param.getReminds().get(i).toString();
//					}else{
//					   users+=","+param.getReminds().get(i).toString();
//					}
//				}
//				experience.setReminds(users);
//			}
//		}
		experienceMapper.insert(experience);
		/*保存图片*/
		if(param.getImages().size()>0){
			String imagestr = "";
			Image image = new Image();
			image.setCategory(ImageCategory.EXPERIENCE.name());
			image.preCreate(param.getId());
			image.setObjectId(experience.getId());
			if(param.getImages()!=null){
				if(param.getImages().size()>0){
					for(int i=0;i<param.getImages().size();i++){
						if(i==0){
							imagestr+=param.getImages().get(i);
						}else {
							imagestr+=","+param.getImages().get(i);
						}
					}
				}
			}
			image.setUrl(imagestr);
			imageMapper.insert(image);
		}
		/*保存视频*/
		if(param.getVideos().size()>0){
			String videostr = "";
			Video video = new Video();
			video.setCategory(ImageCategory.EXPERIENCE.name());
			video.preCreate(param.getId());
			video.setObjectId(experience.getId());
			if(param.getVideos()!=null){
				if(param.getVideos().size()>0){
					for(int i=0;i<param.getVideos().size();i++){
						if(i==0){
							videostr+=param.getVideos().get(i);
						}else {
							videostr+=","+param.getVideos().get(i);
						}
					}
				}
			}
			video.setUrl(videostr);
			videoMapper.insert(video);
		}
		return experience;
	}

	@Override
	public List<Experience> findAll(Long userid, String limit) {
		 Map map = new HashMap<>();
		 map.put("start", NumberUtil.countOffset(Integer.valueOf(limit)));
	     map.put("end", 15);
	     map.put("userId", userid);
	     List<Experience> experiences = experienceMapper.findAllExperiences(map);
		 return experiences;
	}


	@Override
	public List<Experience> findAllExperiencesByUsesrId(Long userid, String page) {
		Map map = new HashMap<>();
		map.put("start", NumberUtil.countOffset(Integer.valueOf(page)));
		map.put("end", 15);
		map.put("userId", userid);
		List<Experience> experiences = experienceMapper.findAllExperiencesByUsesrId(map);
		return experiences;
	}

}
