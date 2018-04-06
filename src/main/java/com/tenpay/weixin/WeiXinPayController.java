package com.tenpay.weixin;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.utils.AcountUtils;
import com.sellerNet.backManagement.utils.Constant;
import com.tenpay.AccessTokenRequestHandler;
import com.tenpay.ClientRequestHandler;
import com.tenpay.PackageRequestHandler;
import com.tenpay.PrepayIdRequestHandler;
import com.tenpay.RequestHandler;
import com.tenpay.ResponseHandler;
import com.tenpay.client.ClientResponseHandler;
import com.tenpay.client.TenpayHttpClient;
import com.tenpay.util.ConstantUtil;
import com.tenpay.util.ResponsePage;
import com.tenpay.util.TenpayUtil;
import com.tenpay.util.WXUtil;

/**
 * 微信支付服务端
 * @author seven_cm
 * @dateTime 2014-11-29
 */
@Controller
@RequestMapping("/weixin/")
public class WeiXinPayController extends ResponsePage  {

	private Logger log = LoggerFactory.getLogger(WeiXinPayController.class);
	
	@Resource
	private RechargeRecordService rechargeRecordService;
	
	@ResponseBody
	@RequestMapping("gotopay.do")
	public String doWeinXinRequest(@RequestParam(value="acount",required=false) String acount,
								   @RequestParam(value="type",required=false) String type,
								   @RequestParam(value="id",required=false) Long id,
								   @RequestParam(value="phoneNumber",required=false)String phoneNumber,HttpServletRequest request,HttpServletResponse response) throws Exception {
		Map<Object,Object> resInfo = new HashMap<Object, Object>();
		int retcode ;
		String retmsg = "";
		String xml_body = "";
		
		if(acount==null){
			retcode = 1;
			retmsg = "支付金额不能为空";
			resInfo.put("code", retcode);
			resInfo.put("errorDescription", retmsg);
			String strJson = JSON.toJSONString(resInfo);
			return responseAjax(request, strJson);
		}
		
		//接收财付通通知的URL
		if(id==null){
			retcode = 1;
			retmsg = "用户id不能为空";
			resInfo.put("code", retcode);
			resInfo.put("errorDescription", retmsg);
			String strJson = JSON.toJSONString(resInfo);
			return responseAjax(request, strJson);
		}
		String notify_url = request.getServletContext().getRealPath("/")+"SellerNet/weixin/payCallback.do";

		//---------------生成订单号 开始------------------------
		//当前时间 yyyyMMddHHmmss
		String currTime = TenpayUtil.getCurrTime();
		//8位日期
		String strTime = currTime.substring(8, currTime.length());
		//四位随机数
		String strRandom = TenpayUtil.buildRandom(4) + "";
		//10位序列号,可以自行调整。
		String strReq = strTime + strRandom;
		//订单号，此处用时间加随机数生成，商户根据自己情况调整，只要保持全局唯一就行
		String out_trade_no = "";
		if(Constant.orderActive.RECHARGE.name().equals(type)){
			 out_trade_no = strReq+"r";
		}else if(Constant.orderActive.HFCZ.name().equals(type)){
			 out_trade_no = strReq+"h";
		}else {
			 out_trade_no = strReq;
		}
		
		log.info("生成订单号：" +strReq);
		//---------------生成订单号 结束------------------------

		PackageRequestHandler packageReqHandler = new PackageRequestHandler(request, response);//生成package的请求类 
		PrepayIdRequestHandler prepayReqHandler = new PrepayIdRequestHandler(request, response);//获取prepayid的请求类
		ClientRequestHandler clientHandler = new ClientRequestHandler(request, response);//返回客户端支付参数的请求类
		packageReqHandler.setKey(ConstantUtil.PARTNER_KEY);

		//获取token值 
		
		String token = AccessTokenRequestHandler.getAccessToken();
		
		log.info("获取token------值 " + token);
		
		if (!"".equals(token)) {
			//设置package订单参数
			packageReqHandler.setParameter("bank_type", "WX");//银行渠道
			if(Constant.orderActive.RECHARGE.name().equals(type)){
				packageReqHandler.setParameter("body", "手机号码充值"); //商品描述   
			}
			
			packageReqHandler.setParameter("notify_url", notify_url); //接收财付通通知的URL  
			packageReqHandler.setParameter("partner", ConstantUtil.PARTNER); //商户号    
			packageReqHandler.setParameter("out_trade_no", out_trade_no); //商家订单号   
			//对金额进行转换
			if(acount!=null){
				BigDecimal money = new BigDecimal(acount);
				packageReqHandler.setParameter("total_fee",AcountUtils.changeY2F(money)); //商品金额,以分为单位  
			}
			
			packageReqHandler.setParameter("spbill_create_ip",request.getRemoteAddr()); //订单生成的机器IP，指用户浏览器端IP  
			packageReqHandler.setParameter("fee_type", "1"); //币种，1人民币   66
			packageReqHandler.setParameter("input_charset", "GBK"); //字符编码

			//获取package包
			String packageValue = packageReqHandler.getRequestURL();
			resInfo.put("package", packageValue);
			
			log.info("获取package------值 " + packageValue);

			String noncestr = WXUtil.getNonceStr();
			String timestamp = WXUtil.getTimeStamp();
			String traceid = "";
			////设置获取prepayid支付参数
			prepayReqHandler.setParameter("appid", ConstantUtil.APP_ID);
//			prepayReqHandler.setParameter("appkey", ConstantUtil.APP_KEY);
			prepayReqHandler.setParameter("noncestr", noncestr);
			prepayReqHandler.setParameter("package", packageValue);
			prepayReqHandler.setParameter("timestamp", timestamp);
			prepayReqHandler.setParameter("traceid", traceid);

			//生成获取预支付签名
			String sign = prepayReqHandler.createSHA1Sign();
			//增加非参与签名的额外参数
			prepayReqHandler.setParameter("app_signature", sign);
			prepayReqHandler.setParameter("sign_method",
					ConstantUtil.SIGN_METHOD);
			String gateUrl = ConstantUtil.GATEURL + token;
			prepayReqHandler.setGateUrl(gateUrl);

			//获取prepayId
			String prepayid = prepayReqHandler.sendPrepay();
			
			log.info("获取prepayid------值 " + prepayid);
			
			//吐回给客户端的参数
			if (null != prepayid && !"".equals(prepayid)) {
				//输出参数列表
				clientHandler.setParameter("appid", ConstantUtil.APP_ID);
				clientHandler.setParameter("appkey", ConstantUtil.APP_KEY);
				clientHandler.setParameter("noncestr", noncestr);
				//clientHandler.setParameter("package", "Sign=" + packageValue);
				clientHandler.setParameter("package", "Sign=WXPay");
				clientHandler.setParameter("partnerid", ConstantUtil.PARTNER);
				clientHandler.setParameter("prepayid", prepayid);
				clientHandler.setParameter("timestamp", timestamp);
				//生成签名
				sign = clientHandler.createSHA1Sign();
				clientHandler.setParameter("sign", sign);

				xml_body = clientHandler.getXmlBody();
				resInfo.put("entity", xml_body);
				retcode = 0;
				retmsg = "OK";
				//生成订单开始
				Order order = new Order();
				order.preCreate(id);
				order.setAmount(acount);
				order.setOrderId(out_trade_no);
//				order.setStatus(Constant.orderType.DZFZ.name());
				if(phoneNumber!=null){
					order.setPhoneNumber(phoneNumber);
				}
				//orderService.insert(order); TODO
			} else {
				retcode = -2;
				retmsg = "错误：获取prepayId失败";
			}
		} else {
			retcode = -1;
			retmsg = "错误：获取不到Token";
		}
		
		resInfo.put("code", retcode);
		resInfo.put("errorDescription", retmsg);
		String strJson = JSON.toJSONString(resInfo);
		return responseAjax(request, strJson);
	}
	
	@ResponseBody
	@RequestMapping(value="payCallback.do",method={RequestMethod.GET,RequestMethod.POST})
	public void callBack(HttpServletRequest request,HttpServletResponse response) throws Exception{
		//---------------------------------------------------------
		//财付通支付通知（后台通知）示例，商户按照此文档进行开发即可
		//---------------------------------------------------------
		//商户号
		String partner = "1333545201";

		//密钥
		String key = "123456789012345678901234567890AB";

		//创建支付应答对象
		ResponseHandler resHandler = new ResponseHandler(request, response);
		resHandler.setKey(key);

		//判断签名
		if(resHandler.isTenpaySign()) {
			
			//通知id
			String notify_id = resHandler.getParameter("notify_id");
			
			//创建请求对象
			RequestHandler queryReq = new RequestHandler(null, null);
			//通信对象
			TenpayHttpClient httpClient = new TenpayHttpClient();
			//应答对象
			ClientResponseHandler queryRes = new ClientResponseHandler();
			
			//通过通知ID查询，确保通知来至财付通
			queryReq.init();
			queryReq.setKey(key);
			queryReq.setGateUrl("https://gw.tenpay.com/gateway/verifynotifyid.xml");
			queryReq.setParameter("partner", partner);
			queryReq.setParameter("notify_id", notify_id);
			
			//通信对象
			httpClient.setTimeOut(5);
			//设置请求内容
			httpClient.setReqContent(queryReq.getRequestURL());
			System.out.println("queryReq:" + queryReq.getRequestURL());
			//后台调用
			if(httpClient.call()) {
				//设置结果参数
				queryRes.setContent(httpClient.getResContent());
				System.out.println("queryRes:" + httpClient.getResContent());
				queryRes.setKey(key);
					
					
				//获取返回参数
				String retcode = queryRes.getParameter("retcode");
				String trade_state = queryRes.getParameter("trade_state");
			
				String trade_mode = queryRes.getParameter("trade_mode");
					
				//判断签名及结果
				if(queryRes.isTenpaySign()&& "0".equals(retcode) && "0".equals(trade_state) && "1".equals(trade_mode)) {
					System.out.println("订单查询成功");
					//取结果参数做业务处理				
					System.out.println("out_trade_no:" + queryRes.getParameter("out_trade_no")+
							" transaction_id:" + queryRes.getParameter("transaction_id"));
					System.out.println("trade_state:" + queryRes.getParameter("trade_state")+
							" total_fee:" + queryRes.getParameter("total_fee"));
				        //如果有使用折扣券，discount有值，total_fee+discount=原请求的total_fee
					System.out.println("discount:" + queryRes.getParameter("discount")+
							" time_end:" + queryRes.getParameter("time_end"));
					//------------------------------
					//处理业务开始
					//更新订单状态
//					String orderId = queryRes.getParameter("out_trade_no");
//					Order order= orderService.selectByOrderId(orderId);
////					order.setStatus(Constant.orderType.ZFWC.name());
//					orderService.update(order); TODO
					//------------------------------
					//充值记录
					String amount =queryRes.getParameter("total_fee");
					RechargeRecord rechargeRecord = new RechargeRecord();
					rechargeRecord.setAmount(amount);
					//rechargeRecord.setOrderId(orderId);TODO
					rechargeRecord.setCreatedTime(new Date());
					rechargeRecordService.update(rechargeRecord);
					//处理数据库逻辑
					//注意交易单不要重复处理
					//注意判断返回金额
					//------------------------------
					//处理业务完毕
					//------------------------------
					resHandler.sendToCFT("Success");
				}
				else{
						//错误时，返回结果未签名，记录retcode、retmsg看失败详情。
						System.out.println("查询验证签名失败或业务错误");
						System.out.println("retcode:" + queryRes.getParameter("retcode")+
								" retmsg:" + queryRes.getParameter("retmsg"));
				}
			
			} else {

				System.out.println("后台调用通信失败");
					
				System.out.println(httpClient.getResponseCode());
				System.out.println(httpClient.getErrInfo());
				//有可能因为网络原因，请求已经处理，但未收到应答。
			}
		}
		else{
			System.out.println("通知签名验证失败");
		}
	}
	
	
	
	
	
	
	
	
	
}