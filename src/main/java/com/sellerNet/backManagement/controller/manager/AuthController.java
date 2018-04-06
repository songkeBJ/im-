package com.sellerNet.backManagement.controller.manager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.alibaba.fastjson.JSONObject;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.service.AuthService;
import com.sellerNet.backManagement.utils.StringUtil;

/*
 * 通话/视频权限管理
 */
@Controller
@RequestMapping("admin")
public class AuthController {
	
	@Autowired
	private AuthService authService;
	/**
	 *用户通话/视频权限管理页面 
	 */
	@RequestMapping("/userAuthManage.do")
	public String userAuthManage(){
		return "userAuthManage";
	}
	/**
	 *群组通话/视频权限管理页面 
	 */
	@RequestMapping("/groupAuthManage.do")
	public String groupAuthManage(){
		return "groupAuthManage";
	}
	
	/*
	 * 用户通话/视频权限列表
	 */
	@ResponseBody
	@RequestMapping("/getUserList.do")
	public Map<String, Object> getUserList(String page,String rows,Long userId,String phoneNumber){
		PageEntity pageEntity = new PageEntity(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> map = new HashMap<String, Object>();
		if(userId!=null){
			map.put("userId", userId);
		}
		if(StringUtil.isNotEmpty(phoneNumber)){
			map.put("phoneNumber", phoneNumber);
		}
		pageEntity.setParams(map);
		PagingResult userlist=authService.getUserList(pageEntity);
		Map result = new HashMap();
		result.put("rows", userlist.getResultList());
		result.put("total", Integer.valueOf(userlist.getTotalSize()));
		return result;
	}
	
	/*
	 * 群组视频通话权限列表
	 */
	@ResponseBody
	@RequestMapping("/getGroupList.do")
	public Map<String, Object> getGroupList(String page,String rows,Long id,String groupNumber,String name){
		PageEntity pageEntity = new PageEntity(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> map = new HashMap<String, Object>();
		if(id!=null){
			map.put("id", id);
		}
		if(StringUtil.isNotEmpty(groupNumber)){
			map.put("groupNumber", groupNumber);
		}
		if(StringUtil.isNotEmpty(name)){
			map.put("name", name);
		}
		pageEntity.setParams(map);
		PagingResult userlist=authService.getGroupList(pageEntity);
		Map result = new HashMap();
		result.put("rows", userlist.getResultList());
		result.put("total", Integer.valueOf(userlist.getTotalSize()));
		return result;
	}
	
	/**
	 *后台修改通话/视频权限 
	 */
	@ResponseBody
	@RequestMapping("/updateAuth.do")
	public JSONObject updateAuth(Long id,String type,int status){
		if(type.equals("phone")){
			authService.updatePhoneStatus(id, status);
		}else{
			authService.updateVideoStatus(id, status);
		}
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("success", true);
		return jsonObject;
	}
	
	
}
