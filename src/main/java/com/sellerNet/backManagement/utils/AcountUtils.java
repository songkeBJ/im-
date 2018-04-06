package com.sellerNet.backManagement.utils;

import java.math.BigDecimal;

/**
 * 对金额进行转换
 * @author root
 *
 */
public class AcountUtils {
	
	 /**金额为分的格式 */    
    public static final String CURRENCY_FEN_REGEX = "\\-?[0-9]+"; 
    
	/**  
     * 将分为单位的转换为元 （除100）  
     *   
     * @param amount  
     * @return  
     * @throws Exception   
     */    
    public static String changeF2Y(BigDecimal amount) {    
        return amount.divide(new BigDecimal(100)).toString();    
    }    
        
    /**   
     * 将元为单位的转换为分 （乘100）  
     *   
     * @param amount  
     * @return  
     */    
    public static String changeY2F(BigDecimal amount){    
        return amount.multiply(new BigDecimal(100)).toString();    
    }    
    
    public static void main(String[] args) {
    	BigDecimal b = new BigDecimal("200");
		System.out.print(changeF2Y(b));
	}
    
    
    
}
