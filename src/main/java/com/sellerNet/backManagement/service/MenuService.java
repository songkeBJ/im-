package com.sellerNet.backManagement.service;

import java.util.List;

import com.alibaba.fastjson.JSONArray;
import com.sellerNet.backManagement.entity.Menu;


/**
 * @author gxg
 * @time   2016年9月14日
 * 
 */
public interface MenuService extends baseService<Menu, Long>{
	
	/**
	 * 获取菜单集合
	 * @param parentId
	 * @param menus
	 * @return
	 */
	public List<Menu> getByParentIdAndMenus(Long parentId,String menuIds);
	
	/**
	 * 获取菜单集合
	 * @param parentId
	 * @param menus
	 * @return
	 */
	public JSONArray getMenusByParentId(Long parentId,String menuIds)throws Exception;
	
	/**
	 * 获取菜单集合
	 * @param parentId
	 * @param menuIds
	 * @return
	 * @throws Exception
	 */
	public JSONArray getCheckedAuthsByParentId(Long parentId,String menuIds)throws Exception;
	
	/**
	 * 获取菜单集合
	 * @param parentId
	 * @param menus
	 * @return
	 */
	public List<Menu> getByParentId(Long parentId);
	
	public JSONArray getListByParentId(Long parentId)throws Exception;
	
	public int updateStateByAuthId(String state,Long menuId);
	
}
