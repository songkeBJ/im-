package com.sellerNet.backManagement.controller.app;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONObject;
import com.alipay.util.AliPayMsg;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.service.AuthService;

/*
 * 会员通话/视频权限controlelr
 */
@Controller
@RequestMapping("api/auth")
public class AppAuthController {
	
	@Autowired
	private AuthService authService;
	
	/**
	 *获取个人或群组的通话/视频权限 
	 */
	@ResponseBody
	@RequestMapping("/getAuth.do")
	public JsonResult getAuth(Long id,Long groupId){
		JsonResult result = new JsonResult();
		if((id==null&&groupId==null)||(id!=null&&groupId!=null)){
			result.setCode("1");
			result.setErrorDescription("用户id和群组id能且只能传其中一个");
			return result;
		}
		String phoneStatus = "0";
		String videoStatus = "0";
		//查询语音权限
		if(id!=null){
			Map authMap = authService.getPhoneStatus(id,"user");
			if(authMap!=null){
				phoneStatus = authMap.get("status").toString();
			}
		}else if(groupId!=null){
			Map authMap = authService.getPhoneStatus(groupId,"group");
			if(authMap!=null){
				phoneStatus = authMap.get("status").toString();
			}
		}
		//查询视频权限
		if(id!=null){
			Map authMap = authService.getVideoStatus(id,"user");
			if(authMap!=null){
				videoStatus = authMap.get("status").toString();
			}
		}else if(groupId!=null){
			Map authMap = authService.getVideoStatus(groupId,"group");
			if(authMap!=null){
				videoStatus = authMap.get("status").toString();
			}
		}
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("phoneStatus", phoneStatus);
		jsonObject.put("videoStatus", videoStatus);
		result.setCode("0");
		result.setErrorDescription("获取权限信息成功");
		result.setDataObject(jsonObject);
		return result;
	}
	
	
}
