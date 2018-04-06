package com.sellerNet.backManagement.controller.manager;

import com.sellerNet.backManagement.config.PushConst;
import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.CountParm;
import com.sellerNet.backManagement.entity.AppMessage;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppMessageService;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.utils.Constant;
import com.sellerNet.backManagement.utils.ExcelException;
import com.sellerNet.backManagement.utils.ExcelUtils;
import com.sellerNet.backManagement.utils.Md5Utils;
import com.sellerNet.backManagement.utils.StringUtil;
import net.sf.json.JSONObject;
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

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/*
 * 充值管理
 */
@Controller
@RequestMapping({"/admin"})
public class RechargeController extends BaseController
{
  private static final Logger LOGGER = LoggerFactory.getLogger(RechargeController.class);

  @Resource
  private RechargeRecordService rechargeRecordService;
	@Resource
	private AppUserOneService appUserOneService;
	@Resource
	private AppMessageService appMessageService;

  @RequestMapping(value={"/rechargeRecordManage.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String appuserManage()
  {
    return "rechargeRecordManage";
  }
  
  @RequestMapping(value={"/sincerityManage.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String sincerityManage()
  {
    return "sincerityManage";
  }
  
  /**
   * 后台充值流水
   * @return
   */
  @RequestMapping(value={"/sysMoneyManage.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String sysMoneyManage()
  {
    return "sysMoneyManage";
  }
  /**
   * 按月充值统计页面
   * @return
   */
  @RequestMapping(value={"/rechargeRecordCountMonth.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String appuserCashCountMonth()
  {
	  return "rechargeRecordCountMonth";
  }
  /**
   * 按月充值统计数据
   * @return
   */
	@ResponseBody
	@RequestMapping(value="/rechargeRecordCountMonthData.do", method = RequestMethod.POST)
	public List<Map<String, Object>> userCashPoundageCountMonthData(){
		List<Map<String, Object>> result=rechargeRecordService.userCashPoundageCountMonthData();
		return result;
	}
	private Integer getNOTNULL(Integer day) {
		return day==null?0:day;
	}
  
  /**
   * 后台充值流水
   * @return
   */
  @SuppressWarnings("rawtypes")
@ResponseBody
  @RequestMapping(value={"/sysMoneyManageList.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public Map<String, Object> sysMoneyManageList(@RequestParam(value="page", required=false) String page, @RequestParam(value="rows", required=false) String rows, 
		  @RequestParam(value="phoneNumber", required=false) String phoneNumber, 
		  @RequestParam(value="userName", required=false) String userName, 
		  @RequestParam(value="active", required=false) String active)
  {
    Map result = new HashMap();
    PageEntity pageEntity = new PageEntity(Integer.valueOf(Integer.parseInt(page)), Integer.valueOf(Integer.parseInt(rows)));
    Map map = new HashMap();
    if (StringUtil.isNotEmpty(phoneNumber)) {
      map.put("phoneNumber", phoneNumber);
    }
    if (StringUtil.isNotEmpty(userName)) {
      map.put("userName", userName);
    }
    if (StringUtil.isNotEmpty(active)) {
        map.put("active", active);
    }else{
    	 map.put("active2", 13);
    }
    pageEntity.setParams(map);
    PagingResult feedbacklist = this.rechargeRecordService.selectPagination(pageEntity);
    result.put("rows", feedbacklist.getResultList());
    result.put("total",feedbacklist.getTotalSize() );
    return result;
  }
  
  
  @SuppressWarnings({ "rawtypes", "unchecked" })
@ResponseBody
	@RequestMapping(value="/rechargeRecordCountList2.do", method = RequestMethod.POST)
	public Map<String, Object> rechargeRecordCountList2(){
	  CountParm count =new CountParm();
	
	  Integer allAddCount =rechargeRecordService.sumRequestAll(null); //总互加好友次数
	  Map map2 =new HashMap<>();
	  map2.put("day", 0);
	  Integer dayAddCount =rechargeRecordService.sumRequestAll(map2);//本月互加好友次数
	  Map map3 =new HashMap<>();
	  map3.put("month", 0);
	  Integer monthAddCount =rechargeRecordService.sumRequestAll(map3);//今日互加好友次数
	  
	  	Map map =new HashMap<>();
	  	map.put("active", 1);
		String aa =rechargeRecordService.alladdPay(map); 
		if(aa==null){
			aa="0";
		}
		map.put("active", 18);
		String bb =rechargeRecordService.alladdPay(map);
		if(bb==null){
			bb="0";
		}
	//	BigDecimal dd =new BigDecimal(aa).subtract(new BigDecimal(bb));
		BigDecimal dd =new BigDecimal(aa);
		
		map.put("active", 4);
		String cc =rechargeRecordService.alladdPay(map);
		if(cc==null){
			cc="0";
		}
		List<CountParm> list =new ArrayList<CountParm>();
		count.setAll(dd.setScale(2,BigDecimal.ROUND_HALF_UP).toString());//总的，支付减去退回的
		count.setMonth(new BigDecimal(cc).setScale(2,BigDecimal.ROUND_HALF_UP).toString());
		count.setP1(allAddCount.toString());
		count.setP2(dayAddCount.toString());
		count.setP3(monthAddCount.toString());
		
		Map todayAllGetMap =new HashMap<>();
		todayAllGetMap.put("day", 0);
		String todayAllGet =rechargeRecordService.getAllSincer(todayAllGetMap);
		if(todayAllGet==null){
			todayAllGet="0";
		}
		count.setP4(new BigDecimal(todayAllGet).setScale(2,BigDecimal.ROUND_HALF_UP).toString());//今日诚意金金额
		Map tmoneyAllGetMap =new HashMap<>();
		tmoneyAllGetMap.put("month", 0);
		String tmoneyAllGet =rechargeRecordService.getAllSincer(tmoneyAllGetMap);
		if(tmoneyAllGet==null){
			tmoneyAllGet="0";
		}
		count.setP5(new BigDecimal(tmoneyAllGet).setScale(2,BigDecimal.ROUND_HALF_UP).toString());//本月诚意金金额
		list.add(count);
		
		Map result = new HashMap();
		result.put("rows", list);
		result.put("total", 1);
		return result;
	}
  
  @RequestMapping(value={"/rechargeRecordCount.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET})
  public String rechargeRecordCount()
  {
    return "rechargeRecordCount";
  }
  
  @ResponseBody
	@RequestMapping(value="/rechargeRecordCountList.do", method = RequestMethod.POST)
	public Map<String, Object> rechargeRecordCountList(){
	  	Map map =new HashMap<>();
		CountParm count =new CountParm();
		String day =rechargeRecordService.dayCount(map);
		if(day==null){
			day="0";
		}
		String month =rechargeRecordService.monthCount(map);
		if(month==null){
			month="0";
		}
		String all =rechargeRecordService.allCount(map);
		if(all==null){
			all="0";
		}
		map.put("active", 12);
		String handAdd =rechargeRecordService.alladdPay(map);
		if(handAdd==null){
			handAdd="0";
		}
		
		List<CountParm> list =new ArrayList<CountParm>();
		count.setAll(new BigDecimal(all).setScale(2, BigDecimal.ROUND_HALF_UP).toString());
		count.setMonth(new BigDecimal(month).setScale(2, BigDecimal.ROUND_HALF_UP).toString());
		count.setToday(new BigDecimal(day).setScale(2, BigDecimal.ROUND_HALF_UP).toString());
		count.setP1(new BigDecimal(handAdd).setScale(2, BigDecimal.ROUND_HALF_UP).toString());
		list.add(count);
		
		Map result = new HashMap();
		result.put("rows", list);
		result.put("total", 1);
		return result;
	}
	

  @ResponseBody
  @RequestMapping(value={"/rechargeRecordList.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public Map<String, Object> appuserList(@RequestParam(value="page", required=false) String page, @RequestParam(value="rows", required=false) String rows, 
		  @RequestParam(value="phoneNumber", required=false) String phoneNumber, 
		  @RequestParam(value="userName", required=false) String userName, 
		  @RequestParam(value="orderId", required=false) String orderId)
  {
    Map result = new HashMap();
    PageEntity pageEntity = new PageEntity(Integer.valueOf(Integer.parseInt(page)), Integer.valueOf(Integer.parseInt(rows)));
    Map map = new HashMap();
    map.put("start", Long.valueOf(Long.valueOf(page).longValue() - 1L));
    map.put("end", Long.valueOf(rows));
    if (StringUtil.isNotEmpty(phoneNumber)) {
      map.put("phoneNumber", phoneNumber);
    }
    if (StringUtil.isNotEmpty(userName)) {
      map.put("userName", userName);
    }
    if (StringUtil.isNotEmpty(orderId)) {
        map.put("orderId", orderId);
      }
    map.put("active", 6);
    pageEntity.setParams(map);
    PagingResult feedbacklist = this.rechargeRecordService.selectPagination(pageEntity);
    result.put("rows", feedbacklist.getResultList());
    result.put("total", Integer.valueOf(feedbacklist.getTotalSize()));
    return result;
  }
  
	/**
	 * 修改金额
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping(value="/updateRechargeRe.do", method = RequestMethod.POST)
	public JSONObject updateRechargeRe(@RequestParam("id") Integer id,@RequestParam("status") Integer status,@RequestParam("amount") String amount) throws Exception{
		JSONObject result=new JSONObject();
		UserOne userOne = appUserOneService.get(id);
		BigDecimal b1 =userOne.getBalance();
		BigDecimal b2 = new BigDecimal(amount);
		if(status==0){
			userOne.setBalance(b1.add(b2));
			//推送充值信息
			AppMessage appMessage = new AppMessage();
			  appMessage.setPushtime(new Date());
			  appMessage.setIsread(0);
			  appMessage.setUserid(id.longValue());
		      appMessage.setType(PushConst.RECHARGE);
			  appMessage.setTitle("充值");
			  appMessage.setContent("您已成功充值"+b2.toString()+"元");
			  appMessageService.pushMessage(appMessage);
		}
		
		if(status==1){
			if(b1.compareTo(b2)==-1){
				  result.put("success", false);
				  result.put("errorMsg", "钱包余额不足");
			     return result; 
			 }
			userOne.setBalance(b1.subtract(b2));
			//推送扣款信息
			AppMessage appMessage = new AppMessage();
			  appMessage.setPushtime(new Date());
			  appMessage.setIsread(0);
			  appMessage.setUserid(id.longValue());
		      appMessage.setType(PushConst.RECHARGE);
			  appMessage.setTitle("扣款");
			  appMessage.setContent("您已成功扣款"+b2.toString()+"元");
			  appMessageService.pushMessage(appMessage);
		}
		
		RechargeRecord rechargeRecord = new RechargeRecord();
		rechargeRecord.setUserId(id);
		rechargeRecord.setAmount(amount);
		rechargeRecord.setCreatedTime(new Date());
		if(status==0){
			rechargeRecord.setActive("12");
		}
		if(status==1){
			rechargeRecord.setActive("13");
		}
		
		rechargeRecordService.insert(rechargeRecord);
		
		appUserOneService.update(userOne);
		result.put("success", true);
		return result;
	}
	
	
	/** 
	 * 导出excel题型题库 
	 * 
	 */  
	@RequestMapping("/exportRecharge")  
	public void leadToExcelQuestionBank(HttpServletRequest request,  
	        HttpServletResponse response) throws UnsupportedEncodingException {  
	    try {  
	        // 获取前台传来的题型和课程  
	        // excel表格的表头，map  
	        LinkedHashMap<String, String> fieldMap = new LinkedHashMap<String, String>();
	          fieldMap.put("orderId", "订单号");
	          fieldMap.put("amount", "订单金额");
	          fieldMap.put("userName", "用户");
	          fieldMap.put("phoneNumber", "手机号码");
	          fieldMap.put("createdTime", "创建时间");
	        // excel的sheetName  
	        String sheetName = "充值流水";  
	        // excel要导出的数据  
	        Map map = new HashMap();
	        map.put("active", 6);
	        List<RechargeRecord> list= this.rechargeRecordService.selectParam(map);
	        // 导出  
	        if (list == null || list.size() == 0) {  
	            System.out.println("数据为空");  
	        }else {  
	            //将list集合转化为excle  
	            ExcelUtils.listToExcel(list, fieldMap, sheetName, response);  
	            System.out.println("导出成功~~~~");  
	        }  
	    } catch (ExcelException e) {  
	        e.printStackTrace();  
	    }  
	}  
}