package com.sellerNet.backManagement.controller.imApp;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Test {
	public static void main(String[] args) {
		String time ="2017-06-19 10:00";
		String applyTime ="11:11";
		Date date = new Date();
		System.out.println(date);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Calendar ca=Calendar.getInstance();
		ca.setTime(date);
		ca.add(Calendar.HOUR_OF_DAY, 3);
		ca.add(Calendar.MINUTE, 11);
		 date=ca.getTime();
		System.out.println(date);
	}
}
