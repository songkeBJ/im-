package com.sellerNet.backManagement.utils;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

public final class Md5Utils
{
  public static String encrypt(String text)
  {
    Md5PasswordEncoder md5PasswordEncoder = new Md5PasswordEncoder();
    return md5PasswordEncoder.encodePassword(text, null);
  }
}