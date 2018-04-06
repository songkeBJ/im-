package com.sellerNet.backManagement.controller.manager;

import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sellerNet.backManagement.config.PushConst;
import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.CountParm;
import com.sellerNet.backManagement.entity.AppMessage;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.UserCash;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.service.AppMessageService;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.service.UserCashService;
import com.sellerNet.backManagement.utils.ExcelException;
import com.sellerNet.backManagement.utils.ExcelUtils;
import com.sellerNet.backManagement.utils.StringUtil;

/**
 *提现管理
 */
@Controller
@RequestMapping("/admin")
public class UserCashController extends BaseController{
	
	@SuppressWarnings("unused")
	private static final Logger LOGGER = LoggerFactory.getLogger(UserCashController.class);
	
	@Resource
	 private UserCashService userCashService;
	
	@Resource
	private AppUserService userService;
	
	@Resource
	private AppUserOneService useroneService;
	
	@Resource
	private Groupemplate groupemplate;
	@Resource
	private RechargeRecordService rechargeRecordService;
	@Resource
	private AppMessageService appMessageService;
	
	
	
	/**
	 * 提现列表页面
	 */
	@RequestMapping(value="/userCash.do", method = RequestMethod.GET)
	public String gamePage(){
		return "userCash";
	}
	/**
	 * 提现统计页面
	 */
	@RequestMapping(value="/userCashCount.do", method = RequestMethod.GET)
	public String userCashCount(){
		return "userCashCount";
	}
	/**
	 * 提现按月统计页面
	 * @return
	 */
	@RequestMapping(value="/userCashCountMonth.do", method = RequestMethod.GET)
	public String userCashCountMonth(){
		return "userCashCountMonth";
	}
	/**
	 * 提现手续费统计页面
	 * @return
	 */
	@RequestMapping(value="/userCashPoundageCount.do", method = RequestMethod.GET)
	public String userCashPoundageCount(){
		return "userCashPoundageCount";
	}
	/**
	 * 提现手续费按月统计页面
	 * @return
	 */
	@RequestMapping(value="/userCashPoundageCountMonth.do", method = RequestMethod.GET)
	public String userCashPoundageCountMonth(){
		return "userCashPoundageCountMonth";
	}
	/**
	 * 提现统计数据
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/userCashCount.do", method = RequestMethod.POST)
	public Map<String, Object> userCashCountData(){
		CountParm count =new CountParm();
		Integer day =getNOTNULL(userCashService.dayCount(null));
		Integer month =getNOTNULL(userCashService.monthCount(null));
		Integer all =getNOTNULL(userCashService.allCount(null));
		List<CountParm> list =new ArrayList<CountParm>();
		count.setAll(all.toString());
		count.setMonth(month.toString());
		count.setToday(day.toString());
		list.add(count);
		Map result = new HashMap();
		result.put("rows", list);
		result.put("total", 1);
		return result;
	}
	/**
	 * 提现手续费统计数据
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/userCashPoundageCountData.do", method = RequestMethod.POST)
	public Map<String, Object> userCashPoundageCountData(){
		CountParm count =new CountParm();
		Integer day =getNOTNULL(userCashService.dayPoundageCount());
		Integer month =getNOTNULL(userCashService.monthPoundageCount());
		Integer all =getNOTNULL(userCashService.allPoundageCount());
		List<CountParm> list =new ArrayList<CountParm>();
		count.setAll(all.toString());
		count.setMonth(month.toString());
		count.setToday(day.toString());
		list.add(count);
		Map result = new HashMap();
		result.put("rows", list);
		result.put("total", 1);
		return result;
	}
	/**
	 * 提现手续费按月统计数据
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/userCashPoundageCountMonthData.do", method = RequestMethod.POST)
	public List<Map<String, Object>> userCashPoundageCountMonthData(){
		List<Map<String, Object>> result=userCashService.countCashPoundageByMonth();
		return result;
	}
	private Integer getNOTNULL(Integer day) {
		return day==null?0:day;
	}
	/**
	 * 提现按月统计数据
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/userCashCountByMonth.do", method = RequestMethod.POST)
	public List<Map<String, Object>> appUserCountByMonth(){
		List<Map<String, Object>> result=userCashService.countByMonth(null);
		return result;
	}
	/**
	 * 获取提现列表页面信息
	 * @return
	 */
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@ResponseBody
	@RequestMapping(value="/userCashList.do", method = {RequestMethod.POST,RequestMethod.GET})
	public Map<String, Object> getUserList(@RequestParam(value = "page",required=false,defaultValue="1") String page,
			                      		   @RequestParam(value = "rows",required=false,defaultValue="10") String rows,
			                      		    @RequestParam(value = "status",required=false) Integer status,
			                      		   @RequestParam(value = "userName",required=false) String userName,@RequestParam(value = "phoneNumber",required=false) String phoneNumber){
		PageEntity pageEntity = new PageEntity(Integer.parseInt(page), Integer.parseInt(rows));
		Map map = new HashMap<>();
		if(StringUtil.isNotEmpty(userName)){
			map.put("userName", userName);
		}
		if(StringUtil.isNotEmpty(phoneNumber)){
			map.put("phoneNumber", phoneNumber);
		}
		map.put("status", status);
		pageEntity.setParams(map);
		PagingResult gameList = userCashService.selectPagination(pageEntity);
		Map result = new HashMap();
		//转换用户金额
		List<UserCash> list =gameList.getResultList();
		for (UserCash userCash : list) {
			if(userCash.getWeixinAccount()!=null&&!userCash.getWeixinAccount().equals("")){
				userCash.setCashType("微信");
			}
			
			if(userCash.getZfbAccount()!=null&&!userCash.getZfbAccount().equals("")){
				userCash.setCashType("支付宝");
			}
			
			if(userCash.getBankNum()!=null&&!userCash.getBankNum().equals("")){
				userCash.setCashType("银行卡");
			}
		}
		result.put("rows", gameList.getResultList());
		result.put("total", Integer.valueOf(gameList.getTotalSize()));
		return result;
	}
	
	/**
	 * 保存或者修改提现
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping(value="/saveUserCash.do", method = RequestMethod.POST)
	public JSONObject saveUser(@RequestParam(value = "id",required=false) String id,
							   @RequestParam(value = "status",required=false) Integer status,
							   @RequestParam(value = "reason",required=false) String reason) throws Exception{
		JSONObject result=new JSONObject();
		String[] str1 =  id.split(",");
		for (String idss : str1) {
			UserCash uc =userCashService.get(Integer.parseInt(idss));
			if(status==1){
				AppMessage appMessage = new AppMessage();
				appMessage.setPushtime(new Date());
				appMessage.setIsread(0);
				appMessage.setUserid(uc.getUserId().longValue());
				appMessage.setType(PushConst.USERCASH);
				appMessage.setTitle("提现申请");
				appMessage.setContent("提现申请通过,金额："+uc.getMoney()+"元");
				appMessageService.pushMessage(appMessage);
			}
			
			if(status==2){
				if(uc.getStatus()==1){
					result.put("success", false);
					result.put("errorMsg", "已打款，无法驳回");
					return result;
				}
				if(uc.getStatus()==2){
					result.put("success", false);
					result.put("errorMsg", "无法重复操作！");
					return result;
				}
				
				
					//uc.setReason(reason);
				  UserOne userOne2 = useroneService.get(uc.getUserId());
				  BigDecimal money1 =userOne2.getBalance();
				  BigDecimal money2 =uc.getMoney();
				  BigDecimal money3 =uc.getRealmoney();
				  userOne2.setBalance(money1.add(money2).add(money3));
				  useroneService.update(userOne2);//如果被拒绝返回金额
				  
				  AppMessage appMessage = new AppMessage();
				  appMessage.setPushtime(new Date());
				  appMessage.setIsread(0);
				  appMessage.setUserid(uc.getUserId().longValue());
			      appMessage.setType(PushConst.USERCASH);
				  appMessage.setTitle("提现申请");
				  appMessage.setContent("提现失败，请重新确认提现信息！");
				  appMessageService.pushMessage(appMessage);
				    
				    //保存支付金额记录
			        RechargeRecord rechargeRecord = new RechargeRecord();
			        rechargeRecord.preCreate((long)uc.getUserId());
			        rechargeRecord.setUserId(uc.getUserId());
			        rechargeRecord.setAmount(money2.add(money3).toString());
			        rechargeRecord.setActive("19");
			        rechargeRecordService.insert(rechargeRecord);
			}
			uc.setStatus(status);
			userCashService.update(uc);
		}
		//推送提现消息
		result.put("success", true);
		result.put("errorMsg", "处理成功");
		return result;
	}
	
	@RequestMapping("/exportUserCash")  
	public void leadToExcelQuestionBank(HttpServletRequest request,  
	        HttpServletResponse response,@RequestParam(value = "status",required=false) Integer status) throws UnsupportedEncodingException {  
	    try {  
	        // 获取前台传来的题型和课程  
	        // excel表格的表头，map  
	        LinkedHashMap<String, String> fieldMap = new LinkedHashMap<String, String>();
	          fieldMap.put("userName", "用户名");
	          fieldMap.put("phone", "手机号码");
	          fieldMap.put("bankName", "银行名称");
	          fieldMap.put("bankNum", "银行账号");
	          fieldMap.put("bankBranch", "银行支行");
	          fieldMap.put("bankRealname", "本人姓名");
	          fieldMap.put("weixinAccount", "微信账号");
	          fieldMap.put("zfbAccount", "支付宝账号账号");
	          fieldMap.put("cashType", "提现方式");
	          fieldMap.put("addtime", "创建时间");
	        // excel的sheetName  
	        String sheetName = "充值流水";  
	        // excel要导出的数据  
	        Map map = new HashMap();
	        map.put("status", status);
	    	List<UserCash> gameList = userCashService.selectParam(map);
			Map result = new HashMap();
			//转换用户金额
			for (UserCash userCash : gameList) {
				if(userCash.getWeixinAccount()!=null&&!userCash.getWeixinAccount().equals("")){
					userCash.setCashType("微信");
				}
				
				if(userCash.getZfbAccount()!=null&&!userCash.getZfbAccount().equals("")){
					userCash.setCashType("支付宝");
				}
				
				if(userCash.getBankNum()!=null&&!userCash.getBankNum().equals("")){
					userCash.setCashType("银行卡");
				}
			}
			
	        // 导出  
	            //将list集合转化为excle  
            ExcelUtils.listToExcel(gameList, fieldMap, sheetName, response);  
            System.out.println("导出成功~~~~");  
	    } catch (ExcelException e) {  
	        e.printStackTrace();  
	    }  
	}  

}
