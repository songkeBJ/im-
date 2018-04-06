package com.sellerNet.backManagement.service;

import java.util.List;
import java.util.Map;

import com.alipay.util.AliPayMsg;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.RedJsonResult;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;

import net.sf.json.JSONObject;

public abstract interface RedService extends baseService<Red, Long>{
  

	public abstract Red addOneRed(UserOne userOne2, String red_money, String red_type, String red_allcount,
			Long red_user_id,String red_content);
	public abstract Red addRed(UserOne userOne2, String red_money, String red_type, String red_allcount,
			Long red_user_id,String red_content);
	public int canUpdateRed(Long red_id,String red_type, Long grab_user_id);
	public abstract RedJsonResult updateOneRed(Long red_id, Long grab_user_id);
	public abstract RedJsonResult updateRed(Long red_id, Long grab_user_id,String groupId);
	public JsonResult getSendListByUserIdAndYear(Map map);
	public abstract JsonResult getGrabListByUserIdAndYear(Map map);
	public abstract JsonResult getGrabListByUserIdAndYear(Long redId);
	public abstract List<Red> findOutTime();
}