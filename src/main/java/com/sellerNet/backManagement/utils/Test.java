package com.sellerNet.backManagement.utils;

import java.util.regex.Pattern;

public class Test {

	public static void main(String[] args) {
		String s = "\\headimg\\"+System.currentTimeMillis()+".jpg";
		System.out.println(s.replace("\\", "/"));
	}
}
