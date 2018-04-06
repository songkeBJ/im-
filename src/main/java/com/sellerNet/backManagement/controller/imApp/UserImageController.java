package com.sellerNet.backManagement.controller.imApp;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.ExperienceDto;
import com.sellerNet.backManagement.dto.ImageDto;
import com.sellerNet.backManagement.dto.ImageDtoUrl;
import com.sellerNet.backManagement.entity.Evaluate;
import com.sellerNet.backManagement.entity.EvaluateOut;
import com.sellerNet.backManagement.entity.Experience;
import com.sellerNet.backManagement.entity.Image;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.Islike;
import com.sellerNet.backManagement.entity.IslikeDto2;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.EvaluateService;
import com.sellerNet.backManagement.service.ExperienceService;
import com.sellerNet.backManagement.service.ImageService;
import com.sellerNet.backManagement.service.IslikeService;
import com.sellerNet.backManagement.utils.Constant;

/**
 * 图片控制器
 * 
 * 1、分页查询用户信息
 * 
 */
@RestController
@RequestMapping("api/userImage")
public class UserImageController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(UserImageController.class);
	
	@Resource
	private ImageService imageService;
	
	@Resource
	private ExperienceService experienceService;
	
	@Resource
	private EvaluateService evaluateService;
	
	@Resource
	private AppUserService userService;
	
	@Resource
	private AppUserOneService useroneService;
	
	@Resource
	private IslikeService islikeService;
	

	/**
	 * 获取相册
	 * @param jsonString
	 * @return
	 */
	@RequestMapping(value= "getImages.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult<ExperienceDto> postEvaluate(@RequestParam(value="id",required=false) Long id,
												  @RequestParam(value="page",required=false) String page){
		JsonResult jsonResult = new JsonResult<>();
		if (id==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("用户Id不能为空");
			  return jsonResult;
		}
		if (page==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("当前页不能为空");
			  return jsonResult;
		}
		//<editor-fold desc="step1 : 创建心得对象>
		ExperienceDto experienceDto = new ExperienceDto();
		UserOne user  = useroneService.get(Integer.parseInt(id.toString()));
		experienceDto.setAvatar(user.getAvator());
		User user2 = userService.byPhoneNumber(user.getPhoneNumber());
		if(user2.getBackAvatar()!=null){
			experienceDto.setBackAvatar(user2.getBackAvatar());
		}
		
		experienceDto.setNikeName(user.getUsername());
		//<editor-fold >
		
		//<editor-fold desc="step2 : 加载用户朋友圈信息>
		List<Experience> experiences = experienceService.findAllExperiencesByUsesrId(id, page);
		//<editor-fold >
		
		//<editor-fold desc="step3 : 加载用户心得>
		for (Experience experience:experiences) {
			//加入用户的昵称和头像
			experience.setNickName(user.getUsername());
			if(user.getAvator()!=null){
				experience.setAvator(user.getAvator());
			}
			//心得图片
			List<Image> images = imageService.getByObjectIdAndCategory(experience.getId(),ImageCategory.EXPERIENCE.name());
			if(images!=null && images.size()>0){
				if(images.get(0).getUrl().length()>0){
					experience.setImages(images.get(0).getUrl());
				}
			}
		}
		//<editor-fold >
		
		//<editor-fold desc="step4 : 设置心得数据>
		experienceDto.setExperiences(experiences);
		//<editor-fold >
		
		//<editor-fold desc="step5 : 返回心得数据>
		jsonResult.setDataObject(experienceDto);
		jsonResult.setErrorDescription("返回朋友圈相册信息成功");
		return jsonResult;
	}
	
	/**
	 * 获取相册详情
	 * @param jsonString
	 * @return
	 * @throws Exception 
	 * @throws NumberFormatException 
	 */
	@RequestMapping(value= "getImagesDetail.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult getImages(@RequestParam(value="id",required=false) Long id) throws NumberFormatException, Exception{
		JsonResult jsonResult = new JsonResult<>();
		List<Evaluate> all = new ArrayList<>();
		List<Evaluate> evaluates ;
		if (id==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("朋友圈Id不能为空");
			  return jsonResult;
		}
		
		Experience experience = experienceService.get(id);
		
		//加入用户的昵称和头像
		UserOne user  = useroneService.get(Integer.parseInt(id.toString()));
		experience.setNickName(user.getUsername());
		if(user.getAvator()!=null){
			experience.setAvator(user.getAvator());
		}
		
		
		//心得图片
		List<Image> images = imageService.getByObjectIdAndCategory(experience.getId(),ImageCategory.EXPERIENCE.name());
		if(images!=null && images.size()>0){
			if(images.get(0).getUrl().length()>0){
				experience.setImages(images.get(0).getUrl());
			}
		}	
		//心得评论和回复
		try {
//			getListByParentId(experience.getId(),0L);
			evaluates  = evaluateService.getByObjectIdAndCategory(experience.getId(),null,ImageCategory.EXPERIENCE.name());
			if(evaluates.size()>0){
				buildTree(evaluates,all);
				if(all!=null){
					for(Evaluate eva:all){
						EvaluateOut evaluateOut = new EvaluateOut();
						evaluateOut.setContent(eva.getContent());
						evaluateOut.setEvaluateId(eva.getId());
						evaluateOut.setUserId(eva.getCreator());
						experience.getEvaluates().add(evaluateOut);
					}
					
				}
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		//心得对应的点赞集合
		List<Islike> islikes = islikeService.getByExpriencesAndCategory(experience.getId(),ImageCategory.EXPERIENCE.name());
		if(islikes.size()>0){
//			IslikeDto islikeDto = new IslikeDto();
			 List<IslikeDto2> islikeDto = new ArrayList<>();
			for(Islike like:islikes){
				IslikeDto2 islikeDto2 = new IslikeDto2();
				islikeDto2.setUserId(like.getCreator());
				islikeDto2.setUserName(useroneService.get(Integer.parseInt(like.getCreator().toString())).getUsername());
				islikeDto.add(islikeDto2);
			}
			experience.setIslikes(islikeDto);
		}
		all.clear();
		jsonResult.setErrorDescription("获取相册详情成功");
		jsonResult.setDataObject(experience);
		return jsonResult;
	}
	//<editor-fold >
	public String buildTree(List<Evaluate> evaluates,List<Evaluate> all){
		for(Evaluate evaluate:evaluates){
			Long id = evaluate.getId();
			if(evaluate.getParentId()==0L){
				//....
				all.add(evaluate);
				build(evaluate,evaluates,all);
			}
		}
		return null;
	}
	
	public void build(Evaluate evaluate,List<Evaluate> evaluates,List<Evaluate> all){
		List<Evaluate> children = getChildren(evaluate,evaluates);
		if(!children.isEmpty()){
			for(Evaluate child:children){
				Long id = child.getId();
				//....
				all.add(child);
				build(child,evaluates,all);
			}
		}
	}
	
	private List<Evaluate> getChildren(Evaluate evaluate,List<Evaluate> evaluates){
		List<Evaluate> children  = new ArrayList<>();
		Long id =  evaluate.getId();
		for (Evaluate child:evaluates) {
			if(id==child.getParentId()){
				children.add(child);
			}
		}
		return children;
	}
}
