package com.sellerNet.backManagement.controller.imApp;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.UserCash;
import com.sellerNet.backManagement.entity.UserCashDto;
import com.sellerNet.backManagement.entity.UserCashDto2;
import com.sellerNet.backManagement.openapi.sdk.utils.DateUtil;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.service.UserCashService;
import com.sellerNet.backManagement.utils.Constant;
import com.sellerNet.backManagement.utils.NumberUtil;

/**
 * 充值管理
 * 1、充值记录
 * 2、提成记录
 */
@RestController
@RequestMapping("/api/users")
public class RechargeManagerController extends BaseController{

	private static final Logger LOGGER = LoggerFactory.getLogger(RechargeManagerController.class);
	
	
	@Resource
	private RechargeRecordService rechargeRecordService;
	
	@Resource
	private UserCashService userCashService;
	
	
	/**
	 * 查询充值记录信息
	 * 
	 * @param  phoneNumber
	 * @return user信息
	 */
	@RequestMapping(value="rechargeRecord.do",method={RequestMethod.GET,RequestMethod.POST})
	@ResponseStatus(HttpStatus.OK)
	public JsonResult rechargeRecord(@RequestParam(value="id",required=false) Long userId,
			                         @RequestParam(value="limit",required=false) String limit){
		JsonResult jsonResult = new JsonResult<>();
		if(userId==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		}
		//<editor-fold desc="step1 : 获取用户充值记录>
		List<RechargeRecord> rechargeRecords = rechargeRecordService.selectByUserId(userId,limit,Constant.orderActive.RECHARGE.name());
		jsonResult.setDataObject(rechargeRecords);
		//<editor-fold >
		//<editor-fold desc="step2 : 返回用户信息到客户端>
		jsonResult.setErrorDescription("获取用户充值记录成功");
		return jsonResult;
		//<editor-fold >
	}
	
	/**
	 * 查询提成记录信息
	 * 
	 * @param  phoneNumber
	 * @return user信息
	 */
	@RequestMapping(value="royaltyRecord.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult royaltyRecord(@RequestParam(value="userId") Long userId,
									@RequestParam(value="page") String limit){
		JsonResult jsonResult = new JsonResult<>();
		if(userId==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		}
		//<editor-fold desc="step1 : 获取用户充值记录>
		List<RechargeRecord> rechargeRecords = rechargeRecordService.selectByUserId(userId,limit,Constant.orderActive.ROYALTY.name());
		//<editor-fold >
		
		//<editor-fold desc="step2 : 返回用户信息到客户端>
		jsonResult.setDataObject(rechargeRecords);
		jsonResult.setErrorDescription("获取用户提现记录成功");
		return jsonResult;
		//<editor-fold >
	}
	
	
	/**
	 * 提现
	 */
	@RequestMapping(value = "withdrawals.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult withdrawals(@RequestParam(value="amount",required=false) String amount,
			                      @RequestParam(value="userId",required=false) Long userId,
			                      @RequestParam(value="bankCard",required=false) String bankCard){
		JsonResult jsonResult = new JsonResult<>();
		if(userId==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		}
		if(amount==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("提现金额不能为空");
			return jsonResult;
		}
		if(bankCard==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("银行卡号不能为空");
			return jsonResult;
		}
		//<editor-fold desc="step1 :记录充值记录 >
		RechargeRecord record = new RechargeRecord();
		record.setActive(Constant.orderActive.WITHDRAWALS.name());
		record.setAmount(amount);
		record.preCreate(userId);
		record.setPhoneNumber(bankCard);
		rechargeRecordService.insert(record);
		//<editor-fold >
		jsonResult.setErrorDescription("提现成功");
		return jsonResult;
	}
	
	
	/**
	 * 提现记录
	 */
	@RequestMapping(value = "userCash.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult<UserCashDto> withdrawals(@RequestParam(value="id",required=false) String userId,
								  @RequestParam(value="year",required=false) String year,
								  @RequestParam(value="page",required=false) String page){
		JsonResult jsonResult = new JsonResult<>();
		if(userId==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		}
		if(year==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("时间不能为空");
			return jsonResult;
		}
		if(page==null){
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("当前页号不能为空");
			return jsonResult;
		}
		//<editor-fold desc="step1 :记录充值记录 >
		Map map = new HashMap();
		map.put("userId",Integer.parseInt(userId));
		map.put("start", 0);
		map.put("end", NumberUtil.countOffset(Integer.valueOf(page)));
		String start = String.valueOf(DateUtil.strToDate(year+"-01"+" 00:00:00").getTime());
		start = start.substring(0, start.length()-3);
		map.put("startTime", Long.valueOf(start));
		String end = String.valueOf(DateUtil.strToDate(year+"-31"+" 00:00:00").getTime());
		end = end.substring(0, end.length()-3);
		map.put("endTime", Long.valueOf(end));
		List<UserCash> userCaches = userCashService.selectParam(map);
		BigDecimal totalmoney = new BigDecimal(0);
		for (UserCash usrCash:userCaches) {
			totalmoney=totalmoney.add(usrCash.getMoney());
		}
		UserCashDto userCashDto = new UserCashDto();
		userCashDto.setTotalMoney(Integer.parseInt(totalmoney.toString()));
		for(UserCash userCash:userCaches){
			UserCashDto2 userCashDto2 = new UserCashDto2();
			String createDate = DateUtil.stampToDate(userCash.getAddtime().toString()+"000");
			userCashDto2.setAddtime(createDate);
			userCashDto2.setBankName(userCash.getBankName());
			userCashDto2.setBankNum(userCash.getBankNum());
			userCashDto2.setMoney(Integer.parseInt(userCash.getMoney().toString()));
			userCashDto.getUserCashs().add(userCashDto2);
		}
		//<editor-fold >
		jsonResult.setDataObject(userCashDto);
		jsonResult.setErrorDescription("获取提现记录成功");
		return jsonResult;
	}
	
	
	
	
	
	

}
