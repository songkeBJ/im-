package com.sellerNet.backManagement.openapi.sdk.utils;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class DateUtil
{
  public static final int DEFAULT = 0;
  public static final int YM = 1;
  public static final int YMR_SLASH = 11;
  public static final int NO_SLASH = 2;
  public static final int YM_NO_SLASH = 3;
  public static final int DATE_TIME = 4;
  public static final int DATE_TIME_NO_SLASH = 5;
  public static final int DATE_HM = 6;
  public static final int TIME = 7;
  public static final int HM = 8;
  public static final int LONG_TIME = 9;
  public static final int SHORT_TIME = 10;
  public static final int DATE_TIME_LINE = 12;

  public static String dateToStr(Date date, String pattern)
  {
    if ((date == null) || (date.equals("")))
      return null;
    SimpleDateFormat formatter = new SimpleDateFormat(pattern);
    return formatter.format(date);
  }

  public static String dateToStr(Date date) {
    return dateToStr(date, "yyyy/MM/dd");
  }

  public static String dateToStr(Date date, int type) {
    switch (type)
    {
    case 0:
      return dateToStr(date);
    case 1:
      return dateToStr(date, "yyyy/MM");
    case 2:
      return dateToStr(date, "yyyyMMdd");
    case 11:
      return dateToStr(date, "yyyy-MM-dd");
    case 3:
      return dateToStr(date, "yyyyMM");
    case 4:
      return dateToStr(date, "yyyy/MM/dd HH:mm:ss");
    case 5:
      return dateToStr(date, "yyyyMMddHHmmss");
    case 6:
      return dateToStr(date, "yyyy/MM/dd HH:mm");
    case 7:
      return dateToStr(date, "HH:mm:ss");
    case 8:
      return dateToStr(date, "HH:mm");
    case 9:
      return dateToStr(date, "HHmmss");
    case 10:
      return dateToStr(date, "HHmm");
    case 12:
      return dateToStr(date, "yyyy-MM-dd HH:mm:ss");
    }
    throw new IllegalArgumentException("Type undefined : " + type);
  }
  
  public static Date strToDate(String  date) {
	    return strToDate("yyyy-MM-dd HH:mm:ss",date);
  }
  
  public static Date strToDate(String pattern,String date){
	  Date date1 = null; //初始化date  
    SimpleDateFormat formatter = new SimpleDateFormat(pattern);
    try {
		return date1 = formatter.parse(date);
	} catch (ParseException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} //Mon Jan 14 00:00:00 CST 2013
	return date1;
  }
  
  //获取本年的开始时间
       public static java.util.Date getBeginDayOfYear() {
          Calendar cal = Calendar.getInstance();
          cal.set(Calendar.YEAR, getNowYear());
          // cal.set
          cal.set(Calendar.MONTH, Calendar.JANUARY);
          cal.set(Calendar.DATE, 1);
          return getDayStartTime(cal.getTime());
        }
      //获取本年的结束时间
       public static java.util.Date getEndDayOfYear() {
           Calendar cal = Calendar.getInstance();
           cal.set(Calendar.YEAR, getNowYear());
           cal.set(Calendar.MONTH, Calendar.DECEMBER);
           cal.set(Calendar.DATE, 31);
             return getDayEndTime(cal.getTime());
       }
  
     //获取今年是哪一年
        public static Integer getNowYear() {
            Date date = new Date();
            GregorianCalendar gc = (GregorianCalendar) Calendar.getInstance();
            gc.setTime(date);
            return Integer.valueOf(gc.get(1));
       }
        
        
        
      //获取某个日期的开始时间
       public static Timestamp getDayStartTime(Date d) {
            Calendar calendar = Calendar.getInstance();
            if(null != d) calendar.setTime(d);
            calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH),    calendar.get(Calendar.DAY_OF_MONTH), 0, 0, 0);
            calendar.set(Calendar.MILLISECOND, 0);
            return new Timestamp(calendar.getTimeInMillis());
        }
        //获取某个日期的结束时间
        public static Timestamp getDayEndTime(Date d) {
            Calendar calendar = Calendar.getInstance();
            if(null != d) calendar.setTime(d);
            calendar.set(calendar.get(Calendar.YEAR), calendar.get(Calendar.MONTH),    calendar.get(Calendar.DAY_OF_MONTH), 23, 59, 59);
            calendar.set(Calendar.MILLISECOND, 999);
            return new Timestamp(calendar.getTimeInMillis());
         } 
        
        public static void main(String[] args) {
			System.out.println(getDayStartTime(new Date()));
		}
        
        /* 
         * 将时间戳转换为时间
         */
        public static String stampToDate(String s){
            String res;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            long lt = new Long(s);
            Date date = new Date(lt);
            res = simpleDateFormat.format(date);
            return res;
        }
  
  
}