package com.sellerNet.backManagement.openapi.sdk;

public class InitRonglian
{
  public static final String ACCOUNT_SID = "8a216da86150f04301615a5ae61b025c";
  public static final String AUTH_TOKEN = "5f3ba82b299d413b9acdf61043be4153";
  public static final String SUB_ACCOUNT_SID = "ca96df73098d11e8a3e47cd30ac478d2";
  public static final String SUB_AUTH_TOKEN = "10b9547d56a342bae9e86a1da51bca3d";
  public static final String SERVER_IP = "app.cloopen.com";
  public static final String SERVER_PORT = "8883";
  public static final String AppID = "8a216da86150f04301615ef9308f034d";
  public static final String APP_TOKEN = "adc4c2dd123f4eaac1aab1d38d711322";

  public static CCPRestSDK getSdk(String account)
  {
    CCPRestSDK restAPI = new CCPRestSDK();
    restAPI.init(SERVER_IP, SERVER_PORT);
    restAPI.setAccount(ACCOUNT_SID, AUTH_TOKEN);
    restAPI.setSubAccount(AppID + account, APP_TOKEN);
    restAPI.setAppId(AppID);
    return restAPI;
  }
}