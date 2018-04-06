package com.sellerNet.backManagement.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.MenuMapper;
import com.sellerNet.backManagement.entity.Menu;
import com.sellerNet.backManagement.service.MenuService;
import com.sellerNet.backManagement.utils.StringUtil;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MenuServiceImpl extends BaseServiceImpl<Menu, Long>
  implements MenuService
{
  private static final Logger LOGGER = LoggerFactory.getLogger(MenuServiceImpl.class);

  @Resource
  private MenuMapper menuMapper;

  protected BaseDao<Menu, Long> getDao() {
    return this.menuMapper;
  }

  public JSONArray getMenusByParentId(Long parentId, String menuIds) throws Exception
  {
    JSONArray jsonArray = getMenuByParentId(parentId, menuIds);
    for (int i = 0; i < jsonArray.size(); i++) {
      JSONObject jsonObject = jsonArray.getJSONObject(i);
      if (!"open".equals(jsonObject.getString("state")))
      {
        jsonObject.put("children", getMenusByParentId(Long.valueOf(jsonObject.getString("id")), menuIds));
      }
    }
    return jsonArray;
  }

  public JSONArray getCheckedAuthsByParentId(Long parentId, String menuIds) throws Exception {
    JSONArray jsonArray = getCheckedAuthByParentId(parentId, menuIds);
    for (int i = 0; i < jsonArray.size(); i++) {
      JSONObject jsonObject = jsonArray.getJSONObject(i);
      if (!"open".equals(jsonObject.getString("state")))
      {
        jsonObject.put("children", getCheckedAuthsByParentId(Long.valueOf(jsonObject.getString("id")), menuIds));
      }
    }
    return jsonArray;
  }

  public JSONArray getCheckedAuthByParentId(Long parentId, String menuIds)
    throws Exception
  {
    JSONArray jsonArray = new JSONArray();
    List<Menu> menus = this.menuMapper.getByParentId(parentId);
    for (Menu menu : menus) {
      JSONObject jsonObject = new JSONObject();
      jsonObject.put("id", menu.getId());
      jsonObject.put("text", menu.getAuthName());
      jsonObject.put("state", menu.getState());
      jsonObject.put("iconCls", menu.getIconCls());
      if ((menuIds != null) && (StringUtil.existStrArr(menu.getId().toString(), menuIds.split(",")))) {
        jsonObject.put("checked", Boolean.valueOf(true));
      }

//      JSONObject attributeObject = new JSONObject();
//      attributeObject.put("authPath", menu.getAuthPath());
//      attributeObject.put("attributes", attributeObject);
      jsonArray.add(jsonObject);
    }
    return jsonArray;
  }

  public JSONArray getMenuByParentId(Long parentId, String menuIds) throws Exception
  {
    String[] menuStr = menuIds.split(",");
    JSONArray jsonArray = new JSONArray();
    Map map = new HashMap();
    map.put("parentId", parentId);
    map.put("menuIds", menuStr);
    List<Menu> menus = this.menuMapper.getByParentIdAndMenus(map);
    for (Menu menu : menus) {
      JSONObject jsonObject = new JSONObject();
      jsonObject.put("id", menu.getId());
      jsonObject.put("text", menu.getAuthName());
      if (!hasChildren(menu.getId(), menuIds))
        jsonObject.put("state", "open");
      else {
        jsonObject.put("state", menu.getState());
      }
      jsonObject.put("iconCls", menu.getIconCls());
      JSONObject attributeObject = new JSONObject();
      attributeObject.put("authPath", menu.getAuthPath());
      jsonObject.put("attributes", attributeObject);
      jsonArray.add(jsonObject);
    }
    return jsonArray;
  }

  public JSONArray getListByParentId(Long parentId) throws Exception {
    JSONArray jsonArray = getTreeGridAuthByParentId(parentId);
    for (int i = 0; i < jsonArray.size(); i++) {
      JSONObject jsonObject = jsonArray.getJSONObject(i);
      if (!"open".equals(jsonObject.getString("state")))
      {
        jsonObject.put("children", getListByParentId(Long.valueOf(jsonObject.getString("id"))));
      }
    }
    return jsonArray;
  }

  public JSONArray getTreeGridAuthByParentId(Long parentId) throws Exception {
    JSONArray jsonArray = new JSONArray();
    List<Menu> menus = this.menuMapper.getByParentId(parentId);
    for (Menu menu : menus) {
      JSONObject jsonObject = new JSONObject();
      jsonObject.put("id", menu.getId());
      jsonObject.put("text", menu.getAuthName());
      jsonObject.put("state", menu.getState());
      jsonObject.put("iconCls", menu.getIconCls());
      jsonObject.put("authPath", menu.getAuthPath());
      jsonObject.put("authDescription", menu.getAuthDescription());
      jsonArray.add(jsonObject);
    }
    return jsonArray;
  }

  private boolean hasChildren(Long parentId, String menuIds) throws Exception
  {
    String[] menuStr = menuIds.split(",");
    Map map = new HashMap();
    map.put("parentId", parentId);
    map.put("menuIds", menuStr);
    List menus = this.menuMapper.getByParentIdAndMenus(map);
    if (menus.size() > 0) {
      return true;
    }
    return false;
  }

  public List<Menu> getByParentIdAndMenus(Long parentId, String menuIds)
  {
    Map map = new HashMap();
    map.put("parentId", parentId);
    map.put("menuIds", menuIds);
    return this.menuMapper.getByParentIdAndMenus(map);
  }

  public List<Menu> getByParentId(Long parentId)
  {
    return this.menuMapper.getByParentId(parentId);
  }

  public int updateStateByAuthId(String state, Long menuId)
  {
    Map map = new HashMap();
    map.put("menuId", menuId);
    map.put("state", state);
    return this.menuMapper.updateStateByAuthId(map);
  }
}