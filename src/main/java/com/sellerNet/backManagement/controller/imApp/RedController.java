package com.sellerNet.backManagement.controller.imApp;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alipay.util.AliPayMsg;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.RedJsonResult;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.RedService;
/**
 * 红包controller
 * @author sk
 *
 */
@Controller
@RequestMapping("api/money")
public class RedController {
	private static final Logger LOGGER = LoggerFactory.getLogger(RedController.class);
	
	@Resource
	private AppUserOneService userOneService;
	
	@Resource
	private RedService redService;
	
	@Resource
	private AppUserService userService;
	/*
	 * 发送对单人的普通红包
	 */
	@ResponseBody
	@RequestMapping(value = "/addOneRed.do",method={RequestMethod.GET,RequestMethod.POST})
	public  JsonResult addOneRed(@RequestParam(value="red_money",required=false) String red_money,
			@RequestParam(value = "red_user_id", required = false) Long red_user_id,
			@RequestParam(value = "red_content", required = false) String red_content,
			HttpServletRequest request) throws Exception {
		String red_type="0";
		String red_all_count="1";
		//判断入参
		if(StringUtils.isBlank(red_money)){
			JsonResult apm = new JsonResult();
			apm.setCode("1");
			apm.setErrorDescription("红包总金额不能为空");
			return apm;   
		}
		if(red_user_id==null){
			JsonResult apm = new JsonResult();
			apm.setCode("1");
			apm.setErrorDescription("红包所属的用户id不能为空");
			return apm;   
		}
		if(red_content==null){
			JsonResult apm = new JsonResult();
			apm.setCode("1");
			apm.setErrorDescription("红包标题不能为空");
			return apm;   
		}
		//判断余额是否够
		UserOne userOne2 = userOneService.get(red_user_id.intValue());
		BigDecimal money1 =userOne2.getBalance();
		BigDecimal money2 = new BigDecimal(red_money);
		if(money1.compareTo(money2)==-1){
			JsonResult apm = new JsonResult();
			apm.setCode("1");
			apm.setErrorDescription("钱包余额不足");
			return apm;
		}
		LOGGER.info("红包扣钱开始：金额为" +red_money+"元");
		Red addRed = redService.addOneRed(userOne2,red_money,red_type,red_all_count,red_user_id,red_content);
		
		
		JsonResult apm = new JsonResult();
		apm.setCode("0");
		apm.setErrorDescription("红包发送成功");
		apm.setDataObject(JSONObject.fromObject(addRed).toString());
		return apm; 
	}
	/*
	 * 发送拼手气红包
	 */
	@ResponseBody
	@RequestMapping(value = "/addRed.do",method={RequestMethod.GET,RequestMethod.POST})
	public  JsonResult addRed(@RequestParam(value="red_money",required=false) String red_money,
								@RequestParam(value = "red_all_count", required = false) String red_all_count,
								@RequestParam(value = "red_user_id", required = false) Long red_user_id,
								@RequestParam(value = "red_content", required = false) String red_content,
								HttpServletRequest request) throws Exception {
		String red_type="1";
	        //判断入参
			if(StringUtils.isBlank(red_money)){
				JsonResult apm = new JsonResult();
		        apm.setCode("1");
		        apm.setErrorDescription("红包总金额不能为空");
		        return apm;   
			}
			if(StringUtils.isBlank(red_all_count)){
				JsonResult apm = new JsonResult();
				apm.setCode("1");
				apm.setErrorDescription("红包总个数不能为空");
				return apm;   
			}
			if(red_user_id==null){
				JsonResult apm = new JsonResult();
				apm.setCode("1");
				apm.setErrorDescription("红包所属的用户id不能为空");
				return apm;   
			}
			if(red_content==null){
				JsonResult apm = new JsonResult();
				apm.setCode("1");
				apm.setErrorDescription("红包标题不能为空");
				return apm;   
			}
			//判断余额是否够
			UserOne userOne2 = userOneService.get(red_user_id.intValue());
			  BigDecimal money1 =userOne2.getBalance();
			  BigDecimal money2 = new BigDecimal(red_money);
			  if(money1.compareTo(money2)==-1){
				  JsonResult apm = new JsonResult();
				  apm.setCode("1");
				  apm.setErrorDescription("钱包余额不足");
				  return apm;
			  }
			LOGGER.info("红包扣钱开始：金额为" +red_money+"元");
			Red addRed = redService.addRed(userOne2,red_money,red_type,red_all_count,red_user_id,red_content);
			
			
			JsonResult apm = new JsonResult();
	        apm.setCode("0");
	        apm.setErrorDescription("红包发送成功");
	        apm.setDataObject(JSONObject.fromObject(addRed).toString());
	        return apm; 
	     }
	
	/*
	 * 查询群和单个红包是否被抢完
	 */
	@ResponseBody
	@RequestMapping(value = "/getOneRedstatus.do",method={RequestMethod.GET,RequestMethod.POST})
	public RedJsonResult getOneRedstatus(Long red_id) {
		RedJsonResult apm = new RedJsonResult();
		Red red = redService.get(red_id);
		if("1".equals(red.getRed_outTime())){
			apm.setRed_state("2");
			apm.setCode("0");
			apm.setErrorDescription("该红包已过期");
		}else if(red.getRed_has_count()>0){
			apm.setRed_state("0");
			apm.setCode("0");
			apm.setErrorDescription("红包未被领完");
		}else{
			apm.setRed_state("1");
			apm.setCode("0");
			apm.setErrorDescription("红包已被领取完");
		}
		//返回页面需要数据
		JSONObject jsonObject = new JSONObject();
		UserOne userOne = userOneService.get(red.getRed_user_id().intValue());
		JsonResult result = redService.getGrabListByUserIdAndYear(red_id);
		com.alibaba.fastjson.JSONObject parseObject = com.alibaba.fastjson.JSONObject.parseObject((String)result.getDataObject());
		parseObject.put("red", red);
		parseObject.put("sendRedUser", userOne);
		apm.setDataObject(parseObject);
		return apm;
	}
	
	/*
	 * 单人红包收取
	 */
	
	@ResponseBody
	@RequestMapping(value = "/updateOneRed.do",method={RequestMethod.GET,RequestMethod.POST})
	public RedJsonResult updateOneRed(Long red_id, Long grab_user_id) {
        return redService.updateOneRed(red_id, grab_user_id); 
	}
	/*
	 * 抢手气红包
	 */
	@ResponseBody
	@RequestMapping(value = "/updateRed.do",method={RequestMethod.GET,RequestMethod.POST})
	public RedJsonResult updateRed(Long red_id, Long grab_user_id,String groupId) {
		return redService.updateRed(red_id, grab_user_id,groupId); 
	}
	/*
	 * 获取发红包列表
	 */
	@ResponseBody
	@RequestMapping(value = "/getSendListByUserIdAndYear.do")
	public JsonResult getSendListByUserIdAndYear(int page,Long userId, Long year) {
		Map map = new HashMap<>();
		if(userId==null){
			JsonResult aliPayMsg=new JsonResult();
			aliPayMsg.setCode("1");
			aliPayMsg.setErrorDescription("用户id不能为空");
			return aliPayMsg;
		}
		map.put("userId", userId);
		map.put("year", year);
		map.put("start", (page-1)*15);
		map.put("end", 15);
		return redService.getSendListByUserIdAndYear(map);
	}
	/*
	 * 获取抢红包列表
	 */
	@ResponseBody
	@RequestMapping(value = "/getGrabListByUserIdAndYear.do")
	public JsonResult getGrabListByUserIdAndYear(int page,Long userId, Long year) {
		Map map = new HashMap<>();
		if(userId==null){
			JsonResult aliPayMsg=new JsonResult();
			aliPayMsg.setCode("1");
			aliPayMsg.setErrorDescription("用户id不能为空");
			return aliPayMsg;
		}
		map.put("userId", userId);
		map.put("year", year);
		map.put("start", (page-1)*15);
		map.put("end", 15);
		return redService.getGrabListByUserIdAndYear(map);
	}
	/*
	 * 获取实时的抢红包列表
	 */
	@ResponseBody
	@RequestMapping(value = "/getRealGrabListByRedId.do")
	public JsonResult getRealGrabListByUserIdAndYear(Long redId) {
		JsonResult jsonResult = redService.getGrabListByUserIdAndYear(redId);
		jsonResult.setDataObject(com.alibaba.fastjson.JSONObject.parse((String)jsonResult.getDataObject()));
		return jsonResult;
	} 
}
