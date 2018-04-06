package com.sellerNet.backManagement.utils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


public class TimeStampUtils {
	
	public static int getTimestamp(){
		Long time1=Long.parseLong(String.valueOf(System.currentTimeMillis()).toString().substring(0,10));
		System.out.println(time1);
		return Integer.parseInt(time1.toString());
	}
	
	  /** 
     * 得到几天后的时间 
     *  
     * @param d 
     * @param day 
     * @return 
     */  
    public static Date getDateAfter(Date d, int day) {  
        Calendar now = Calendar.getInstance();  
        now.setTime(d);  
        now.set(Calendar.DATE, now.get(Calendar.DATE) + day);  
        return now.getTime();  
    }
    
    public static void main(String[] args) throws Exception {  
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");  
        Date date  = new Date();
        //当前日期开始时间
        String start = sdf.format(date)+" 00:00:00";
        //当前日期结束时间
        String end = sdf.format(date)+" 59:59:59";
        System.out.println("开始时间"+start);
        System.err.println("结束时间"+end);
    }  
    
    
}
