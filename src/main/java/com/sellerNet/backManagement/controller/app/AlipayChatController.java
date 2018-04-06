package com.sellerNet.backManagement.controller.app;

import java.math.BigDecimal;
import java.net.URLEncoder;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.util.AliPayMsg;
import com.alipay.util.AlipayChatConfig;
import com.alipay.util.AlipayCore;
import com.alipay.util.UtilDate;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.utils.Constant;
import com.sellerNet.backManagement.utils.MoneyUtils;
import com.sellerNet.backManagement.utils.URLUtil;
import com.tenpay.util.TenpayUtil;
/**
 * 支付controller
 *
 */
@Controller
@RequestMapping("api/alipay/chat")
public class AlipayChatController {
	private static final Logger LOGGER = LoggerFactory.getLogger(AlipayChatController.class);
	
	@Resource
	private RechargeRecordService rechargeRecordService;
	
	@Autowired
	private AppUserOneService userOneService;
	
	@Resource
	private AppUserService userService;
	
	@ResponseBody
	@RequestMapping(value = "/gotopay.do",method={RequestMethod.GET,RequestMethod.POST})
	public  JSONObject alipay(@RequestParam(value="body",required=false) String body,
								@RequestParam(value="subject",required=false) String subject,
								@RequestParam(value = "actualamount", required = false) String actualamount,
								@RequestParam(value = "amount", required = false) String amount,
								@RequestParam(value="id",required=false) Long id,
								@RequestParam(value="phoneNumber",required=false) String phoneNumber,
								@RequestParam(value="moneyType",required=false) String moneyType,
								@RequestParam(value="token",required=false) String token,
								HttpServletRequest request) throws Exception {
	        //判断入参
			if(body==null){
				AliPayMsg apm = new AliPayMsg();
		        apm.setCode("1");
		        apm.setErrorDescription("商品描述不能为空");
		        JSONObject json = JSONObject.fromObject(apm);
		        return json;   
			}
			if(subject==null){
				AliPayMsg apm = new AliPayMsg();
				apm.setCode("1");
				apm.setErrorDescription("商品的标题不能为空");
				JSONObject json = JSONObject.fromObject(apm);
				return json;   
			}
			if(amount==null){
				AliPayMsg apm = new AliPayMsg();
				apm.setCode("1");
				apm.setErrorDescription("订单金额不能为空");
				JSONObject json = JSONObject.fromObject(apm);
				return json;   
			}
			if(token==null){
				AliPayMsg apm = new AliPayMsg();
				apm.setCode("1");
				apm.setErrorDescription("token秘钥不能为空");
				JSONObject json = JSONObject.fromObject(apm);
				return json;   
			}else if(token!=null){
				//UserOne userOne = userOneService.get(Integer.parseInt(id.toString()));
				User user = userService.byUserId(id);
				if(!user.getToken().equals(token)){
					AliPayMsg apm = new AliPayMsg();
					apm.setCode("1");
					apm.setErrorDescription("token秘钥异常");
					JSONObject json = JSONObject.fromObject(apm);
					return json;
				}
			}
			//判断余额是否有
			UserOne userOne2 = userOneService.get(Integer.parseInt(id.toString()));
			  BigDecimal money1 =userOne2.getBalance();
			  BigDecimal money2 = new BigDecimal(amount);
			  if(money1.compareTo(money2)==-1){
				  AliPayMsg apm = new AliPayMsg();
				  apm.setCode("1");
				  apm.setErrorDescription("钱包余额不足");
				  JSONObject json = JSONObject.fromObject(apm);
				  return json;
			  }
			//---------------生成订单号 开始------------------------
			String out_trade_no = "";
			//当前时间 yyyyMMddHHmmss
			String currTime = TenpayUtil.getCurrTime();
			//8位日期
			String strTime = currTime.substring(8, currTime.length());
			//四位随机数
			String strRandom = TenpayUtil.buildRandom(4) + "";
			//10位序列号,可以自行调整。
			String strReq = strTime + strRandom;
			//订单号，此处用时间加随机数生成，商户根据自己情况调整，只要保持全局唯一就行
			LOGGER.info("生成订单号：" +strReq);
			out_trade_no = strReq;
			//---------------生成订单号 结束------------------------
		
			//公共参数
	         Map<String, String> map = new HashMap<String, String>();
	         map.put("app_id", AlipayChatConfig.app_id);
	         map.put("method", "alipay.trade.app.pay");
	         map.put("format", "json");
	         map.put("charset", "utf-8");
	         map.put("sign_type", "RSA");
	         map.put("timestamp", UtilDate.getDateFormatter());
	         map.put("version", "1.0");
	         map.put("notify_url",URLUtil.getHomeUrl(request.getScheme(), request.getServerName(), request.getServerPort())+AlipayChatConfig.service);
             LOGGER.info("支付宝回调地址"+URLUtil.getHomeUrl(request.getScheme(), request.getServerName(), request.getServerPort())+AlipayChatConfig.service);
	         Map<String, String> m = new HashMap<String, String>();

	         m.put("body", body);
	         m.put("subject", subject);
	         m.put("out_trade_no", out_trade_no);
	         m.put("timeout_express", "30m");
	         m.put("total_amount", amount);
	         m.put("seller_id","");
	         m.put("product_code", "QUICK_MSECURITY_PAY");

	         JSONObject bizcontentJson= JSONObject.fromObject(m);

	         map.put("biz_content", bizcontentJson.toString());
	        //对未签名原始字符串进行签名       
	        String rsaSign = AlipaySignature.rsaSign(map, AlipayChatConfig.private_key, "utf-8");

	         Map<String, String> map4 = new HashMap<String, String>();

	         map4.put("app_id", AlipayChatConfig.app_id);
	         map4.put("method", "alipay.trade.app.pay");
	         map4.put("format", "json");
	         map4.put("charset", "utf-8");
	         map4.put("sign_type", "RSA");
	         map4.put("timestamp", URLEncoder.encode(UtilDate.getDateFormatter(),"UTF-8"));
	         map4.put("version", "1.0");
	         map4.put("notify_url",  URLEncoder.encode(URLUtil.getHomeUrl(request.getScheme(), request.getServerName(), request.getServerPort())+AlipayChatConfig.service,"UTF-8"));
	         //最后对请求字符串的所有一级value（biz_content作为一个value）进行encode，编码格式按请求串中的charset为准，没传charset按UTF-8处理
	         map4.put("biz_content", URLEncoder.encode(bizcontentJson.toString(), "UTF-8"));

//	       Boolean boolean1 = AlipaySignature.rsaCheck(map, rsaSign, AlipayChatConfig.alipay_public_key, "UTF-8", "RSA");
	         
	        Map par = AlipayCore.paraFilter(map4); //除去数组中的空值和签名参数
	        String json4 = AlipayCore.createLinkString(map4);   //拼接后的字符串

	        json4=json4 + "&sign=" + URLEncoder.encode(rsaSign, "UTF-8");

	        System.out.println(json4.toString());

	        AliPayMsg apm = new AliPayMsg();
	        apm.setCode("0");
//	        apm.setMsg("返回app端支付接口参数成功");
	        apm.setDataObject(json4.toString());

	        JSONObject json = JSONObject.fromObject(apm);
	        System.out.println(json.toString());
	        //生成订单开始
			Order order = new Order();
			order.preCreate(id);
			order.setAmount(amount);
			order.setActualamount(actualamount);
			order.setOrderId(out_trade_no);
			//系统
			order.setStatus(Constant.orderType.ALI_X_ZFZ.name());
			if(phoneNumber!=null){
				order.setPhoneNumber(phoneNumber);
			}
			//orderService.insert(order);TODO
			//生成pc端订单
			//TODO
	        return json; 
	     }
	
	@ResponseBody
	@RequestMapping(value = "/callbacks.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult<String> callbacks( HttpServletRequest request ) throws Exception {
	        JsonResult jsonResult = new JsonResult<>();
			//接收支付宝返回的请求参数
	        Map requestParams = request.getParameterMap();

	        JSONObject json = JSONObject.fromObject(requestParams);
//
//	        String trade_status = json.get("trade_status").toString().substring(2,json.get("trade_status").toString().length()-2);
//	        String out_trade_no = json.get("out_trade_no").toString().substring(2,json.get("out_trade_no").toString().length()-2);
//	        String notify_id = json.get("notify_id").toString().substring(2,json.get("notify_id").toString().length()-2);
//	        String total_amount = json.get("total_amount").toString().substring(2,json.get("total_amount").toString().length()-2);
	        String trade_status = "TRADE_SUCCESS";
	        String out_trade_no = "1601591437";
	        String notify_id = "111";
	        String total_amount = "0.01";

	        System.out.println("====================================================");
	        System.out.println(json.toString());
	        System.out.println("支付宝回调地址！");
	        System.out.println("商户的订单编号：" + out_trade_no);//=="1554019432"
	        System.out.println("支付的状态：" + trade_status);//=="TRADE_SUCCESS"
	        if(trade_status.equals("TRADE_SUCCESS")) {
	        	
                /**
                 *支付成功之后的业务处理
                 */
	        	//更新订单状态
				String orderId = out_trade_no;
//				Order order= orderService.selectByOrderId(orderId);
//			    order.setStatus(Constant.orderType.ALI_X_ZFWC.name());
//				orderService.update(order);
				//TODO
				//修改用户信息
//				UserOne userOne = userOneService.get(Integer.parseInt(order.getCreator().toString()));
//				System.out.println("手机号吗是： "+order.getPhoneNumber()+"支付金额   "+order.getAmount()+"实际支付金额     "+total_amount);
//				System.out.println("没更新之前用户金额： "+userOne.getBalance());
//				//系统充值
//				//将元转化成分
//				//String balance = MoneyUtils.changeY2F(order.getAmount());
//				int amount2 = Math.round(Float.valueOf(balance));
//				BigDecimal b1 = userOne.getBalance();
//				BigDecimal b2 = new BigDecimal(amount2);
//				userOne.setBalance(b1.add(b2));
//				userOneService.update(userOne);
				//System.out.println("更新之后用户金额"+userOne.getBalance());
				//------------------------------
				//充值记录
				String amount =total_amount;
				RechargeRecord rechargeRecord = new RechargeRecord();
				rechargeRecord.setAmount(amount);
				rechargeRecord.setOrderId(orderId);
				rechargeRecord.setCreatedTime(new Date());
				rechargeRecord.setActive("SMALL_ALI_X_ZFWC");
				rechargeRecordService.insert(rechargeRecord);
				jsonResult.setCode("0");
				jsonResult.setErrorDescription("支付成功");
	            return jsonResult;
	        }else{
	            /**
	             *支付失败后的业务处理
	             */
	        	jsonResult.setCode("1");
				jsonResult.setErrorDescription("支付失败");
	            return jsonResult;
	        }
	    }
	
	public static void main(String[] args) throws Exception {
		String money  = MoneyUtils.changeY2F("11111.01");
		int amount = Math.round(Float.valueOf(money));
		System.out.print(amount);
	}
	
	
}
