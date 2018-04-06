package com.sellerNet.backManagement.utils;

public abstract class Constant{
  public static final String[] INJ_STRA = { "*", "script", "mid", "master", "truncate", "char", "insert", 
    "select", "delete", "update", "declare", "iframe", "'", "onreadystatechange", "alert", "atestu", "xss" };
  public static final String TIMEFORMAT = "yyyyMMddHHmmss";
  public static final int CHECKCODETYPE_LOGIN = 1;
  public static final int CHECKCODETYPE_COMMON = 2;
  public static final String RESUT_SUCCESS = "0";
  public static final String RESUT_FAIL = "1";
  
  //充值类型定义 10是支付宝系统充值 11是微信系统充值 12 零钱手机充值 13红包订单 14转账订单
  public enum orderType {
//	    ALI_R_ZFWC,//支付宝手机充值
//	    WX_R_ZFWC,//微信手机充值
//	    ALI_R_ZFZ,//支付宝手机充值
//	    WX_R_ZFZ,//微信手机充值
	  //支付中
	    ALI_X_ZFZ,//支付宝系统充值
	    WX_X_ZFZ,//微信系统充值

	    SMALL_R_ZFZ,//零钱手机充值
	  //支付完成
	    ALI_X_ZFWC,//支付宝系统充值
	    WX_X_ZFWC,//微信系统充值

	    SMALL_R_ZFWC,//零钱手机充值
	    SMALL_RED_ADD,//红包增加
	    SMALL_RED_REDUCE,//红包减少
	    SMALL_TRANSFER_ADD,//转账增加
	    SMALL_TRANSFER_REDUCE,//转账减少
	    SMALL_ALI_X_ZFWC,//零钱系统充值
	    SMALL_WX_X_ZFWC//微信系统充值
	    
//		DZFZ, // 待支付
//	    ZFZ,  //支付中
//	    ZFWC, // 支付完成
//	    SMALLZFZ // 零钱支付
	}

	public enum orderActive {
	    RECHARGE, // 充值
	    ROYALTY , // 提成
	    WITHDRAWALS,//提现
	    ISWITHDRAWALS,//已提现
	    ZFWC ,// 支付完成
	    HFCZ//话费充值
	}

	public static String JWT_SECERT="user_id";
}

