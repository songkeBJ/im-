package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * 资讯类型
 */
public class NewsType extends BasePojo implements Serializable{

	
	/**
     * 名称
     */
    private String name; 
    
    /**
     * 编号
     */
    private String code; 
    
    /**
     * 序号
     */
    private int orderNo
    ;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	} 
    
    
}
