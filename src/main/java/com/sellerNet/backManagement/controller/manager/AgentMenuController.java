package com.sellerNet.backManagement.controller.manager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.AgentUser;
import com.sellerNet.backManagement.entity.Menu;
import com.sellerNet.backManagement.service.ManagerUserService;
import com.sellerNet.backManagement.service.MenuService;
import com.sellerNet.backManagement.service.RoleService;
import com.sellerNet.backManagement.utils.StringUtil;

/**
 *菜单管理
 */
@Controller
@RequestMapping("/admin")
public class AgentMenuController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AgentMenuController.class);
	
	@Resource
	private ManagerUserService managerUserService;
	
	@Resource
	private RoleService roleService;
	
	@Resource
	private MenuService menuService;
	
	/**
	 * 菜单页面
	 * @return
	 */
	@RequestMapping(value="/menusManage.do", method = RequestMethod.GET)
	public String menus(){
		return "menusManage";
	}
	
	/**
	 * 菜单集合
	 */
	@ResponseBody
	@RequestMapping(value="/menuList.do", method = RequestMethod.POST)
	public JSONArray getUserList(@RequestParam(value = "parentId",required=false) Long parentId){
		JSONArray jsonArray=null;
		try {
			jsonArray = menuService.getListByParentId(parentId);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonArray;
	}
	
	/**
	 * 获取角色对应的菜单列表
	 */
	@ResponseBody
	@RequestMapping(value="/authMenu.do", method = RequestMethod.POST)
	public JSONArray authMenu(@RequestParam(value = "parentId",required=false) Long parentId,
			                  @RequestParam(value = "roleId",required=false) Long roleId){
		JSONArray jsonArray=null;
		try {
			String authIds=roleService.get(roleId).getAuthIds();
			jsonArray=menuService.getCheckedAuthsByParentId(parentId,authIds);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return jsonArray;
	}
	/**
	 * 保存菜单
	 */
	@ResponseBody
	@RequestMapping(value="/saveMenu.do", method = RequestMethod.POST)
	public JSONObject saveMenu(@RequestParam(value = "authId",required=false) String authId,
			@RequestParam(value = "authName",required=false) String authName,
			@RequestParam(value = "authPath",required=false) String authPath,
			@RequestParam(value = "parentId",required=false) String parentId,
			@RequestParam(value = "authDescription",required=false) String authDescription,
		    @RequestParam(value = "iconCls",required=false) String iconCls,HttpSession session){
		JSONObject result=new JSONObject();
		boolean isLeaf=false;
		try {
			int saveNums=0;
			if(StringUtil.isNotEmpty(authId)){
				Menu menu = menuService.get(Long.valueOf(authId));
				menu.setAuthName(authName);
				menu.setAuthPath(authPath);
				menu.setAuthDescription(authDescription);
				saveNums=menuService.update(menu);
			}else{
				List<Menu> menus = menuService.getByParentId(Long.valueOf(parentId));
				if(menus.size()>0){
					isLeaf=true;
				}else {
					isLeaf=false;
				}
				Menu menu = new Menu();
				menu.setAuthName(authName);
				menu.setAuthPath(authPath);
				menu.setParentId(Long.valueOf(parentId));
				menu.setState("open");
				menu.setIconCls(iconCls);
				menu.setAuthDescription(authDescription);
				AgentUser user =(AgentUser)session.getAttribute("currentUser");
				menu.preCreate(user.getId());
				if(isLeaf){
					menuService.updateStateByAuthId("closed", Long.valueOf(parentId));
					saveNums=menuService.insert(menu);
				}else{
					saveNums=menuService.insert(menu);
				}
			}
			if(saveNums>0){
				result.put("success", true);
			}else{
				result.put("success", true);
				result.put("errorMsg", "保存失败");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	/**
	 * 删除菜单
	 */
	@ResponseBody
	@RequestMapping(value="/deleteMenu.do", method = RequestMethod.POST)
	public JSONObject deleteMenu(@RequestParam(value = "authId",required=false) String authId,
			                    @RequestParam(value = "parentId",required=false) String parentId){
		int sonNum=-1;
		JSONObject result=new JSONObject();
		try {
			List<Menu> menus = menuService.getByParentId(Long.valueOf(parentId));
			if(menus.size()<0){
				result.put("errorMsg", "该菜单节点有子节点，不能删除！");
			}else{
				int delNums=0;
				Map map = new HashMap();
				map.put("parentId", Long.valueOf(parentId));
				sonNum=menuService.count(map);
				if(sonNum==1){
					menuService.updateStateByAuthId("open", Long.valueOf(parentId));
					delNums=menuService.delete(Long.valueOf(authId));
				}else{
					delNums=menuService.delete(Long.valueOf(authId));
				}
				if(delNums>0){
					result.put("success", true);
				}else{
					result.put("errorMsg", "删除失败");
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	
	
	
	
	
}
