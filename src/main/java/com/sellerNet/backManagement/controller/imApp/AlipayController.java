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
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
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

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.domain.AlipayTradeAppPayModel;
import com.alipay.api.internal.util.AlipaySignature;
import com.alipay.api.request.AlipayTradeAppPayRequest;
import com.alipay.api.response.AlipayTradeAppPayResponse;
import com.alipay.util.AliPayMsg;
import com.alipay.util.AlipayConfig;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.service.baseService;
import com.sellerNet.backManagement.utils.TimeStampUtils;
import com.sellerNet.backManagement.utils.URLUtil;
import com.tenpay.PayCommonUtil;
import com.tenpay.util.TenpayUtil;

@Controller
@SuppressWarnings({ "unused", "rawtypes" })
@RequestMapping("/api/alipay")
public class AlipayController {
	private Logger logger = LoggerFactory.getLogger(AlipayController.class);

	@Resource
	private RechargeRecordService rechargeRecordService;
	@Resource
	private AppUserOneService userOneService;
	@Resource
	private AppUserService userService;


	/**
	 * 支付宝支付
	 * 
	 * @param userId
	 * @param total_amount
	 * @param body
	 * @param subject
	 * @return
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "gotopay.do", method = RequestMethod.POST)
	public JSONObject doPay(@RequestParam(value = "userId", required = true) Long userId,
							@RequestParam(value = "total_amount", required = true) String total_amount,
							@RequestParam(value = "body", required = true) String body,
							@RequestParam(value = "subject", required = true) String subject,
							@RequestParam(value = "mobile", required = true) String mobile,
							@RequestParam(value = "payType", required = true) Integer payType, 
							HttpServletRequest request) throws Exception {
		/**
		 * 校验入参
		 */
		if (userId == null) {
			AliPayMsg apm = new AliPayMsg();
			apm.setCode("1");
			apm.setErrorDescription("用户ID不能为空");
			JSONObject json = JSONObject.fromObject(apm);
			return json;
		}

		if (body == null) {
			AliPayMsg apm = new AliPayMsg();
			apm.setCode("1");
			apm.setErrorDescription("商品描述不能为空");
			JSONObject json = JSONObject.fromObject(apm);
			return json;
		}

		if (total_amount == null) {
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

		// ---------------生成订单号 开始------------------------
		// 当前时间 yyyyMMddHHmmss
		String currTime = TenpayUtil.getCurrTime();
		// 8位日期
		String strTime = currTime.substring(8, currTime.length());
		// 四位随机数
		String strRandom = TenpayUtil.buildRandom(4) + "";
		// 10位序列号,可以自行调整。
		// String strReq = strTime + strRandom;
		// 订单号，此处用时间加随机数生成，商户根据自己情况调整，只要保持全局唯一就行
		String out_trade_no = strTime + strRandom;
		
		//实例化客户端
		AlipayClient alipayClient = new DefaultAlipayClient(AlipayConfig.gateway, AlipayConfig.app_id, AlipayConfig.private_key, "json", AlipayConfig.charset, AlipayConfig.public_key, "RSA2");
		//实例化具体API对应的request类,类名称和接口名称对应,当前调用接口名称：alipay.trade.app.pay
		AlipayTradeAppPayRequest alipayRequest = new AlipayTradeAppPayRequest();
		//SDK已经封装掉了公共参数，这里只需要传入业务参数。以下方法为sdk的model入参方式(model和biz_content同时存在的情况下取biz_content)。
		AlipayTradeAppPayModel model = new AlipayTradeAppPayModel();
		model.setBody(body);
		model.setSubject(subject);
		model.setOutTradeNo(out_trade_no);
		model.setTimeoutExpress("30m");
		model.setTotalAmount(total_amount);
		model.setProductCode("QUICK_MSECURITY_PAY");
		alipayRequest.setBizModel(model);
		alipayRequest.setNotifyUrl(URLUtil.getHomeUrl(request.getScheme(), request.getServerName(), request.getServerPort()) + AlipayConfig.notifyUrl);
		AlipayTradeAppPayResponse alipayResponse = null;
		try {
		        //这里和普通的接口调用不同，使用的是sdkExecute
		        alipayResponse = alipayClient.sdkExecute(alipayRequest);
		    } catch (AlipayApiException e) {
		        e.printStackTrace();
		}

		AliPayMsg apm = new AliPayMsg();
		apm.setCode("0");
		apm.setErrorDescription("支付成功");
		apm.setDataObject(alipayResponse.getBody());
		
		// 生成订单开始
		Order order = new Order();
		order.preCreate(userId);
		order.setAmount(total_amount);
		order.setActualamount(total_amount);
		order.setOrderId(out_trade_no);
		order.setStatus(payType.toString());
		if (mobile != null) {
			order.setPhoneNumber(mobile);
		}
		//orderService.insert(order);
		// 生成pc端订单
		//TODO
		JSONObject jsonObject = JSONObject.fromObject(apm);
		return jsonObject;
	}

	/**
	 * 支付宝支付回调函数
	 * 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@ResponseBody
	@RequestMapping(value = "/callbacks.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult<String> callbacks( HttpServletRequest request ) throws Exception {
	        JsonResult jsonResult = new JsonResult<>();
			//接收支付宝返回的请求参数
	        Map requestParams = request.getParameterMap();

	        JSONObject json = JSONObject.fromObject(requestParams);

	        String trade_status = json.get("trade_status").toString().substring(2,json.get("trade_status").toString().length()-2);
	        String out_trade_no = json.get("out_trade_no").toString().substring(2,json.get("out_trade_no").toString().length()-2);
	        String notify_id = json.get("notify_id").toString().substring(2,json.get("notify_id").toString().length()-2);
	        String total_amount = json.get("total_amount").toString().substring(2,json.get("total_amount").toString().length()-2);

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
				//Order order= orderService.selectByOrderId(orderId);
			    //order.setStatus(Constant.orderType.ALI_X_ZFWC.name());
				//orderService.update(order);
//				if(order.getStatus().equals("6")){//充值余额
//					//修改用户信息
//					UserOne userOne = userOneService.get(Integer.parseInt(order.getCreator().toString()));
//					System.out.println("手机号吗是"+order.getPhoneNumber()+"支付金额"+order.getAmount()+"实际支付金额"+total_amount);
//					System.out.println("用户金额1"+userOne.getBalance());
//					//系统充值
//					BigDecimal b1 =userOne.getBalance();
//					BigDecimal b2 = new BigDecimal(order.getAmount());
//					userOne.setBalance(b1.add(b2));
//					System.out.println("用户金额2"+userOne.getBalance());
//					userOneService.update(userOne);
//					System.out.println("用户金额3"+userOne.getBalance());
					
					//更新一下tocken
//					String token=Md5Utils.encrypt(userOne.getPhoneNumber()+userOne.getPassword()+new Date().getTime());
//					User user = userService.byPhoneNumber(userOne.getPhoneNumber());
//					user.setToken(token);
//					userService.update(user);
			//	}
				
				//------------------------------
				//充值记录
				String amount =total_amount;
				RechargeRecord rechargeRecord = new RechargeRecord();
				//rechargeRecord.setUserId(Integer.parseInt(order.getCreator().toString()));
				rechargeRecord.setAmount(amount);
				//rechargeRecord.setOrderId(orderId);
				rechargeRecord.setCreatedTime(new Date());
				//rechargeRecord.setActive(order.getStatus());
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
	/**
	 * 支付宝异步通知验签
	 * 
	 * @param request
	 * @return
	 * @throws AlipayApiException
	 */
	private boolean verifyAliPayNotify(HttpServletRequest request) throws AlipayApiException {
		// 获取支付宝POST过来反馈信息
		Map<String, String> params = new HashMap<String, String>();
		Map requestParams = request.getParameterMap();
		for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext();) {
			String name = (String) iter.next();
			String[] values = (String[]) requestParams.get(name);
			String valueStr = "";
			for (int i = 0; i < values.length; i++) {
				valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
			}
			// 乱码解决，这段代码在出现乱码时使用。
			// valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
			params.put(name, valueStr);
		}
		
		return AlipaySignature.rsaCheckV1(params, AlipayConfig.public_key, AlipayConfig.charset, AlipayConfig.sign_type);
	}
}
