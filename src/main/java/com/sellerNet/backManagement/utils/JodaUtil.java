package com.sellerNet.backManagement.utils;

import java.text.ParseException;
import java.util.Date;
import java.util.Locale;

import org.apache.commons.lang3.StringUtils;
import org.joda.time.DateTime;
import org.joda.time.DateTimeZone;
import org.joda.time.Days;
import org.joda.time.LocalDate;
import org.joda.time.LocalDateTime;
import org.joda.time.LocalTime;
import org.joda.time.Minutes;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;

/**
 * @Description: Joda工具类
 * @Date 2013-10-22-上午9:48:30
 * @Author: qizai
 * @Version: V1.0.0
 */
public class JodaUtil {
	public final static String[] CHAINA_NUMBER = { "零", "一", "二", "三", "四", "五", "六", "七", "八", "九" };
	public final static String[] CHINA_WEEKS = { "星期一", "星期二", "星期三", "星期四", "星期五", "星期六", "星期日" };

	public final static String fmCn0_8 = "yyyy年MM月dd日";
	public final static String fmCn0_14 = "yyyy年MM月dd日HH时mm分ss秒";
	public final static String fm0_8 = "yyyyMMdd";
	public final static String fm0_12 = "yyyyMMddHHmm";
	public final static String fm0_14 = "yyyyMMddHHmmss";
	public final static String fm0_16 = "yyyyMMddHHmmssSSS";
	public final static String fm_0_8 = "yyyy-MM-dd";
	public final static String fm_0_12 = "yyyy-MM-dd HH:mm";
	public final static String fm2_0_12 = "yyyy-MM-dd HHmm";
	public final static String fm_0_14 = "yyyy-MM-dd HH:mm:ss";
	public final static String fmt_time = "HH:mm:ss";
	public final static String fm_9_12 = "HH:mm";
	public final static String fmNum_9_12 = "HHmm";
	public final static String fmNum_9_14 = "HHmmss";
	public final static String fmNum_6_12 = "dd HHmm";
	public final static String fm_6_12 = "dd HH:mm";
	public final static String fmCn_6_12 = "dd日HH:mm";
	/**
	 * yyyy-MM-dd
	 */
	public final static DateTimeFormatter FORMAT_DATE_ISO = DateTimeFormat.forPattern("yyyy-MM-dd");
	/**
	 * yyyyMMdd
	 */
	public final static DateTimeFormatter FORMAT_DATE = DateTimeFormat.forPattern("yyyyMMdd");
	/**
	 * yyyy年MM月dd日
	 */
	public final static DateTimeFormatter FORMAT_DATE_CN = DateTimeFormat.forPattern("yyyy年MM月dd日");
	/**
	 * HH:mm:ss
	 */
	public final static DateTimeFormatter FORMAT_TIME = DateTimeFormat.forPattern("HH:mm:ss");
	/**
	 * yyyy-MM-dd HH:mm:ss
	 */
	public final static DateTimeFormatter FORMAT_DATE_TIME = DateTimeFormat.forPattern("yyyy-MM-dd HH:mm:ss");

	public final static int MIN_TIME = 0;
	public final static int MAX_HOURE_OF_DAY = 23;
	public final static int MAX_MINUTE_OF_HOUR = 59;
	public final static int MAX_SECOND_OF_MINUTE = 59;
	public final static int MAX_MILLIS_OF_SECOND = 999;

	public final static int MILLIS_OF_SECOND = 1000;
	public final static int MILLIS_OF_MINUTE = 60 * MILLIS_OF_SECOND;
	public final static int MILLIS_OF_HOURE = 60 * MILLIS_OF_MINUTE;
	public final static int MILLIS_OF_DAY = 24 * MILLIS_OF_HOURE;
	/**
	 * 上海市区
	 */
	public final static DateTimeZone dateTimeZone = DateTimeZone.forID("Asia/Shanghai");

	public final static DateTimeFormatter getFormat(final String pattern) {
		return DateTimeFormat.forPattern(pattern);
	}

	/**
	 * 获取当前时间戳
	 * 
	 * @return
	 */
	public static String getTimeStamp() {
		return String.valueOf(now().getMillis() / 1000);
	}

	/**
	 * 获取星期几,eg:星期一
	 * 
	 * @param date
	 * @return
	 */
	public static String getWeekName(Date date) {
		return CHINA_WEEKS[toDateTime(date).getDayOfWeek() - 1];
	}

	/**
	 * 转换为中文格式的日期：二0一二年二月二十九日
	 * 
	 * @param date
	 * @return
	 */
	public static String chineseCapital(Date date) {
		if (null == date) {
			return null;
		}
		DateTime dt = toDateTime(date);
		StringBuilder cn = new StringBuilder();
		String year = String.valueOf(dt.getYear());
		for (int i = 0; i < year.length(); i++) {
			cn.append(CHAINA_NUMBER[year.charAt(i) - 48]);
		}
		cn.append("年");
		int mon = dt.getMonthOfYear();
		if (mon < 10) {
			cn.append(CHAINA_NUMBER[mon]);
		} else if (mon < 20) {
			if (mon == 10) {
				cn.append("十");
			} else {
				cn.append("十").append(CHAINA_NUMBER[mon % 10]);
			}
		}
		cn.append("月");
		int day = dt.getDayOfMonth();
		if (day < 10) {
			cn.append(CHAINA_NUMBER[day]);
		} else if (day < 20) {
			if (day == 10) {
				cn.append("十");
			} else {
				cn.append("十").append(CHAINA_NUMBER[day % 10]);
			}
		} else if (day < 30) {
			if (day == 20) {
				cn.append("二十");
			} else {
				cn.append("二十").append(CHAINA_NUMBER[day % 10]);
			}
		} else {
			cn.append("三十").append(CHAINA_NUMBER[day % 10]);
		}
		cn.append("日");
		return cn.toString();
	}

	/**
	 * 获取年份，如果参数为null则返回0
	 * 
	 * @param date
	 * @return
	 */
	public static int year(Date date) {
		if (null == date) {
			return -1;
		}
		DateTime dt = toDateTime(date);
		return dt.yearOfEra().get();
	}

	public static int getMonthOfYear(Date date) {
		if (null == date) {
			return -1;
		}
		DateTime dt = toDateTime(date);
		return dt.getMonthOfYear();
	}

	public static int getDayOfMonth(Date date) {
		if (null == date) {
			return -1;
		}
		DateTime dt = toDateTime(date);
		return dt.getDayOfMonth();
	}

	/**
	 * 转化为DateTime
	 * 
	 * @param date
	 * @return
	 */
	public static DateTime toDateTime(Date date) {
		DateTime dt = new DateTime(date, dateTimeZone);
		return dt;
	}

	/**
	 * 转化为LocalTime
	 * 
	 * @param date
	 * @return
	 */
	public static LocalTime toLocalTime(Date date) {
		LocalTime dt = new LocalTime(date, dateTimeZone);
		return dt;
	}

	/**
	 * 转化为LocalDate
	 * 
	 * @param date
	 * @return
	 */
	public static LocalDate toLocalDate(Date date) {
		LocalDate dt = new LocalDate(date, dateTimeZone);
		return dt;
	}

	/**
	 * 转化为LocalDateTime
	 * 
	 * @param date
	 * @return
	 */
	public static LocalDateTime toLocalDateTime(Date date) {
		LocalDateTime dt = new LocalDateTime(date, dateTimeZone);
		return dt;
	}

	/** 获取当前年份.eg=2014 */
	public static int nowYear() {
		return now().getYear();
	}

	/**
	 * 获取当前月份 1-12
	 * 
	 * @return
	 */
	public static int nowMonthOfYear() {
		return now().getMonthOfYear();
	}

	/** 当前年的第几周 */
	public static int nowWeekOfYear() {
		return now().getWeekOfWeekyear();
	}

	/**
	 * 获取当前日，1-31
	 * 
	 * @return
	 */
	public static int nowDayOfMonth() {
		return now().getDayOfMonth();
	}

	/**
	 * 获取当前所在年的第几天
	 * 
	 * @return
	 */
	public static int nowDayOfYear() {
		return now().getDayOfYear();
	}

	/**
	 * 字符串转化为时间Date
	 * 
	 * @param text
	 * @param pattern
	 * @return
	 */
	public static Date s2d(String text, String pattern) {
		DateTime dt = s2dt(text, pattern);
		if (null == dt) {
			return null;
		}
		return dt.toDate();
	}

	/**
	 * 字符串转化为时间DateTime
	 * 
	 * @param text
	 * @param pattern
	 * @return
	 */
	public static DateTime s2dt(String text, String pattern) {
		if (StringUtils.isBlank(text) || StringUtils.isBlank(pattern) || text.length() != pattern.length()) {
			return null;
		}
		int l1 = text.length();
		int l2 = pattern.length();
		if (l1 < l2) {
			return null;
		}
		if (l1 > l2) {
			text = text.substring(0, l2);
		}
		// 19900415无法转换为Date，加上withZoneUTC()即可
		DateTimeFormatter df = DateTimeFormat.forPattern(pattern);
		df = df.withZone(dateTimeZone).withLocale(Locale.CHINA).withOffsetParsed();
		DateTime dt = df.parseDateTime(text);
		return dt;
	}

	/** 获取当前时间 */
	public static DateTime now() {
		return getDateTime();
	}

	/** 获取当前时间 */
	public static Date getDate() {
		return getDateTime().toDate();
	}

	/** 获取当前时间 */
	public static DateTime getDateTime() {
		return getLocalDateTime().toDateTime(dateTimeZone);
	}

	/**
	 * 
	 * @param time
	 *            时间格式 {@value #fmt_time}
	 * @return
	 */
	public static DateTime getDateTime(String time) {
		return getDateTime().withTime(getLocalTime(time));
	}

	/** 获取当前时间 */
	public static LocalDateTime getLocalDateTime() {
		return LocalDateTime.now(dateTimeZone);
	}

	/** 获取当前时间 */
	public static LocalTime getLocalTime() {
		return getLocalDateTime().toLocalTime();
	}

	/**
	 * 
	 * @param time
	 *            格式:{@value #fmt_time}
	 * @return
	 */
	public static LocalTime getLocalTime(String time) {
		return LocalTime.parse(time, getFormat(fmt_time));
	}

	/** 获取当前时间 */
	public static LocalDate getLocalDate() {
		return getLocalDateTime().toLocalDate();
	}

	/**
	 * 日期转换为字符串
	 * 
	 * @param date
	 * @param pattern
	 * @return
	 */
	public static String d2s(Date date, String pattern) {
		if (null == date) {
			return "";
		}
		return d2s(toDateTime(date), pattern);
	}

	/**
	 * 日期转换为字符串
	 * 
	 * @param date
	 * @param pattern
	 * @return
	 */
	public static String d2s(DateTime date, String pattern) {
		if (null == date) {
			return "";
		}
		return date.toString(pattern);
	}

	/**
	 * 当前日期格式化为字符串
	 * 
	 * @param pattern
	 * @return
	 */
	public static String now2s(String pattern) {
		return d2s(now(), pattern);
	}

	/** {@value #fm0_8} */
	public static Date s2d0_8(String text) {
		return s2d(text, fm0_8);
	}

	/** {@value #fm_0_8} */
	public static Date s2d_0_8(String text) {
		return s2d(text, fm_0_8);
	}

	/** {@value #fm0_12} */
	public static Date s2d0_12(String text) {
		return s2d(text, fm0_12);
	}

	/** {@value #fmCn0_8} */
	public static Date s2d_cn0_8(String text) {
		return s2d(text, fmCn0_8);
	}

	/** {@value #fm0_8} */
	public static String d2s0_8(Date date) {
		return d2s(date, fm0_8);
	}

	/** {@value #fm_0_8} */
	public static String d2s_0_8(Date date) {
		return d2s(date, fm_0_8);
	}

	/** {@value #fmCn0_8} */
	public static String d2s_cn0_8(Date date) {
		return d2s(date, fmCn0_8);
	}

	/** {@value #fm_9_12} */
	public static String d2s9_12(Date date) {
		return d2s(date, fm_9_12);
	}

	/** {@value #fmNum_9_12} */
	public static String d2sNum9_12(Date date) {
		return d2s(date, fmNum_9_12);
	}

	/** {@value #fm0_8} */
	public static String getNow0_8() {
		return d2s(now(), fm0_8);
	}

	/** {@value #fm0_14} */
	public static String getNow0_14() {
		return d2s(now(), fm0_14);
	}

	/** {@value #fm0_16} */
	public static String getNow0_16() {
		return d2s(now(), fm0_16);
	}

	/** {@value #fm_0_8} */
	public static String getNow_0_8() {
		return d2s(now(), fm_0_8);
	}

	/** {@value #fm_0_14} */
	public static String getNow_0_14() {
		return d2s(now(), fm_0_14);
	}

	/** {@value #fmCn0_8} */
	public static String getNowCn0_8() {
		return d2s(now(), fmCn0_8);
	}

	/** {@value #fmCn0_14} */
	public static String getNowCn0_14() {
		return d2s(now(), fmCn0_14);
	}

	/** to:yyyy-MM-dd HHmm */
	public static Date s2d_0_12(String text) {
		return s2d(text, fm2_0_12);
	}

	/** {@value #fm_0_12} */
	public static Date s2d_0_12b(String text) {
		return s2d(text, fm_0_12);
	}

	/** {@value #fmNum_6_12} */
	public static String d2s6_12(Date date) {
		return d2s(date, fmNum_6_12);
	}

	/** {@value #fm_6_12} */
	public static String d2s_6_12(Date date) {
		return d2s(date, fm_6_12);
	}

	/** {@value #fmCn_6_12} */
	public static String d2sCn6_12(Date date) {
		return d2s(date, fmCn_6_12);
	}

	/** {@value #fm0_16} */
	public static String d2s0_16(Date date) {
		return d2s(date, fm0_16);
	}

	/** to:yyyy-MM-dd HHmm */
	public static String d2s_0_12(Date date) {
		return d2s(date, fm2_0_12);
	}

	/** {@value #fm_0_12} */
	public static String d2s0_12(Date date) {
		return d2s(date, fm_0_12);
	}
	public static String mmddT(Date date) {
		return d2s(date, "MM-dd HH:mm");
	}
	public static String mmdd(Date date) {
		return d2s(date, "MM-dd");
	}
	/**
	 * 增加或减少日操作
	 */
	public static Date plusDays(Date date, int days) {
		if (null == date || days == 0) {
			return date;
		}
		return toDateTime(date).plusDays(days).toDate();
	}

	public static Date nowPlusDays(int days) {
		return now().plusDays(days).toDate();
	}

	/**
	 * 增加或减少小时操作
	 */
	public static Date plusHours(Date date, int hours) {
		if (null == date || hours == 0) {
			return date;
		}
		return toDateTime(date).plusHours(hours).toDate();
	}

	public static Date nowPlusHours(int hours) {
		return now().plusHours(hours).toDate();
	}

	/** 昨天 */
	public static Date yesterday() {
		return now().plusDays(-1).toDate();
	}

	/** 明天 */
	public static Date tomorrow() {
		return now().plusDays(1).toDate();
	}

	public static Date plusMinutes(Date date, int minutes) {
		if (null == date || minutes == 0) {
			return date;
		}
		return toDateTime(date).plusMinutes(minutes).toDate();
	}

	/**
	 * 比较两个日期大小
	 * 
	 * @param maxDate
	 * @param minDate
	 * @return
	 */
	public static boolean isGt(Date maxDate, Date minDate) {
		if (null == maxDate || null == minDate) {
			return false;
		}
		return maxDate.after(minDate);
	}

	/** 该时间大于当前时间为真，null返回false */
	public static boolean isNowGt(Date minDate) {
		if (null == minDate) {
			return false;
		}
		return toDateTime(minDate).isAfterNow();
	}

	/** 该时间大于当前时间为真，null返回false */
	public static boolean isAfterNow(Date minDate) {
		if (null == minDate) {
			return false;
		}
		return toDateTime(minDate).isAfterNow();
	}

	/** 该时间小于当前时间为真，null返回true */
	public static boolean isBeforeNow(Date minDate) {
		if (null == minDate) {
			return true;
		}
		return toDateTime(minDate).isBeforeNow();
	}

	/**
	 * @see #isGtYMD(DateTime, DateTime)
	 */
	public static boolean isGtYMD(Date maxDate, Date minDate) {
		if (null == maxDate || null == minDate) {
			return false;
		}
		return isGtYMD(toDateTime(maxDate), toDateTime(minDate));
	}

	/**
	 * @see #isGtHMS(DateTime, DateTime)
	 */
	public static boolean isGtHMS(Date maxDate, Date minDate) {
		if (null == maxDate || null == minDate) {
			return false;
		}
		return isGtHMS(toDateTime(maxDate), toDateTime(minDate));
	}

	/** 计算两个时间的分钟差 */
	public static int minutesAbs(Date start, Date end) {
		int minutes = minutes(toDateTime(start), toDateTime(end));
		return minutes < 0 ? -minutes : minutes;
	}

	/** 计算两个时间的分钟差 */
	public static int minutes(Date start, Date end) {
		return minutes(toDateTime(start), toDateTime(end));
	}

	/**
	 * 计算两个时间的分钟差
	 * 
	 * @param start
	 *            起始时间
	 * @param end
	 *            截止时间
	 * @return （起始时间-截止时间）
	 */
	public static int minutes2(Date start, Date end) {
		if (null == start || null == end) {
			return 0;
		}
		return (int) ((start.getTime() - end.getTime()) / 60000);
	}

	/**
	 * 计算该时间到当前时间的分钟
	 * 
	 * @param start
	 *            起始时间
	 * @return （起始时间-当前时间）
	 */
	public static int minutes(Date start) {
		if (null == start) {
			return 0;
		}
		return (int) ((start.getTime() - now().getMillis()) / 60000);
	}

	/**
	 * 计算该时间到当前时间的分钟
	 * 
	 * @param endTime
	 * 
	 * @return （当前时间-截止时间）
	 */
	public static int distanceNowMinutes(Date endTime) {
		if (null == endTime) {
			return 0;
		}
		return (int) ((now().getMillis() - endTime.getTime()) / 60000);
	}

	/** 计算两个时间的分钟差 */
	public static int minutes(DateTime start, DateTime end) {
		if (null == start || null == end) {
			return 0;
		}
		return Minutes.minutesBetween(start, end).getMinutes();
	}

	/** 计算两个时间的日期差 */
	public static int days(Date start, Date end) {
		if (null == start || null == end) {
			return 0;
		}
		return days(toDateTime(start), toDateTime(end));
	}

	/** 计算两个时间的日期差 */
	public static int days(DateTime start, DateTime end) {
		if (null == start || null == end) {
			return 0;
		}
		return Days.daysBetween(start.withTime(0, 0, 0, 0), end.withTime(0, 0, 0, 0)).getDays();
	}

	public static boolean isGt(DateTime maxDate, DateTime minDate) {
		if (null == maxDate || null == minDate) {
			return false;
		}
		return maxDate.isAfter(minDate);
	}

	/** 仅比较年月日 */
	public static boolean isGtYMD(DateTime maxDate, DateTime minDate) {
		if (null == maxDate || null == minDate) {
			return false;
		}
		return maxDate.withTime(0, 0, 0, 0).isAfter(minDate.withTime(0, 0, 0, 0));
	}

	/** 仅比较时分秒 */
	public static boolean isGtHMS(DateTime maxDate, DateTime minDate) {
		if (null == maxDate || null == minDate) {
			return false;
		}
		if (maxDate.getHourOfDay() > minDate.getHourOfDay()) {
			return true;
		}
		if (maxDate.getMinuteOfHour() > minDate.getMinuteOfHour()) {
			return true;
		}
		return maxDate.getSecondOfMinute() > minDate.getSecondOfMinute();
	}

	/**
	 * 比较两个时间的年月日
	 * 
	 * @param maxDate
	 * @param minDate
	 * @return
	 */
	public static boolean gte_ymd(Date maxDate, Date minDate) {
		if (null == maxDate || null == minDate) {
			return false;
		}
		return Integer.valueOf(d2s0_8(maxDate)) >= Integer.valueOf(d2s0_8(minDate));
	}

	public static boolean gt_ymd(Date maxDate, Date minDate) {
		if (null == maxDate || null == minDate) {
			return false;
		}
		return Integer.valueOf(d2s0_8(maxDate)) > Integer.valueOf(d2s0_8(minDate));
	}

	/**
	 * 字符串比较
	 * 
	 * @param date1
	 * @param date2
	 * @return
	 */
	public static boolean isEquals_YMD(Date date1, Date date2) {
		if (null == date1 || null == date2) {
			return false;
		}
		return d2s0_8(date1).equals(d2s0_8(date2));
	}

	/**
	 * 判断日期是否和当前日期在同一年份
	 * 
	 * @param date
	 * @return
	 */
	public static boolean isEqualsYear(Date date) {
		if (null == date) {
			return false;
		}
		return nowYear() == toDateTime(date).getYear();
	}

	/**
	 * 判断日期是否和当前日期在同一年份
	 * 
	 * @param date
	 * @return
	 */
	public static boolean isEqualsYear(Date first, Date second) {
		if (null == first || null == second) {
			return false;
		}
		return toDateTime(first).getYear() == toDateTime(second).getYear();
	}

	/**
	 * 判断日期是否和当前日期在同一月份
	 * 
	 * @param date
	 * @return
	 */
	public static boolean isEqualsMonth(Date date) {
		if (null == date) {
			return false;
		}
		return nowMonthOfYear() == toDateTime(date).getMonthOfYear();
	}

	/**
	 * 判断日期是否和当前日期在同一月份
	 * 
	 * @param date
	 * @return
	 */
	public static boolean isEqualsMonth(Date first, Date second) {
		if (null == first || null == second) {
			return false;
		}
		return toDateTime(first).getMonthOfYear() == toDateTime(second).getMonthOfYear();
	}

	/**
	 * 判断日期是否和当前日期在同一星期
	 * 
	 * @param date
	 * @return
	 */
	public static boolean isEqualsWeek(Date date) {
		if (null == date) {
			return false;
		}
		return nowWeekOfYear() == toDateTime(date).getWeekOfWeekyear();
	}

	/**
	 * 判断日期是否和当前日期在同一星期
	 * 
	 * @param date
	 * @return
	 */
	public static boolean isEqualsWeek(Date first, Date second) {
		if (null == first || null == second) {
			return false;
		}
		return toDateTime(first).getWeekOfWeekyear() == toDateTime(second).getWeekOfWeekyear();
	}

	/**
	 * 判断时间是否在同一天
	 * 
	 * @param date
	 * @return
	 */
	public static boolean isEqualsDay(Date date) {
		if (null == date) {
			return false;
		}
		return nowDayOfYear() == toDateTime(date).getDayOfYear();
	}

	/**
	 * 判断时间是否在同一天
	 * 
	 * @param date
	 * @return
	 */
	public static boolean isEqualsDay(Date first, Date second) {
		if (null == first || null == second) {
			return false;
		}
		return toDateTime(first).getDayOfYear() == toDateTime(second).getDayOfYear();
	}

	public static Date withHHmm(Date date, int hour, int minute) {
		return toDateTime(date).withHourOfDay(hour).withMinuteOfHour(minute).toDate();
	}

	/**
	 * 设置时间
	 * 
	 * @param date
	 * @param hourOfDay
	 * @param minuteOfHour
	 * @param secondOfMinute
	 * @param millisOfSecond
	 * @return
	 */
	public static Date withTime(Date date, int hourOfDay, int minuteOfHour, int secondOfMinute, int millisOfSecond) {
		return toDateTime(date).withTime(hourOfDay, minuteOfHour, secondOfMinute, millisOfSecond).toDate();
	}

	/**
	 * 设置时分秒毫秒为0：0, 0, 0, 0
	 * 
	 * @param date
	 * @return
	 */
	public static Date withTimeMin(Date date) {
		return clearTime(date).toDate();
	}

	public static String withMinTimeStr(Date date) {
		return toDateTime(date).withTime(0, 0, 0, 0).toString(FORMAT_DATE_TIME);
	}

	public static String withMaxTimeStr(Date date) {
		return toDateTime(date).withTime(23, 59, 59, 999).toString(FORMAT_DATE_TIME);
	}

	/**
	 * 设置时分秒毫秒为0：0, 0, 0, 0
	 * 
	 * @param date
	 * @return
	 */
	public static DateTime clearTime(Date date) {
		return toDateTime(date).withTime(0, 0, 0, 0);
	}

	/**
	 * 23: 59: 59, 999
	 * 
	 * @param date
	 * @return
	 */
	public static Date withTimeMax(Date date) {
		return toDateTime(date).withTime(23, 59, 59, 999).toDate();
	}

	/** 当前时间+-分钟 */
	public static Date nowPlusMinutes(int minutes) {
		return now().plusMinutes(minutes).toDate();
	}

	/** 秒转化为xx分xx秒 */
	public static String getMinuteSecond(long timeSec) {
		return timeSec / 60 + "分" + timeSec % 60 + "秒";
	}

	/** 获取时间间隔：格式为xx分xx秒 */
	public static String getExecuteTime(Date start) {
		long timeSec = (now().getMillis() - start.getTime()) / 1000;
		return timeSec / 60 + "分" + timeSec % 60 + "秒";
	}

	/**
	 * 不包含日期，只计算小时、分钟这两个纬度的差值
	 * 
	 * @param subDate
	 * @param minuendDate
	 * @return
	 * @throws ParseException
	 */
	public static long absMinutes(Date subDate, Date minuendDate) {
		return (toDateTime(subDate).getMillis() - toDateTime(minuendDate).getMillis()) / 1000 / 60;
	}
}
