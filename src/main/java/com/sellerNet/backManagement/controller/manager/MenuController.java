package com.sellerNet.backManagement.controller.manager;

import com.alibaba.fastjson.JSONArray;
import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.AgentUser;
import com.sellerNet.backManagement.entity.Role;
import com.sellerNet.backManagement.service.MenuService;
import com.sellerNet.backManagement.service.RoleService;
import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/*
 * 菜单管理
 */
@RestController
@RequestMapping({"/agentMenu"})
public class MenuController extends BaseController
{
  private static final Logger LOGGER = LoggerFactory.getLogger(MenuController.class);

  @Resource
  private MenuService menuService;

  @Resource
  private RoleService roleService;

  @RequestMapping(value={"/menuList.do"}, method={org.springframework.web.bind.annotation.RequestMethod.POST})
  public JSONArray login(@RequestParam("parentId") Long parentId, HttpSession session)
  {
    JSONArray jsonArray = null;

    AgentUser user = (AgentUser)session.getAttribute("currentUser");
    if(user.getUserType()==1){
    	  String menuIds = ((Role)this.roleService.get(user.getRoleId())).getAuthIds();
    	    try
    	    {
    	      jsonArray = this.menuService.getMenusByParentId(parentId, menuIds);
    	    } catch (Exception e) {
    	      e.printStackTrace();
    	    }
    }
    if(user.getUserType()==2){
  	  String menuIds = ((Role)this.roleService.get(user.getRoleId())).getAuthIds();
  	    try
  	    {
  	      jsonArray = this.menuService.getMenusByParentId(100L, "100,101,102,103,104,200,201,202,203,204,205,206,207,208,209,210,211,212,213");
  	    } catch (Exception e) {
  	      e.printStackTrace();
  	    }
    }
    return jsonArray;
  }
}