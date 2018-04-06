package com.sellerNet.backManagement.thread;

import java.util.List;
import java.util.Map;

import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;

public class PushMsgThread implements Runnable{
	
	private Groupemplate groupemplate;
	private Map map;
	@Override
	public void run() {
		String type = (String) map.get("type");
		List<String> receivers=(List<String>) map.get("receivers");
		String content=(String) map.get("content");
		String sender=(String) map.get("sender");
		String msgType=(String) map.get("msgType");
		if("person".equals(type)){
			groupemplate.pushMesage(receivers, content, sender, msgType);
		}else{
			groupemplate.pushMesageToGroup(receivers, content, sender, msgType);
		}
	}
	public PushMsgThread(Groupemplate groupemplate,Map map) {
		this.groupemplate = groupemplate;
		this.map = map;
	}

}
