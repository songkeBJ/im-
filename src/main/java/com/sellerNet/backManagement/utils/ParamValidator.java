package com.sellerNet.backManagement.utils;

import java.io.PrintStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

public class ParamValidator
{
  public static boolean isPhoneNumber(String phoneNumber)
  {
    Pattern p = Pattern.compile("^((13[0-9])|(15[^4,\\D])|(18[0,5-9]))\\d{8}$");
    Matcher m = p.matcher(phoneNumber);
    return m.matches();
  }
  
  public static boolean isChinaPhoneLegal(String str) throws PatternSyntaxException {  
      String regExp = "^((13[0-9])|(15[^4])|(18[0,2,3,5-9])|(17[0-8])|(147))\\d{8}$";  
      Pattern p = Pattern.compile(regExp);  
      Matcher m = p.matcher(str);  
      return m.matches();  
  }  

  public static boolean isEmail(String email)
  {
    String str = "^([a-zA-Z0-9]*[-_]?[a-zA-Z0-9]+)*@([a-zA-Z0-9]*[-_]?[a-zA-Z0-9]+)+[\\.][A-Za-z]{2,3}([\\.][A-Za-z]{2})?$";
    Pattern p = Pattern.compile(str);
    Matcher m = p.matcher(email);
    return m.matches();
  }

  public static void main(String[] args) {
    System.out.println(isEmail("121212121212@qq.com"));
    System.out.println(isPhoneNumber("18510829660"));
  }
}