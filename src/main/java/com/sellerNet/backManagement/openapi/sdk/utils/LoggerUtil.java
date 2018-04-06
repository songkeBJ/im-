package com.sellerNet.backManagement.openapi.sdk.utils;

import com.sellerNet.backManagement.openapi.sdk.CCPRestSDK;
import java.util.Date;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;

public class LoggerUtil
{
  private static boolean isLog = true;
  private static Logger logger;

  static
  {
    if (logger == null)
      logger = Logger.getLogger(CCPRestSDK.class);
  }

  public static void setLogger(boolean isLog)
  {
    isLog = isLog;
  }
  public static void setLog(Logger logger) {
    logger = logger;
  }

  public static void setLogLevel(int level) {
    if (logger == null) {
      logger = Logger.getLogger(CCPRestSDK.class);
    }
    PropertyConfigurator.configure(PropertiesUtil.getPropertie(level));
  }

  public static void debug(Object msg)
  {
    if (isLog)
      logger.debug(new Date() + " " + msg);
  }

  public static void info(Object msg) {
    if (isLog)
      logger.info(new Date() + " " + msg);
  }

  public static void warn(Object msg) {
    if (isLog)
      logger.warn(msg);
  }

  public static void error(Object msg) {
    if (isLog)
      logger.error(msg);
  }

  public static void fatal(Object msg) {
    if (isLog)
      logger.fatal(msg);
  }
}