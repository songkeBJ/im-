package com.sellerNet.backManagement.entity.im;

public enum ImRequestOperation
{
  ACCEPT, 
  REJECT;

  public static ImRequestOperation fromString(String action) {
    try { return valueOf(action); } catch (Exception e) {
    }
    throw new RuntimeException("错误的操作类型");
  }
}