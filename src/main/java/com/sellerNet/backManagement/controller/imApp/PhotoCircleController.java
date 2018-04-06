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
import com.sellerNet.backManagement.dto.ExperienceDto;
import com.sellerNet.backManagement.dto.ImageDto;
import com.sellerNet.backManagement.entity.Evaluate;
import com.sellerNet.backManagement.entity.EvaluateOut;
import com.sellerNet.backManagement.entity.EvaluateParam;
import com.sellerNet.backManagement.entity.Experience;
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

import net.sf.json.JSONObject;

/**
相册
 */
@RestController
@RequestMapping({"api/photoCircle"})
public class PhotoCircleController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(PhotoCircleController.class);
	
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
	private IslikeService islikeService;
	
	@Resource
	private SetUserShowService setUserShowService;
	
	
	
	
	/**
	 * 删除相册
	 */
	@RequestMapping(value= "delete.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult  delete(@RequestParam(value="id",required=false) Integer id,
			  @RequestParam(value="photoId",required=false) Integer photoId){
		
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		if (id==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("用户Id不能为空");
			  return jsonResult;
		}
		if (photoId==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("相册id不能为空");
			  return jsonResult;
		}
		Map map =new HashMap<>();
		map.put("userId", id);
		map.put("photoId", photoId);
		List<Experience> list =experienceService.selectParam(map);
		if(list.size()>0){
			experienceService.delete((long)photoId);
			Map imageMap =new HashMap();
			imageMap.put("objectId", photoId);
			imageService.deleteParam(imageMap);
			jsonResult.setErrorDescription("删除相册成功");
		}else{
			jsonResult.setErrorDescription("删除相册失敗");
		}
		return jsonResult;
		//<editor-fold >
	}
	
}
