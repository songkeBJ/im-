package com.sellerNet.backManagement.utils;

import java.math.BigDecimal;

public class MoneyUtils {

	 /**   
     * 将元为单位的转换为分 （乘100）  
     *   
     * @param amount  
     * @return  
     */    
    public static String changeY2F(String amount){  
    	BigDecimal money = new BigDecimal(amount);
    	return money.multiply(new BigDecimal(100)).toString();   
    }    
    
    /**  
     * 将分为单位的转换为元 （除100）  
     *   
     * @param amount  
     * @return  
     * @throws Exception   
     */    
    public static String changeF2Y(String amount) throws Exception{    
        return BigDecimal.valueOf(Long.valueOf(amount)).divide(new BigDecimal(100)).toString();    
    }    
    
    public static void main(String[] args) {
		System.out.print(changeY2F("0.01"));
	}
}
