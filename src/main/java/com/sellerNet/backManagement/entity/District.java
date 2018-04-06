package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class District extends BasePojo implements Serializable{
	
    /**
	 * 序列话
	 */
	private static final long serialVersionUID = -2986854458214019143L;

	/**
     * 城市名称
     */
    private String name;
    
    /**
     * 跳转游戏ULR
     */
    private String gameurl;
    
    
    /**
     * 跳转购物ULR
     */
    private String shopurl;


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getGameurl() {
		return gameurl;
	}


	public void setGameurl(String gameurl) {
		this.gameurl = gameurl;
	}


	public String getShopurl() {
		return shopurl;
	}


	public void setShopurl(String shopurl) {
		this.shopurl = shopurl;
	}

}