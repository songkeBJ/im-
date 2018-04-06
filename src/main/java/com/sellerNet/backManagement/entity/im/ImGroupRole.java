package com.sellerNet.backManagement.entity.im;

public enum ImGroupRole
{
  USER, 
  OWNER, //帮主
  DEPUTYLEADER,//副帮主
  TANG,       //堂主
  GUEST,
  ADMIN;

  public static boolean isAdmin(String role) {
    return (OWNER.name().equals(role)) || (ADMIN.name().equals(role));
  }

  public static boolean isOwner(String role) {
    return OWNER.name().equals(role);
  }

  public static ImGroupRole fromString(String v) {
    try {
      return valueOf(v);
    } catch (Exception e) {
      throw new RuntimeException("错误的门派角色", e);
    }
  }
}