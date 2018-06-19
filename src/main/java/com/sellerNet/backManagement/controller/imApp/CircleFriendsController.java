package com.sellerNet.backManagement.controller.imApp;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dao.VideoMapper;
import com.sellerNet.backManagement.dto.ExperienceDto;
import com.sellerNet.backManagement.dto.ImageDto;
import com.sellerNet.backManagement.dto.VideoDto;
import com.sellerNet.backManagement.entity.Evaluate;
import com.sellerNet.backManagement.entity.EvaluateOut;
import com.sellerNet.backManagement.entity.EvaluateParam;
import com.sellerNet.backManagement.entity.Experience;
import com.sellerNet.backManagement.entity.Image;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.Islike;
import com.sellerNet.backManagement.entity.IslikeDto2;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.ReleaseParam;
import com.sellerNet.backManagement.entity.SetUserShow;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.EvaluateService;
import com.sellerNet.backManagement.service.ExperienceService;
import com.sellerNet.backManagement.service.ImageService;
import com.sellerNet.backManagement.service.IslikeService;
import com.sellerNet.backManagement.service.SetUserShowService;
import com.sellerNet.backManagement.utils.Constant;

/**
 * 朋友圈控制器
 * 
 * 1、发布（类似与微信的朋友圈）
 * 2、加载所有的朋友圈信息
 * 3、对朋友圈进行评论和回复操作
 * 4、对朋友圈进行点赞
 * 5、朋友圈更新背景图片
 * 6.加载自己的相册
 * 7.删除评论
 */
@RestController
@RequestMapping({"api/circleFriends"})
public class CircleFriendsController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(CircleFriendsController.class);
	
	@Resource
	private ExperienceService experienceService;
	
	@Resource
	private EvaluateService evaluateService;
	
	@Resource
	private AppUserService userService;
	
	@Resource
	private AppUserOneService useroneService;
	
	@Resource
	private ImageService imageService;
	@Resource
	private VideoMapper videoService;
	
	@Resource
	private IslikeService islikeService;
	
	@Resource
	private SetUserShowService setUserShowService;
	
	
	
	/**
	 * 发布朋友圈
	 * @param jsonString
	 * @return 是否发布成功
	 */
	@RequestMapping(value= "release.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult  postExperience(@ModelAttribute("ReleaseParam") ReleaseParam releaseParam){
		
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		if (releaseParam.getId()==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("用户Id不能为空");
			  return jsonResult;
		}
		if (releaseParam.getContent()==null && releaseParam.getImages()==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("发布内容不能为空");
			  return jsonResult;
		}
		if(releaseParam.getPrivilegeType()!=null){
			if (releaseParam.getPrivilegeType().equals("SOME") && releaseParam.getUsers()==null) {
				  jsonResult.setCode(Constant.RESUT_FAIL);
				  jsonResult.setErrorDescription("请选择权限和相对应的用户");
				  return jsonResult;
			}
			if (releaseParam.getPrivilegeType().equals("SOMENO") && releaseParam.getUsers()==null) {
				jsonResult.setCode(Constant.RESUT_FAIL);
				jsonResult.setErrorDescription("请选择权限和相对应的用户");
				return jsonResult;
			}
		}
		//<editor-fold >
		
		//<editor-fold desc="step2 : 发布朋友圈>
		experienceService.release(releaseParam);
		//<editor-fold >
		
		//<editor-fold desc="step3 : 反馈发布心得成功信息>
		jsonResult.setErrorDescription("发布朋友圈成功");
		return jsonResult;
		//<editor-fold >
	}
	
	/**
	 * 加载朋友圈所有的信息
	 * @param jsonString
	 * @return
	 */
	@RequestMapping(value= "findAll.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult<ExperienceDto> findAll(@RequestParam(value="id",required=false) Long id,
												  @RequestParam(value="page",required=false) String page){
		JsonResult jsonResult = new JsonResult<>();
		List<Evaluate> all = new ArrayList<>();
		List<Evaluate> evaluates ;
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
		List<Experience> experiences = experienceService.findAll(id, page);
		//查看朋友圈权限

		
		//<editor-fold desc="step3 : 加载用户心得>
		for (Experience experience:experiences) {
			
			
			//加入用户的昵称和头像
			UserOne userOne = useroneService.get(Integer.parseInt(experience.getCreator().toString()));
			experience.setNickName(userOne.getUsername());
			if(userOne.getAvator()!=null){
				experience.setAvator(userOne.getAvator());
			}
			
			
			//心得图片
			List<Image> images = imageService.getByObjectIdAndCategory(experience.getId(),ImageCategory.EXPERIENCE.name());
			if(images!=null && images.size()>0){
				if(images.get(0).getUrl().length()>0){
					experience.setImages(images.get(0).getUrl());
				}
			}
			//心得视频
			List<VideoDto> videos = videoService.getByObjectId(experience.getId());
			if(videos!=null && videos.size()>0){
				if(videos.get(0).getUrl().length()>0){
					experience.setVideos(videos.get(0).getUrl());
				}
			}
			
			//心得评论和回复
			try {
//				getListByParentId(experience.getId(),0L);
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
//				IslikeDto islikeDto = new IslikeDto();
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
		}
		//<editor-fold >
		
		//<editor-fold desc="step4 : 设置心得数据>
		experienceDto.setExperiences(experiences);
		//<editor-fold >
		
		//<editor-fold desc="step5 : 返回心得数据>
		jsonResult.setDataObject(experienceDto);
		jsonResult.setErrorDescription("返回朋友圈信息成功");
		return jsonResult;
	}
	
	/**
	 * 评论、回复
	 * @param jsonString
	 * @return
	 */
	@RequestMapping(value= "evaulate.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult postEvaluate(@ModelAttribute("EvaluateParam") EvaluateParam param){
		
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		//<editor-fold >
		
		//<editor-fold desc="step2 : 点赞、评论或者回复>
		Evaluate evaluate = evaluateService.postEvaluate(param);
		//<editor-fold >
		//<editor-fold desc="step3 : 点赞、评论或者回复>
		jsonResult.setDataObject(evaluate);
		jsonResult.setErrorDescription("评论成功");
		return jsonResult;
		//<editor-fold >
	}
	/**
	 * 删除评论、回复
	 * @param jsonString
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value= "delEvaulate.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult delEvaulate(Long id){
		
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		//<editor-fold >
		
		//<editor-fold desc="step2 : 点赞、评论或者回复>
		evaluateService.delete(id);
		//<editor-fold >
		//<editor-fold desc="step3 : 点赞、评论或者回复>
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("删除评论/回复成功");
		return jsonResult;
		//<editor-fold >
	}
	
	/**
	 * 对朋友圈进行点赞(取消点赞)
	 * @param userId     :用户ID
	 * @param exprienceId:心得ID
	 * @param cancel     :是否取消点赞
	 * @return
	 */
	@RequestMapping(value= "isLike.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult isLike(@RequestParam(value="id",required=false) Long id,
			                 @RequestParam(value="exprienceId",required=false) Long exprienceId,
			                 @RequestParam(value = "cancel",required=false) Long cancel){
		
		//<editor-fold desc="step1 : 对心得进行点赞>
		JsonResult jsonResult = new JsonResult<>();
		if (id==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("用户Id不能为空");
			  return jsonResult;
		}
		if (exprienceId==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("心得Id不能为空");
			  return jsonResult;
		}
		Islike islike = islikeService.getByuserIdAndExprienceIdAndCategory(id, exprienceId,ImageCategory.EXPERIENCE.name());
		if(islike==null ){
			Islike like = new Islike();
			like.preCreate(id);
			like.setIslike(true);
			like.setExprienceId(exprienceId);
			like.setCategory(ImageCategory.EXPERIENCE.name());
			islikeService.insert(like);
		}else if(islike!=null){
			if(cancel==0){
				islike.setIslike(false);
			}else{
				islike.setIslike(true);
			}
			islike.preModified(id);
			islikeService.update(islike);
		}
		//<editor-fold >
	
		//<editor-fold desc="step3 : 点赞或取消点赞成功返回提示>
		jsonResult.setErrorDescription("点赞成功");
		return jsonResult;
		//<editor-fold >
	}
	
	/**
	 * 朋友圈更新背景图片
	 * @param jsonString
	 * @return
	 */
	@RequestMapping(value= "updateBack.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult updateBack(@RequestParam("id") Long userId,
			                     @RequestParam("avatar") String avatar){
		
		//<editor-fold desc="step1 : 对心得进行点赞>
		JsonResult jsonResult = new JsonResult<>();
		if (userId==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("用户Id不能为空");
			  return jsonResult;
		}
		if (avatar==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("背景图片不能为空");
			  return jsonResult;
		}
		//UserOne userone  = useroneService.get(Integer.parseInt(userId.toString()));
		User user = userService.byUserId(userId);
		user.setBackAvatar(avatar);
		userService.update(user);
		jsonResult.setErrorDescription("更新背景图片成功");
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
		/**
		 * 加载自己朋友圈所有的信息
		 * @param jsonString
		 * @return
		 */
		@RequestMapping(value= "findMyAll.do",method={RequestMethod.GET,RequestMethod.POST})
		public JsonResult<ExperienceDto> findMyAll(@RequestParam(value="id",required=false) Long id,
													  @RequestParam(value="page",required=false) String page){
			JsonResult jsonResult = new JsonResult<>();
			List<Evaluate> all = new ArrayList<>();
			List<Evaluate> evaluates ;
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
			//查看朋友圈权限

			//<editor-fold desc="step3 : 加载用户心得>
			for (Experience experience:experiences) {
				
				
				//加入用户的昵称和头像
				UserOne userOne = useroneService.get(Integer.parseInt(experience.getCreator().toString()));
				experience.setNickName(userOne.getUsername());
				if(userOne.getAvator()!=null){
					experience.setAvator(userOne.getAvator());
				}
				
				
				//心得图片
				List<Image> images = imageService.getByObjectIdAndCategory(experience.getId(),ImageCategory.EXPERIENCE.name());
				if(images!=null && images.size()>0){
					if(images.get(0).getUrl().length()>0){
						experience.setImages(images.get(0).getUrl());
					}
				}
				//心得视频
				List<VideoDto> videos = videoService.getByObjectId(experience.getId());
				if(videos!=null && videos.size()>0){
					if(videos.get(0).getUrl().length()>0){
						experience.setVideos(videos.get(0).getUrl());
					}
				}
				
				//心得评论和回复
				try {
//					getListByParentId(experience.getId(),0L);
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
//					IslikeDto islikeDto = new IslikeDto();
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
			}
			//<editor-fold >
			
			//<editor-fold desc="step4 : 设置心得数据>
			experienceDto.setExperiences(experiences);
			//<editor-fold >
			
			//<editor-fold desc="step5 : 返回心得数据>
			jsonResult.setDataObject(experienceDto);
			jsonResult.setErrorDescription("返回自己朋友圈信息成功");
			return jsonResult;
		}
	
	
}
