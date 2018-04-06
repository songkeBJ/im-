package com.sellerNet.backManagement.controller.app;

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
import com.sellerNet.backManagement.entity.MobileUser;
import com.sellerNet.backManagement.entity.MobileUserDto;
import com.sellerNet.backManagement.service.MobileUserService;
import com.sellerNet.backManagement.utils.Constant;

/**
 * 
 * 1、查询附近的人
 * 
 */
@RestController
@RequestMapping("api/users")
public class MobileUserController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(MobileUserController.class);
	
	@Resource
	private MobileUserService mobileUserService;
	
	
	/**
	 * 获取附近的人
	 * @param jsonString
	 * @return
	 * @throws Exception 
	 * @throws NumberFormatException  double lat, double lon, int raidus,int page,Long uid
	 */
	@RequestMapping(value= "getNearUsers.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult getNearUsers(@RequestParam(value="userPositionX",required=false) double userPositionX,
								 @RequestParam(value="userPositionY",required=false) double userPositionY,
								 @RequestParam(value="page",required=false) String page,
								 @RequestParam(value="id",required=false) Long userId){
		JsonResult jsonResult = new JsonResult<>();
		if (userPositionX==0) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		}
		if (userPositionY==0) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("保存图片或者动画的url不能为空不能为空");
			return jsonResult;
		}
		if (page==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("保存图片或者动画的url不能为空不能为空");
			return jsonResult;
		}
		if (userId==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("保存图片或者动画的url不能为空不能为空");
			return jsonResult;
		}
		return mobileUserService.getNearUsers(userPositionX, userPositionY,Integer.parseInt(page),userId,"",500000);
	}
	
	/**
	 * 摇一摇
	 * @param jsonString
	 * @return
	 * @throws Exception 
	 * @throws NumberFormatException  double lat, double lon, int raidus,int page,Long uid
	 */
	@RequestMapping(value= "shakeUsers.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult shakeUsers(@RequestParam(value="userPositionX",required=false) double userPositionX,
								 @RequestParam(value="userPositionY",required=false) double userPositionY,
								 @RequestParam(value="page",required=false) String page,
								 @RequestParam(value="id",required=false) Long userId){
		JsonResult jsonResult = new JsonResult<>();
		if (userPositionX==0) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		}
		if (userPositionY==0) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("保存图片或者动画的url不能为空不能为空");
			return jsonResult;
		}
		if (page==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("保存图片或者动画的url不能为空不能为空");
			return jsonResult;
		}
		if (userId==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("保存图片或者动画的url不能为空不能为空");
			return jsonResult;
		}
		JsonResult jsonResult2 = mobileUserService.getNearUsers(userPositionX, userPositionY,Integer.parseInt(page),userId,"",500000);
		List<MobileUserDto> mobileUserDtos = (List<MobileUserDto>) jsonResult2.getDataObject();
		int index=(int)(Math.random()*mobileUserDtos.size());
		jsonResult.setDataObject(mobileUserDtos.get(index));
		return jsonResult;
	}
	
	/**
	 * 雷达加好友
	 * @param jsonString
	 * @return
	 * @throws Exception 
	 * @throws NumberFormatException  double lat, double lon, int raidus,int page,Long uid
	 */
	@RequestMapping(value= "radarUsers.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult radarUsers(@RequestParam(value="longitud",required=false) String longitud,
	          					 @RequestParam(value="latitude",required=false)  String latitude,
								 @RequestParam(value="page",required=false) String page,
								 @RequestParam(value="id",required=false) Long id,
								 @RequestParam(value="type",required=false) String type){
		JsonResult jsonResult = new JsonResult<>();
		if (id==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("id不能为空");
			return jsonResult;
		}
		if (longitud==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("精度不能为空");
			return jsonResult;
		}
		if (latitude==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("纬度不能为空");
			return jsonResult;
		}
//		if (page==null) {
//			jsonResult.setCode(Constant.RESUT_FAIL);
//			jsonResult.setErrorDescription("保存图片或者动画的url不能为空不能为空");
//			return jsonResult;
//		}
		
		//更新经纬度
				MobileUser user = mobileUserService.selectByUserId(id);
				if(user==null){
					MobileUser mobileUser = new MobileUser();
					mobileUser.preCreate(id);
					mobileUser.setLatitude(Double.valueOf(latitude));
					mobileUser.setLongitud(Double.valueOf(longitud));
					mobileUser.setUserId(id);
					mobileUser.setType(type);
					mobileUserService.insert(mobileUser);
				}else{
					user.setLatitude(Double.valueOf(latitude));
					user.setLongitud(Double.valueOf(longitud));
					user.preCreate(id);
					user.setUserId(id);
					user.setType(type);
					mobileUserService.update(user);
				}
				//更新经纬度结束
	jsonResult = mobileUserService.radarUsers(Double.valueOf(latitude), Double.valueOf(longitud),Integer.parseInt("1"), id);
	LOGGER.info("最终结果日志输出"+jsonResult.toString());
	return jsonResult;
	}
	
	/**
	 * 雷达退出要删除改用户信息
	 * @param jsonString
	 * @return
	 * @throws Exception 
	 * @throws NumberFormatException  double lat, double lon, int raidus,int page,Long uid
	 */
	@RequestMapping(value= "deleteUsers.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult deleteUsers(@RequestParam(value="id",required=false) Long id){
		JsonResult jsonResult = new JsonResult<>();
		if (id==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("id不能为空");
			return jsonResult;
		}
		Map map = new HashMap();
		map.put("userId", id);
		mobileUserService.deleteParam(map);
		//更新经纬度结束
		jsonResult.setErrorDescription("删除用户信息成功");
		return jsonResult;
	}
	
	
	
	
	
}
