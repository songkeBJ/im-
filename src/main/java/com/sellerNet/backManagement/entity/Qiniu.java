package com.sellerNet.backManagement.entity;

public class Qiniu
{
  private String ACCESS_KEY;
  private String SECRET_KEY;
  private String DOMAIN;
  private String BUCKET;

  public String getACCESS_KEY()
  {
    return this.ACCESS_KEY;
  }
  public void setACCESS_KEY(String aCCESS_KEY) {
    this.ACCESS_KEY = aCCESS_KEY;
  }
  public String getSECRET_KEY() {
    return this.SECRET_KEY;
  }
  public void setSECRET_KEY(String sECRET_KEY) {
    this.SECRET_KEY = sECRET_KEY;
  }
  public String getDOMAIN() {
    return this.DOMAIN;
  }
  public void setDOMAIN(String dOMAIN) {
    this.DOMAIN = dOMAIN;
  }
  public String getBUCKET() {
    return this.BUCKET;
  }
  public void setBUCKET(String bUCKET) {
    this.BUCKET = bUCKET;
  }
}