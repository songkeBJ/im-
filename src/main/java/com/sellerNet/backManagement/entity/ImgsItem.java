package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 图集资讯详情
 * 
 */
public class ImgsItem extends BasePojo implements Serializable{

    /**
     * 所属资讯id
     */
    private Long newsId; 
    
    /**
     * 图片url
     */
    private String picUrl; 
    
    /**
     * 图片描述
     */
    private String picDesc; 
    
    /**
     * 序号
     */
    private int orderNo;

	public Long getNewsId() {
		return newsId;
	}

	public void setNewsId(Long newsId) {
		this.newsId = newsId;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public String getPicDesc() {
		return picDesc;
	}

	public void setPicDesc(String picDesc) {
		this.picDesc = picDesc;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	} 
    
    
}
