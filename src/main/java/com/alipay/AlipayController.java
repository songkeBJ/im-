//package com.alipay;
//
//import java.net.URLEncoder;
//import java.util.HashMap;
//import java.util.Map;
//
//import net.sf.json.JSONObject;
//
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.alipay.api.AlipayClient;
//import com.alipay.api.DefaultAlipayClient;
//import com.alipay.api.internal.util.AlipaySignature;
//import com.alipay.util.AliPayMsg;
//import com.alipay.util.AlipayConfig;
//import com.alipay.util.AlipayCore;
//import com.alipay.util.UtilDate;
//
//public class AlipayController {
//	@ResponseBody
//	@RequestMapping(value = "/alipay.do",  produces = "text/html;charset=UTF-8",method={RequestMethod.GET})
//	public static String alipay(String body, String subject, String out_trade_no, String total_amount) throws Exception {
//
//	         //公共参数
//	         Map<String, String> map = new HashMap<String, String>();
//	         map.put("app_id", AlipayConfig.app_id);
//	         map.put("method", "alipay.trade.app.pay");
//	         map.put("format", "json");
//	         map.put("charset", "utf-8");
//	         map.put("sign_type", "RSA");
//	         map.put("timestamp", UtilDate.getDateFormatter());
//	         map.put("version", "1.0");
//	         map.put("notify_url", AlipayConfig.service);
//
//	         Map<String, String> m = new HashMap<String, String>();
//
//	         m.put("body", body);
//	         m.put("subject", subject);
//	         m.put("out_trade_no", out_trade_no);
//	         m.put("timeout_express", "30m");
//	         m.put("total_amount", total_amount);
//	         m.put("seller_id",AlipayConfig.partner);
//	         m.put("product_code", "QUICK_MSECURITY_PAY");
//
//	         JSONObject bizcontentJson= JSONObject.fromObject(m);
//
//	         map.put("biz_content", bizcontentJson.toString());
//	        //对未签名原始字符串进行签名       
//	        String rsaSign = AlipaySignature.rsaSign(map, AlipayConfig.private_key, "utf-8");
//	         Map<String, String> map4 = new HashMap<String, String>();
//
//	         map4.put("app_id", AlipayConfig.app_id);
//	         map4.put("method", "alipay.trade.app.pay");
//	         map4.put("format", "json");
//	         map4.put("charset", "utf-8");
//	         map4.put("sign_type", "RSA");
//	         map4.put("timestamp", URLEncoder.encode(UtilDate.getDateFormatter(),"UTF-8"));
//	         map4.put("version", "1.0");
//	         map4.put("notify_url",  URLEncoder.encode(AlipayConfig.service,"UTF-8"));
//	         //最后对请求字符串的所有一级value（biz_content作为一个value）进行encode，编码格式按请求串中的charset为准，没传charset按UTF-8处理
//	         map4.put("biz_content", URLEncoder.encode(bizcontentJson.toString(), "UTF-8"));
//
//	        Map par = AlipayCore.paraFilter(map4); //除去数组中的空值和签名参数
//	        String json4 = AlipayCore.createLinkString(map4);   //拼接后的字符串
//
//	        json4=json4 + "&sign=" + URLEncoder.encode(rsaSign, "UTF-8");
//
//	        System.out.println(json4.toString());
//
//	        AliPayMsg apm = new AliPayMsg();
//	        apm.setCode("1");
////	        apm.setMsg("支付成功");
////	        apm.setData(json4.toString());  
//
//	        JSONObject json = JSONObject.fromObject(apm);
//
//
//	        System.out.println(json.toString());
//
//	        
//	        return json.toString();     
//
//	     }
//	
//	
//	public static void main(String[] args) {
//		AlipayClient alipayClient = new DefaultAlipayClient("alipay.trade.app.pay",AlipayConfig.app_id,AlipayConfig.private_key,"json","utf-8",AlipayConfig.alipay_public_key,"RSA");
//		
//	}
//	
//	
//	
//}
