package com.sellerNet.backManagement.controller.imApp;

import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

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

import com.alipay.util.AliPayMsg;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.utils.URLUtil;
import com.tenpay.PayCommonUtil;
import com.tenpay.util.ResponsePage;
import com.tenpay.util.TenpayUtil;

/**
 * 微信支付服务端
 * 
充值
申请提现
 */
@Controller
@RequestMapping("api/weixin")
public class WeiXinPayController extends ResponsePage {
	private Logger log = LoggerFactory.getLogger(WeiXinPayController.class);

	@Resource
	private RechargeRecordService rechargeRecordService;
	@Resource
	private AppUserOneService userOneService;
	@Resource
	private AppUserService userService;
  @Resource
  private Groupemplate groupemplate;
    
	@ResponseBody
	@RequestMapping("gotopay.do")
	public JSONObject doWeinXinRequest(
			@RequestParam(value = "body", required = false) String body,
			@RequestParam(value = "subject", required = false) String subject,
			@RequestParam(value = "amount", required = false) String amount,
			@RequestParam(value = "id", required = false) Long id,
			@RequestParam(value = "phoneNumber", required = false) String phoneNumber,
			@RequestParam(value="token",required=false) String token,
			@RequestParam(value="payType",required=false) Integer payType,
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		Map<Object, Object> resInfo = new HashMap<Object, Object>();
		int retcode;
		// 判断入参
		if (body == null) {
			AliPayMsg apm = new AliPayMsg();
			apm.setCode("1");
			apm.setErrorDescription("商品描述不能为空");
			JSONObject json = JSONObject.fromObject(apm);
			return json;
		}
		if (amount == null) {
			AliPayMsg apm = new AliPayMsg();
			apm.setCode("1");
			apm.setErrorDescription("订单金额不能为空");
			JSONObject json = JSONObject.fromObject(apm);
			return json;
		}
		if (payType == null) {
			AliPayMsg apm = new AliPayMsg();
			apm.setCode("1");
			apm.setErrorDescription("payType支付类型不能为空");
			JSONObject json = JSONObject.fromObject(apm);
			return json;
		}
		
		if (id == null) {
			AliPayMsg apm = new AliPayMsg();
			apm.setCode("1");
			apm.setErrorDescription("id不能为空");
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
			UserOne userOne = userOneService.get(Integer.parseInt(id.toString()));
			User user = userService.byPhoneNumber(userOne.getPhoneNumber());
			if(!user.getToken().equals(token)){
				AliPayMsg apm = new AliPayMsg();
				apm.setCode("1");
				apm.setErrorDescription("token秘钥异常");
				JSONObject json = JSONObject.fromObject(apm);
				return json;
			}
		}
		String notify_url = URLUtil.getHomeUrl(request.getScheme(), request.getServerName(), request.getServerPort())+ "/ZFishApp/api/weixin/payCallback.do";
        System.out.println(notify_url);
		// ---------------生成订单号 开始------------------------
		String out_trade_no = "";
		// 当前时间 yyyyMMddHHmmss
		String currTime = TenpayUtil.getCurrTime();
		// 8位日期
		String strTime = currTime.substring(8, currTime.length());
		// 四位随机数
		String strRandom = TenpayUtil.buildRandom(4) + "";
		// 10位序列号,可以自行调整。
		String strReq = strTime + strRandom;
		// 订单号，此处用时间加随机数生成，商户根据自己情况调整，只要保持全局唯一就行
		log.info("生成订单号：" + strReq);
		out_trade_no = strReq;
		// ---------------生成订单号 结束------------------------

		SortedMap<String, Object> parameterMap = new TreeMap<String, Object>();
		parameterMap.put("appid", PayCommonUtil.APPID);
		parameterMap.put("mch_id", PayCommonUtil.MCH_ID);
		parameterMap.put("nonce_str", PayCommonUtil.getRandomString(32));
		parameterMap.put("body", body);
		parameterMap.put("out_trade_no", out_trade_no);
		parameterMap.put("fee_type", "CNY");
		BigDecimal total = new BigDecimal(amount).multiply(new BigDecimal(100));
		java.text.DecimalFormat df = new java.text.DecimalFormat("0");
		parameterMap.put("total_fee", df.format(total));
		parameterMap.put("spbill_create_ip", request.getRemoteAddr());
		parameterMap.put("notify_url", notify_url);
		log.info("微信回调地址"+notify_url);
		parameterMap.put("trade_type", "APP");
		String sign = PayCommonUtil.createSign("UTF-8", parameterMap);
		//parameterMap.put("time_stamp", getTimeStamp());
		parameterMap.put("sign", sign);
		String requestXML = PayCommonUtil.getRequestXml(parameterMap);
		System.out.println(requestXML);
		String result = PayCommonUtil.httpsRequest("https://api.mch.weixin.qq.com/pay/unifiedorder", "POST",requestXML);
		System.out.println(result);

		AliPayMsg apm = new AliPayMsg();
		try {
			Map<String, String> map = PayCommonUtil.doXMLParse(result);
			
			SortedMap<String, Object> returnparameterMap = new TreeMap<String, Object>();

			returnparameterMap.put("appid", PayCommonUtil.APPID);  
			returnparameterMap.put("partnerid", PayCommonUtil.MCH_ID);  
			returnparameterMap.put("prepayid", map.get("prepay_id"));  
			returnparameterMap.put("package", "Sign=WXPay");  
			returnparameterMap.put("noncestr", PayCommonUtil.getRandomString(32));  
			returnparameterMap.put("timestamp",getTimeStamp());  
		    String returnsign = PayCommonUtil.createSign("UTF-8", returnparameterMap);  
	        returnparameterMap.put("sign", returnsign);  
		        
			apm.setCode("0");
			apm.setErrorDescription(map.get("return_msg"));
			//apm.setDataObject(requestXML);
			apm.setDataObject(PayCommonUtil.getRequestXml(returnparameterMap));

			// 生成订单开始
			Order order = new Order();
			order.preCreate(id);
			order.setAmount(amount);
			order.setActualamount(amount);
			order.setOrderId(out_trade_no);
			order.setStatus(payType.toString());
			if (phoneNumber != null) {
				order.setPhoneNumber(phoneNumber);
			}
			//orderService.insert(order);
			//生成pc端订单
			//TODO
		} catch (Exception e) {
			log.info(e.toString());;
			e.printStackTrace();
		} 

		JSONObject json = JSONObject.fromObject(apm);
		return json;
	}

	@RequestMapping(value = "payCallback.do", method = { RequestMethod.GET,RequestMethod.POST })
	public void callBack(HttpServletRequest request,HttpServletResponse response) throws Exception {
		InputStream inStream = request.getInputStream();
		ByteArrayOutputStream outSteam = new ByteArrayOutputStream();
		byte[] buffer = new byte[1024];
		int len = 0;
		while ((len = inStream.read(buffer)) != -1) {
			outSteam.write(buffer, 0, len);
		}
		System.out.println("~~~~~~~~~~~~~~~~付款成功~~~~~~~~~");
		outSteam.close();
		inStream.close();
		String result = new String(outSteam.toByteArray(), "utf-8");// 获取微信调用我们notify_url的返回信息
		Map<Object, Object> map = PayCommonUtil.doXMLParse(result);
		System.out.println(result);
		System.out.println("回调参数"+map);

		if (map.get("result_code").toString().equalsIgnoreCase("SUCCESS")) {
			System.out.println("签名校验"+verifyWeixinNotify(map));
			if (verifyWeixinNotify(map)) {
				// ------------------------------
				// 处理业务开始
				// 更新订单状态
				String orderId = map.get("out_trade_no").toString();
				//Order order = orderService.selectByOrderId(orderId);
//				if(order.getIsLocked()==true){
//					response.getWriter().write("<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>"); // 告诉微信服务器，我收到信息了，不要在调用回调action了
//				}else{
					//order.setStatus(Constant.orderType.SMALL_WX_X_ZFWC.name());
					//orderService.update(order);
					//修改用户信息
//					if(order.getStatus().equals("6")){ //系统充值
//						UserOne userOne = userOneService.get(Integer.parseInt(order.getCreator().toString()));
//						//系统充值
//						BigDecimal b1 =userOne.getBalance();
//						BigDecimal b2 = new BigDecimal(order.getAmount());
//						userOne.setBalance(b1.add(b2));
//						System.out.println("用户金额2"+userOne.getBalance());
//						userOneService.update(userOne);
						//更新一下tocken
//						String token=Md5Utils.encrypt(userOne.getPhoneNumber()+userOne.getPassword()+new Date().getTime());
//						User user = userService.byPhoneNumber(userOne.getPhoneNumber());
//						user.setToken(token);
//						userService.update(user);
						
						//推送充值信息
//						  List<String> receivers = new ArrayList<>();
//						    receivers.add(userOne.getPhoneNumber());
//						    JsonObject jsonObject = new JsonObject();
//						    jsonObject.addProperty("type","0");
//						    jsonObject.addProperty("message","您的账号已充值"+b2.toString()+"元");
//						    groupemplate.pushMesage(receivers, jsonObject.toString(),"18510829662");
						
					//}
					
					// ------------------------------
					// 充值记录
//					if(!order.getStatus().equals("1")){
//						RechargeRecord rechargeRecord = new RechargeRecord();
//						rechargeRecord.setUserId(Integer.parseInt(order.getCreator().toString()));
//						rechargeRecord.setAmount(order.getAmount());
//						rechargeRecord.setOrderId(orderId);
//						rechargeRecord.setCreatedTime(new Date());
//						rechargeRecord.setActive(order.getStatus());
//						rechargeRecordService.insert(rechargeRecord);
//					}
//				
//					// 处理数据库逻辑
//					// 注意交易单不要重复处理
//					// 注意判断返回金额
//					// ------------------------------
//					// 处理业务完毕
//					// ------------------------------
//					order.setIsLocked(true);
//					orderService.update(order);
//					response.getWriter().write("<xml><return_code><![CDATA[SUCCESS]]></return_code><return_msg><![CDATA[OK]]></return_msg></xml>"); // 告诉微信服务器，我收到信息了，不要在调用回调action了
//				}
			
			} else {
				System.out.println("通知签名验证失败");
			}
		} else {
			log.info("微信异通知消息"+map);
			System.out.println("后台调用通信失败");
		
		}
	}

	private boolean verifyWeixinNotify(Map<Object, Object> map) {
		SortedMap<String, Object> parameterMap = new TreeMap<String, Object>();
		String sign = (String) map.get("sign");
		for (Object keyValue : map.keySet()) {
			if (!keyValue.toString().equals("sign")) {
				parameterMap.put(keyValue.toString(), map.get(keyValue));
			}
		}
		String createSign = PayCommonUtil.createSign("UTF-8", parameterMap);
		if (createSign.equals(sign)) {
			return true;
		} else {
			return false;
		}

	}

	  public  String getTimeStamp() {  
	        return String.valueOf(System.currentTimeMillis() / 1000);  
	    }  
}
