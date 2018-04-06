package com.sellerNet.backManagement.controller.imApp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.CitysDto;
import com.sellerNet.backManagement.entity.Area;
import com.sellerNet.backManagement.entity.City;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.service.AreaService;
import com.sellerNet.backManagement.service.CityService;
import com.sellerNet.backManagement.utils.Constant;
/**
 * 登陆管理和用户管理
 * 1、获取所有的城市
 * 2、根据城市获取地区
 * 3、用户登陆
 * 4、忘记密码
 * 5、发送短信验证码
 * 6、修改个人信息
 * 7、根据手机号获取用户信息
 * 8、设置支付密码
 * 9、验证支付密码
 * 10、根据用户id和好友id获取用户信息
 * @author gxg
 * @time   2016年9月14日
 * 
 */
@RestController
@RequestMapping({"api/area"})
public class AreaController extends BaseController{
	
  private static final Logger LOGGER = LoggerFactory.getLogger(AreaController.class);
 
  
  @Resource
  private CityService cityService;
  
  @Resource
  private AreaService areaService;

  /**
   * 获取城市
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="getCity.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult signUp() { 
	  JsonResult jsonResult = new JsonResult();
	  
	  //<editor-fold desc="step1:所有的城市>
	  List<CitysDto> cityCities = cityService.selectByParentId(0);
	  //<editor-fold >
	  jsonResult.setDataObject(cityCities);
	  jsonResult.setErrorDescription("获取城市列表成功");
	  return jsonResult;
  }
  
  /**
   * 根据城市id获取地区
   * @param phoneNumber
   * @param code
   * @param password
   * @return
   */
  @ResponseBody
  @RequestMapping(value="getAreaByCityid.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult signUp(@RequestParam(value="cityId",required=false) Integer cityid) { 
	  JsonResult jsonResult = new JsonResult();
	  if(cityid==null){
		  jsonResult.setCode(Constant.RESUT_FAIL);
		  jsonResult.setErrorDescription("城市id不能为空");
	  }
	  //<editor-fold desc="step1:所有的城市>
	  List<CitysDto> cityCities = cityService.selectByParentId(cityid);
	  //<editor-fold >
	  jsonResult.setDataObject(cityCities);
	  jsonResult.setErrorDescription("获取地区列表成功");
	  return jsonResult;
  }

  

  

  
  

 

  
  
   

}