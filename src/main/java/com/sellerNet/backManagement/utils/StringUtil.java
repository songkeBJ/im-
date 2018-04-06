package com.sellerNet.backManagement.utils;

import java.io.File;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtil
{
  private static Random randGen = null;
  private static Object initLock = new Object();
  private static char[] numbersAndLetters = null;

  public static String getYear()
  {
    Calendar calendar = Calendar.getInstance();
    return String.valueOf(calendar.get(1));
  }

  public static String getMonth()
  {
    Calendar calendar = Calendar.getInstance();
    String temp = String.valueOf(calendar.get(2) + 1);
    if (temp.length() < 2) temp = "0" + temp;
    return temp;
  }

  public static boolean checkStr(String str)
  {
    String strtmp = "%\\/()><;#-";
    boolean bl = true;
    if ((str != null) && (!str.equals(""))) for (int i = 0; i < str.length(); i++) {
        if (strtmp.indexOf(str.charAt(i)) > -1) {
          bl = false;
          break;
        }
      }
    else {
      bl = false;
    }
    return bl;
  }

  public static String[] split(String content, int len)
  {
    if ((content == null) || (content.equals(""))) {
      return null;
    }
    int len2 = content.length();
    if (len2 <= len) {
      return new String[] { content };
    }
    int i = len2 / len + 1;
    String[] strA = new String[i];
    int j = 0;
    int begin = 0;
    int end = 0;
    while (j < i) {
      begin = j * len;
      end = (j + 1) * len;
      if (end > len2) end = len2;
      strA[j] = content.substring(begin, end);
      j++;
    }
    return strA;
  }

  public static boolean isEmail(String email)
  {
    boolean retval = false;
    String emailPattern = "^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+[.]([a-zA-Z0-9_-])+";
    retval = email.matches(emailPattern);

    return retval;
  }

  public static String byte2hex(byte[] b)
  {
    String hs = "";
    String stmp = "";
    for (int n = 0; n < b.length; n++) {
      stmp = Integer.toHexString(b[n] & 0xFF);
      if (stmp.length() == 1) hs = hs + "0" + stmp; else
        hs = hs + stmp;
      if (n < b.length - 1) hs = hs + ":";
    }
    return hs.toUpperCase();
  }

  public static String byte2string(byte[] b)
  {
    String hs = "";

    byte[] arrayOfByte = b; int j = b.length; for (int i = 0; i < j; i++) { byte aB = arrayOfByte[i];
      String stmp = Integer.toHexString(aB & 0xFF);
      if (stmp.length() == 1) hs = hs + "0" + stmp; else
        hs = hs + stmp;
    }
    return hs.toUpperCase();
  }

  public static byte[] string2byte(String hs)
  {
    byte[] b = new byte[hs.length() / 2];
    for (int i = 0; i < hs.length(); i += 2) {
      String sub = hs.substring(i, i + 2);
      byte bb = new Integer(Integer.parseInt(sub, 16)).byteValue();
      b[(i / 2)] = bb;
    }
    return b;
  }

  public static boolean empty(String param) {
    return (param == null) || (param.trim().length() < 1);
  }

  public static boolean isLetterOrDigit(String str)
  {
    Pattern p = null;
    Matcher m = null;
    boolean value = true;
    try {
      p = Pattern.compile("[^0-9A-Za-z]");
      m = p.matcher(str);
      if (m.find())
      {
        value = false;
      }
    } catch (Exception localException) {
    }
    return value;
  }

  public static boolean isLetterorDigit(String s)
  {
    if ((s.equals("")) || (s == null)) {
      return false;
    }
    for (int i = 0; i < s.length(); i++) {
      if (!Character.isLetterOrDigit(s.charAt(i)))
      {
        return false;
      }
    }

    return true;
  }

  public static boolean validateInt(String str)
  {
    if ((str == null) || (str.trim().equals(""))) return false;

    int i = 0; for (int l = str.length(); i < l; i++) {
      char c = str.charAt(i);
      if ((c < '0') || (c > '9')) return false;
    }

    return true;
  }

  public static String substring(String str, int length)
  {
    if (str == null) return null;

    if (str.length() > length) return str.substring(0, length - 2) + "...";
    return str;
  }

  public static int deleteFile(String fileName)
  {
    File file = null;
    int returnValue = -1;
    try {
      file = new File(fileName);
      if (file.exists()) { if (file.delete()) returnValue = 1; else
          returnValue = 0;
      } else returnValue = 2;
    }
    catch (Exception e)
    {
      System.out.println("Exception:e=" + e.getMessage());
    } finally {
      file = null;
    }

    return returnValue;
  }

  public static String gbToIso(String s)
    throws UnsupportedEncodingException
  {
    return covertCode(s, "GB2312", "ISO8859-1");
  }

  public static String covertCode(String s, String code1, String code2) throws UnsupportedEncodingException {
    if (s == null) return null;
    if (s.trim().equals("")) return "";
    return new String(s.getBytes(code1), code2);
  }

  public static String GBToUTF8(String s)
  {
    try
    {
      StringBuffer out = new StringBuffer("");
      byte[] bytes = s.getBytes("unicode");
      for (int i = 2; i < bytes.length - 1; i += 2) {
        out.append("\\u");
        String str = Integer.toHexString(bytes[(i + 1)] & 0xFF);
        for (int j = str.length(); j < 2; j++) {
          out.append("0");
        }
        out.append(str);
        String str1 = Integer.toHexString(bytes[i] & 0xFF);
        for (int j = str1.length(); j < 2; j++) {
          out.append("0");
        }

        out.append(str1);
      }
      return out.toString();
    } catch (UnsupportedEncodingException e) {
      e.printStackTrace();
    }return null;
  }

  public static String[] replaceAll(String[] obj, String oldString, String newString)
  {
    if (obj == null) {
      return null;
    }
    int length = obj.length;
    String[] returnStr = new String[length];

    for (int i = 0; i < length; i++) {
      returnStr[i] = replaceAll(obj[i], oldString, newString);
    }
    return returnStr;
  }

  public static String replaceAll(String s0, String oldstr, String newstr) {
    if ((s0 == null) || (s0.trim().equals(""))) return null;
    StringBuffer sb = new StringBuffer(s0);
    int begin = 0;

    begin = s0.indexOf(oldstr);
    while (begin > -1) {
      sb = sb.replace(begin, begin + oldstr.length(), newstr);
      s0 = sb.toString();
      begin = s0.indexOf(oldstr, begin + newstr.length());
    }
    return s0;
  }

  public static String replace(String line, String oldString, String newString)
  {
    if (line == null) {
      return null;
    }
    int i = 0;
    if ((i = line.indexOf(oldString, i)) >= 0) {
      char[] line2 = line.toCharArray();
      char[] newString2 = newString.toCharArray();
      int oLength = oldString.length();
      StringBuffer buf = new StringBuffer(line2.length);
      buf.append(line2, 0, i).append(newString2);
      i += oLength;
      int j = i;
      while ((i = line.indexOf(oldString, i)) > 0) {
        buf.append(line2, j, i - j).append(newString2);
        i += oLength;
        j = i;
      }
      buf.append(line2, j, line2.length - j);
      return buf.toString();
    }
    return line;
  }

  public static String replaceIgnoreCase(String line, String oldString, String newString)
  {
    if (line == null) {
      return null;
    }
    String lcLine = line.toLowerCase();
    String lcOldString = oldString.toLowerCase();
    int i = 0;
    if ((i = lcLine.indexOf(lcOldString, i)) >= 0) {
      char[] line2 = line.toCharArray();
      char[] newString2 = newString.toCharArray();
      int oLength = oldString.length();
      StringBuffer buf = new StringBuffer(line2.length);
      buf.append(line2, 0, i).append(newString2);
      i += oLength;
      int j = i;
      while ((i = lcLine.indexOf(lcOldString, i)) > 0) {
        buf.append(line2, j, i - j).append(newString2);
        i += oLength;
        j = i;
      }
      buf.append(line2, j, line2.length - j);
      return buf.toString();
    }
    return line;
  }

  public static String escapeHTMLTags(String input)
  {
    if ((input == null) || (input.length() == 0)) {
      return input;
    }

    StringBuffer buf = new StringBuffer(input.length());
    char ch = ' ';
    for (int i = 0; i < input.length(); i++) {
      ch = input.charAt(i);
      if (ch == '<')
        buf.append("&lt;");
      else if (ch == '>')
        buf.append("&gt;");
      else {
        buf.append(ch);
      }
    }
    return buf.toString();
  }

  public static String randomString(int length)
  {
    if (length < 1) {
      return null;
    }

    if (randGen == null) {
      synchronized (initLock) {
        if (randGen == null) {
          randGen = new Random();

          numbersAndLetters = 
            "0123456789abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
            .toCharArray();
        }
      }
    }

    char[] randBuffer = new char[length];
    for (int i = 0; i < randBuffer.length; i++) {
      randBuffer[i] = numbersAndLetters[randGen.nextInt(71)];
    }
    return new String(randBuffer);
  }

  public static double myround(double num, int x)
  {
    BigDecimal b = new BigDecimal(num);
    return b.setScale(x, 4).doubleValue();
  }

  private static boolean isLowerLetter(String str)
  {
    Pattern p = null;
    Matcher m = null;
    boolean value = true;
    try {
      p = Pattern.compile("[^a-z]");
      m = p.matcher(str);
      if (m.find())
        value = false;
    }
    catch (Exception localException) {
    }
    return value;
  }

  public static String subStringByChar(String str, String character)
  {
    return str.substring(str.indexOf(character) + 1);
  }

  public static String ternaryAorB(String strA, String strB)
  {
    return empty(strA) ? strB : strA;
  }

  public static boolean isNotEmpty(String str)
  {
    return !empty(str);
  }

  public static boolean isMobilePhone(String phoneNumber)
  {
    return phoneNumber.matches("1[34578][0-9]{9}");
  }

  public static boolean isEmpty(String str) {
    if (("".equals(str)) || (str == null)) {
      return true;
    }
    return false;
  }

  public static boolean existStrArr(String str, String[] strArr) {
    for (int i = 0; i < strArr.length; i++) {
      if (strArr[i].equals(str)) {
        return true;
      }
    }
    return false;
  }
}