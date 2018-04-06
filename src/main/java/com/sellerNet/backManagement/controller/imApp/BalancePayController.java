package com.sellerNet.backManagement.controller.imApp;
/**
 * 1添加好友
2发布广告
3支付诚意金
其他
4被添加好友
5获得诚意金
6充值
7申请提现
 */
import java.math.BigDecimal;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.RechargeRecordService;
@Controller
@RequestMapping("api/balance")
public class BalancePayController {
	private static final Logger LOGGER = LoggerFactory.getLogger(BalancePayController.class);
	
	@Resource
	private RechargeRecordService rechargeRecordService;
	
	@Resource
	private AppUserOneService userOneService;
	
	@Resource
	private AppUserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/gotopay.do",method={RequestMethod.GET,RequestMethod.POST})
	public  JsonResult alipay(@RequestParam(value = "amount", required = false) String amount,
								@RequestParam(value="id",required=false) Long id,
								@RequestParam(value="token",required=false) String token,
								@RequestParam(value="payType",required=false) Integer payType,
								HttpServletRequest request) throws Exception {
		JsonResult json = new JsonResult<>();
	        //判断入参
			if(amount==null){
				json.setCode("1");
				json.setErrorDescription("金额不能为空");
				return json;   
			}
			if (payType == null) {
				json.setCode("1");
				json.setErrorDescription("payType支付类型不能为空");
				return json;
			}
			if(token==null){
				json.setCode("1");
				json.setErrorDescription("token秘钥不能为空");
				return json;   
			}else if(token!=null){
				UserOne userOne = userOneService.get(Integer.parseInt(id.toString()));
				User user = userService.byUserId(id);
				if(!user.getToken().equals(token)){
					json.setCode("1");
					json.setErrorDescription("token秘钥异常");
					return json;
				}
				if(userOne.getMoneylock()!=null&&userOne.getMoneylock()==1){
					json.setCode("1");
					json.setErrorDescription("余额暂时被冻结,请联系客服！");
					return json;
				}
			}
			//判断余额是否有
			UserOne userOne2 = userOneService.get(Integer.parseInt(id.toString()));
			BigDecimal money1 = userOne2.getBalance();
			BigDecimal money2 = new BigDecimal(amount);
			if(money1.compareTo(money2)==-1){
				json.setCode("1");
				json.setErrorDescription("钱包余额不足");
				return json;
			}else{
			     //生成订单开始
				if(!payType.toString().equals("1")){
					Order order = new Order();
					order.preCreate(id);
					order.setAmount(amount);
					order.setActualamount(amount);
					order.setOrderId("");
					order.setStatus(payType.toString());
					//orderService.insert(order);
					
					RechargeRecord rechargeRecord = new RechargeRecord();
					rechargeRecord.setUserId(Integer.parseInt(id.toString()));
					rechargeRecord.setAmount(amount);
					rechargeRecord.setOrderId(order.getOrderId());
					rechargeRecord.setCreatedTime(new Date());
					rechargeRecord.setActive(payType.toString());
					rechargeRecordService.insert(rechargeRecord);
				}
				userOne2.setBalance(money1.subtract(money2));
				userOneService.update(userOne2);
				json.setCode("0");
				json.setErrorDescription("支付成功");
			}
	        return json; 
	     }

}
