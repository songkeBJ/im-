package com.sellerNet.backManagement.utils;

import java.util.Random;
import org.apache.commons.lang3.StringUtils;

public final class NumberUtil
{
  private static final String IM_NUMBER_PREFIX = "1";
  private static final String GROUP_NUMBER_PREFIX = "2";

  public static <T> T defaultIfNull(T v, T def)
  {
    return v == null ? def : v;
  }

  public static String generateRandomCode()
  {
    Random random = new Random();
    String code = String.valueOf(random.nextInt(1000000));
    while (code.length() < 6) {
      code = "0" + code;
    }
    return code;
  }

  public static String generateNextImNumber(String maxImNumber)
  {
    return getNextNumber(maxImNumber, "1");
  }

  public static String generateNextGroupNumber(String maxGroupNumber) {
    return getNextNumber(maxGroupNumber, "2");
  }

  private static String getNextNumber(String current, String prefix) {
    return String.format("%s%s", new Object[] { prefix, StringUtils.isBlank(current) ? "101" : Long.valueOf(Long.parseLong(current.substring(1)) + 1L) });
  }

  public static int countOffset(int currentPage)
  {
    int offset = 15 * (currentPage - 1);
    return offset;
  }
}