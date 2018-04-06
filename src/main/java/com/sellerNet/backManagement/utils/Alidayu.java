package com.sellerNet.backManagement.utils;


import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.TaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;

public class Alidayu {

	public  String url = "http://gw.api.taobao.com/router/rest";
	public  String appkey = "24301410";
	public  String secret = "6c86f6c642d83f56082fd2a9080c4071";
	
	public static void main(String[] args) throws ApiException {
	}
	
	public  void sendMsg(String msg,String phone) throws ApiException{
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setSmsType("normal");
		req.setSmsFreeSignName("种鱼");
		req.setSmsParamString("{name:'"+msg+"'}");
		req.setRecNum(phone);
		req.setSmsTemplateCode("SMS_70690034");
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
	}
}
