package com.sellerNet.backManagement.utils;

public class RegexConstant
{
  public static final String REGEX_SPACE = "[\\s]?";
  public static final String REGEX_PROVINCE_CODE = "[6][0-9]{5}";
  public static final String REGEX_AREA_CODE = "[8][0-9]{6}";
  public static final String REGEX_SHOP_ID = "[1-9][0-9]{4}";
  public static final String REGEX_M_SHOP_ID = "[1-9][0-9]{9}";
  public static final String REGEX_PRODUCT_ID = "[a-zA-Z0-9]{40}";
  public static final String REGEX_PRODUCT_BH = "[0-9]{6,}";
  public static final String REGEX_HOST_189_CN = "http[s]?://([a-z0-9]+.)?189.cn[\\S]*";
  public static final String REGEX_MOBILEPHONE = "1[34578][0-9]{9}";
  public static final String REGEX_XSS = "[^<>()]*";
}