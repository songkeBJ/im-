package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class Code extends BasePojo
  implements Serializable
{
  private static final long serialVersionUID = -402217056511998660L;
  private String code;
  private String phoneNumber;

  public String getCode()
  {
    return this.code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getPhoneNumber() {
    return this.phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber) {
    this.phoneNumber = phoneNumber;
  }
}