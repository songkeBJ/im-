package com.sellerNet.backManagement.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.alibaba.fastjson.JSONObject;
import com.sellerNet.backManagement.dao.AppMessageMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.entity.AppMessage;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.push.UmengUtil;
import com.sellerNet.backManagement.service.AppMessageService;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.thread.PushMsgThread;
import com.sellerNet.backManagement.thread.RedThreadPool;

@Service
public class AppMessageServiceImpl extends BaseServiceImpl<AppMessage, Long>
		implements AppMessageService {
	private static final Logger LOGGER = LoggerFactory
			.getLogger(AppMessageServiceImpl.class);

	@Resource
	private AppMessageMapper appMessageMapper;
	@Resource
	private AppUserOneService appUserOneService;
	@Resource
	private Groupemplate groupemplate;
	private RedThreadPool redThreadPool=RedThreadPool.getInstance();
	
	protected BaseDao<AppMessage, Long> getDao() {
		return this.appMessageMapper;
	}
	
	public AppMessage getLastByUserId(Long userid){
		return appMessageMapper.getLastByUserId(userid);
	}
	
	@Override
	public void pushMessage(AppMessage appMessage) throws Exception {
		Long userid = appMessage.getUserid();
		UserOne userOne = appUserOneService.get(userid.intValue());
		//添加新系统消息
		appMessageMapper.insert(appMessage);
		//获取最新一条未读信息和未读信息总数
		AppMessage lastMessage = appMessageMapper.getLastByUserId(userid);
		Long notReadCount = appMessageMapper.getNotReadCountByUserId(userid);
		//发送系统消息
		List<String> receivers = new ArrayList<>();
		receivers.add(userid.toString()); //18510829662  18263826828
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("notReadCount", notReadCount);
		jsonObject.put("lastMessage", lastMessage);
		Map map = new HashMap<>();
		map.put("type", "person");
		map.put("receivers", receivers);
		map.put("content", jsonObject.toJSONString());
		map.put("sender", "19999999999");
		map.put("msgType", "1");
		redThreadPool.executeJob(new PushMsgThread(groupemplate, map ));
		//推送
		if (null != userOne.getDeviceToken()) {
			if (userOne.getEquipmentOS().equals("Android")) {
				UmengUtil.sendAndroidUnicast(userOne.getDeviceToken(), "旺旺", appMessage.getTitle(), appMessage.getContent(), "5", "");
			}
			else {
				UmengUtil.sendIOSUnicast(userOne.getDeviceToken(), appMessage.getTitle(), appMessage.getContent(), "5", "");
			}
		}
	}
}