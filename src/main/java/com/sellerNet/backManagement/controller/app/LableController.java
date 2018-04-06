package com.sellerNet.backManagement.controller.app;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Lable;
import com.sellerNet.backManagement.entity.LableDto;
import com.sellerNet.backManagement.entity.LableMember;
import com.sellerNet.backManagement.entity.LableParam;
import com.sellerNet.backManagement.entity.LableParam2;
import com.sellerNet.backManagement.entity.LableParam3;
import com.sellerNet.backManagement.entity.LableParam4;
import com.sellerNet.backManagement.entity.PhoneNumber;
import com.sellerNet.backManagement.entity.UserLable;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.im.ImFriend;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.LableMemberService;
import com.sellerNet.backManagement.service.LableService;
import com.sellerNet.backManagement.service.PhoneNumberService;
import com.sellerNet.backManagement.service.UserLableService;
import com.sellerNet.backManagement.service.im.ImFriendService;
import com.sellerNet.backManagement.utils.Constant;
import com.sellerNet.backManagement.utils.EncodingTool;
import com.sellerNet.backManagement.utils.JsonUtils;

/**
 * 标签相关接口
 * 
 * 1、标签关联
 * 
 */
@RestController
@RequestMapping("api/lables")
public class LableController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(LableController.class);
	
	@Resource
	private ImFriendService imFriendService;
	
	@Resource
	private AppUserOneService userOneService;
	
	@Resource
	private LableService lableService;
	
	@Resource
	private UserLableService userLableService;
	
	
	@Resource
	private LableMemberService lableMemberService;
	
	@Resource
	private PhoneNumberService phoneNumberService;
	
	
	
	
	/**
	 * 创建标签
	 * @return
	 */
	@RequestMapping(value="createlable.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult addlable(@RequestParam("name") String name){
		
		JsonResult jsonResult = new JsonResult<>();
		  //<editor-fold desc="step1 : 校验入参>
		  if (name== null) {
		      jsonResult.setCode("1");
		      jsonResult.setErrorDescription("标签名称不能为空");
		      return jsonResult;
		  }
		 //<editor-fold >
		  UserLable lable = new UserLable();
		  lable.setName(EncodingTool.encodeStr(name));
		  Map map = new HashMap<>();
		  map.put("name",lable.getName());
		  List<UserLable> lables = userLableService.selectParam(map);
		  if(lables.size()>0){
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("该标签已经存在");
			  return jsonResult;
		  }
		  userLableService.insert(lable);
		  jsonResult.setErrorDescription("添加标签成功");
		  return jsonResult;
	}
	
	
	/**
	 * 获取所有的标签
	 * @return
	 */
	@RequestMapping(value="findAll.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult findAll(@RequestParam("type") String type,@RequestParam(value="sex",required=false) Integer sex){
		JsonResult jsonResult = new JsonResult<>();
		//<editor-fold desc="step1 : 校验入参>
		if (type == null) {
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("标签类型不能为空");
			return jsonResult;
		}
	
		Map map = new HashMap<>();
		map.put("type",type);
		map.put("sex",sex);
		//map.put("start",0);
		//map.put("end",10);
		List<UserLable> lables = userLableService.selectParam(map);
		jsonResult.setDataObject(lables);
		jsonResult.setErrorDescription("获取所有的标签成功");
		return jsonResult;
	}
	
	/**
	 * @param jsonString
	 * @return删除标签
	 */
	@RequestMapping(value="deletelable.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult deletelable(@RequestParam("lableId") String lableId){
		
		JsonResult jsonResult = new JsonResult<>();
		//<editor-fold desc="step1 : 校验入参>
		if (lableId == null) {
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("标签id不能为空");
			return jsonResult;
		}
        //删除该标签		
		userLableService.delete(Long.valueOf(lableId));
		//<editor-fold >
		jsonResult.setErrorDescription("删除标标签成功");
		return jsonResult;
	}
	
	
}
