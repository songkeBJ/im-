package com.sellerNet.backManagement.controller.app;

import java.util.Date;
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
import com.sellerNet.backManagement.entity.AppMessage;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.service.AppMessageService;
import com.sellerNet.backManagement.utils.StringUtil;
/**
 * app消息
 * 
 */
@RestController
@RequestMapping({"api/appMessage/"})
public class AppMessageController extends BaseController{
	
  private static final Logger LOGGER = LoggerFactory.getLogger(AppMessageController.class);

  
  @Resource
  private AppMessageService appMessageService;

  /**
   * 根据用户id获取列表 
   * @param userid 用户id
   * @param page 页码
   * @return
   */
  @ResponseBody
  @RequestMapping(value="getListByUserId.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult getListByUserId(@RequestParam(value="userid", required=true) Long userid,
          @RequestParam(value="page", required=false) Integer page) { 
	  		JsonResult jsonResult = new JsonResult();  
	  
	  		if(page==null){
	  			page=1;
	  		}
		Map map = new HashMap<>();
		map.put("userid", userid);
		map.put("start", (page - 1) * 15);
		map.put("end", 15);

		List<AppMessage> messages = appMessageService.selectParam(map);
		jsonResult.setDataObject(messages);
		jsonResult.setErrorDescription("获取信息成功");
		  return jsonResult;
  }
  
  @ResponseBody
  @RequestMapping(value="addMessage.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult addMessage(@RequestParam(value="userid", required=false) Long userid) { 
	  		JsonResult jsonResult = new JsonResult();  
	  
	  		AppMessage appmessage=new AppMessage();
	  		appmessage.setIsread(0);
	  		appmessage.setTitle("ffffff");
	  		appmessage.setContent("content");
	  		appmessage.setUserid(userid);
	  		appmessage.setPushtime(new Date());
	  		appmessage.setReadtime(new Date());	  		
	  		int id=appMessageService.insert(appmessage);
	  		jsonResult.setDataObject(id);
	  		jsonResult.setErrorDescription("获取信息成功");
  		return jsonResult;
  }
  /*
   * 更新为已读
   * @param id 消息id
   */
  @ResponseBody
  @RequestMapping(value="updateToIsRead.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult updateToIsRead(@RequestParam(value="id", required=false) Long id) { 
	  		JsonResult jsonResult = new JsonResult();  
	  
	  		AppMessage appmessage=appMessageService.get(id);
	  		appmessage.setIsread(1);
	  		appmessage.setReadtime(new Date());
	  		int result=appMessageService.update(appmessage);	  		
	  		jsonResult.setDataObject(result > 0 ? 0 : 1);
	  		jsonResult.setErrorDescription(result > 0 ?"更新成功" : "result");
  		return jsonResult;
  }
  
  
  /*
   * 根据id 查找详细
   * @param id 消息id
   */
  @ResponseBody
  @RequestMapping(value="getDetail.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult getDetail(@RequestParam(value="id", required=false) Long id) { 
	  		JsonResult jsonResult = new JsonResult();
	  		AppMessage appmessage=appMessageService.get(id);	  			
	  		jsonResult.setDataObject(appmessage);
	  		jsonResult.setErrorDescription(appmessage != null ?"获取成功" : "获取失败");
  		return jsonResult;
  }
  
  /*
   *根据userid查找最后一条消息
   *@userid 用户id
   */
  @ResponseBody
  @RequestMapping(value="getLastByUserId.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult getLastByUserId(@RequestParam(value="userid", required=false) Long userid) { 
	  		JsonResult jsonResult = new JsonResult();
	  		AppMessage appmessage=appMessageService.getLastByUserId(userid); 			
	  		jsonResult.setDataObject(appmessage);
	  		jsonResult.setErrorDescription(appmessage != null ?"获取成功" : "获取失败");
  		return jsonResult;
  }
}