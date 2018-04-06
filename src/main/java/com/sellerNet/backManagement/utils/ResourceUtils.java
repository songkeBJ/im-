package com.sellerNet.backManagement.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public final class ResourceUtils
{
  public static Properties getProperties(String location)
  {
    Properties p = new Properties();
    try {
      InputStream inputStream = ResourceUtils.class.getClassLoader().getResourceAsStream(location);
      p.load(inputStream);
    } catch (IOException e1) {
      e1.printStackTrace();
    }
    return p;
  }
}