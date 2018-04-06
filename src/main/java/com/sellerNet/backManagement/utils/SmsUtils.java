package com.sellerNet.backManagement.utils;
import org.junit.Test;

import com.alibaba.fastjson.JSONObject;
import com.aliyuncs.DefaultAcsClient;
import com.aliyuncs.IAcsClient;
import com.aliyuncs.sms.model.v20160927.SingleSendSmsRequest;
import com.aliyuncs.sms.model.v20160927.SingleSendSmsResponse;
import com.aliyuncs.exceptions.ClientException;
import com.aliyuncs.exceptions.ServerException;
import com.aliyuncs.profile.DefaultProfile;
import com.aliyuncs.profile.IClientProfile;
/**
 * 云购创聊发送短信
 * @author root
 *
 */
public class SmsUtils {
	
	/**
	 * 发送短信验证码
	 * @param phoneNumber : 接收手机号
	 * @param code        : 发送验证码
	 * @return
	 */
	public static String sendSms(String phoneNumber,String code){
		try {
	        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAIy6vIYbgTFoM8", "FyOfnCViAuupV8DlvNYeAQrLAIuLay");
	         DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", "Sms",  "sms.aliyuncs.com");
	        IAcsClient client = new DefaultAcsClient(profile);
	        SingleSendSmsRequest request = new SingleSendSmsRequest();
	            request.setSignName("云购创聊");//控制台创建的签名名称
	            request.setTemplateCode("SMS_58330099");//控制台创建的模板CODE
	            JSONObject param = new JSONObject();
	            param.put("code", code);
	            param.put("product", "云购创聊");
	            request.setParamString(param.toString());//短信模板中的变量；数字需要转换为字符串；个人用户每个变量长度必须小于15个字符。"
	            request.setRecNum(phoneNumber);//接收号码
	            SingleSendSmsResponse httpResponse = client.getAcsResponse(request);
	        } catch (ServerException e) {
	            e.printStackTrace();
	        }catch (ClientException e) {
	            e.printStackTrace();
	        }
		return code;
	}
	
	
	
	
	
	
	
	@Test
	public void testmain() {
		try {
	        IClientProfile profile = DefaultProfile.getProfile("cn-hangzhou", "LTAIy6vIYbgTFoM8", "FyOfnCViAuupV8DlvNYeAQrLAIuLay");
	         DefaultProfile.addEndpoint("cn-hangzhou", "cn-hangzhou", "Sms",  "sms.aliyuncs.com");
	        IAcsClient client = new DefaultAcsClient(profile);
	        SingleSendSmsRequest request = new SingleSendSmsRequest();
	            request.setSignName("云购创聊");//控制台创建的签名名称
	            request.setTemplateCode("SMS_58330099");//控制台创建的模板CODE
	            JSONObject param = new JSONObject();
		        param.put("code", "123456");
		        param.put("product", "云购创聊");
//	            request.setParamString("{\"code\":\"123\",\"product\":\"234\"}");//短信模板中的变量；数字需要转换为字符串；个人用户每个变量长度必须小于15个字符。"
	            request.setParamString(param.toString());
	            request.setRecNum("18510829660");//接收号码
	            SingleSendSmsResponse httpResponse = client.getAcsResponse(request);
	        } catch (ServerException e) {
	            e.printStackTrace();
	        }
	        catch (ClientException e) {
	            e.printStackTrace();
	        }
	}
	
}
