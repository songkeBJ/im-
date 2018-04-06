package com.sellerNet.backManagement.controller.manager;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.AgentUser;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.Role;
import com.sellerNet.backManagement.service.ManagerUserService;
import com.sellerNet.backManagement.service.RoleService;
import com.sellerNet.backManagement.utils.StringUtil;

/**
 *角色管理
 */
@Controller
@RequestMapping("/admin")
public class AgentRoleController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AgentRoleController.class);
	
	@Resource
	private ManagerUserService managerUserService;
	
	@Resource
	private RoleService roleService;
	
	/**
	 * 角色页面
	 */
	@RequestMapping(value="/rolesManage.do", method = RequestMethod.GET)
	public String roles(){
		return "rolesManage";
	}
	
	/**
	 * 角色集合
	 */
	@ResponseBody
	@RequestMapping(value="/roleList.do", method = RequestMethod.POST)
	public JSONObject getUserList(@RequestParam(value = "page",required=false) String page,
			                      @RequestParam(value = "rows",required=false) String rows,
			                      @RequestParam(value = "s_roleName",required=false) String s_roleName,
			                      @RequestParam(value ="s_roleId",required=false) String s_roleId){
		PageEntity pageEntity = new PageEntity(Integer.parseInt(page), Integer.parseInt(rows));
		if(StringUtil.isNotEmpty(s_roleName)){
			Map map = new HashMap<>();
			map.put("name", s_roleName);
			pageEntity.setParams(map);
		}
		PagingResult<Role> rolelist = roleService.selectPagination(pageEntity);
		JSONArray jsonArray = JSONArray.fromObject(rolelist.getResultList());
		JSONObject result=new JSONObject();
		result.put("rows", jsonArray);
		result.put("total", rolelist.getTotalSize());
		return result;
	}
	
	/**
	 * 角色下拉框
	 */
	@ResponseBody
	@RequestMapping(value="/comBoListt.do", method = RequestMethod.POST)
	public JSONArray comBoList(){
		JSONArray jsonArray=new JSONArray();
		JSONObject jsonObject=new JSONObject();
		jsonObject.put("id", "");
		jsonObject.put("name", "请选择...");
		jsonArray.add(jsonObject);
		jsonArray.addAll(JSONArray.fromObject(roleService.selectParam(null)));
		return jsonArray;
	}
	
	
	/**
	 * 保存角色
	 */
	@ResponseBody
	@RequestMapping(value="/saveRole.do", method = RequestMethod.POST)
	public JSONObject saveRole(@RequestParam(value="roleName",required=false) String roleName,
			                   @RequestParam(value="roleDescription",required=false) String roleDescription,
			                   @RequestParam(value="roleId",required=false) String roleId){
		JSONObject result=new JSONObject();
		try {
			int saveNums=0;
			if(StringUtil.isNotEmpty(roleId)){
				Role role = roleService.get(Long.valueOf(roleId));
				role.setRoleDescription(roleDescription);
				role.setName(roleName);
				saveNums=roleService.update(role);
			}else{
				Role role = new Role();
				role.setRoleDescription(roleDescription);
				role.setName(roleName);
				saveNums=roleService.insert(role);					
			}
            if(saveNums>0){
            	result.put("success", true);
			}else{
				result.put("success", true);
				result.put("errorMsg", "保存失败");
			}
		} catch (Exception e) {
		}
		return result;
	}
	
	
	/**
	 * 删除角色
	 */
	@ResponseBody
	@RequestMapping(value="/deleteRole.do", method = RequestMethod.POST)
	public JSONObject deleteRole(@RequestParam(value="delIds") String delIds){
		JSONObject result=new JSONObject();
		try {
			String str[]=delIds.split(",");
			for(int i=0;i<str.length;i++){
				List<AgentUser> f = managerUserService.findByRoleId(Long.valueOf(str[i]));
				if(f!=null&&f.size()>0){
					result.put("errorIndex", i);
					result.put("errorMsg", "角色下面有用户，不能删除！");
					return result;
				}
			}
			String[] str1 =  delIds.split(",");
			Long[] str2  = new Long[str1.length];
			for (int i = 0; i < str1.length; i++) {
	            str2[i] = Long.valueOf(str1[i]);
	        }
			List<Long> IdList = new ArrayList<Long>();
			Collections.addAll(IdList, str2);
			int delNums=roleService.deleteBatch(IdList);
			if(delNums>0){
				result.put("success", true);
				result.put("delNums", delNums);
			}else{
				result.put("errorMsg", "删除失败");
			}
		} catch (Exception e) {
		}
		return result;
	}
	
	/**
	 * 角色授权
	 */
	@ResponseBody
	@RequestMapping(value="/authRole.do", method = RequestMethod.POST)
	public JSONObject authRole(@RequestParam(value="roleId") String roleId,
							  @RequestParam(value="authIds") String authIds){
		
		Role role=new Role();
		role.setAuthIds(authIds);
		JSONObject result=new JSONObject();
		try {
			int updateNums=roleService.updateRole(authIds, Long.valueOf(roleId));
            if(updateNums>0){
            	result.put("success", true);
			}else{
				result.put("errorMsg", "授权失败");
			}
		} catch (Exception e) {
		}
		return result;
	}
	
	
}
