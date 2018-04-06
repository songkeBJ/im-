package com.sellerNet.backManagement.dto;

import com.sellerNet.backManagement.openapi.sdk.utils.DateUtil;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Date;

public class UserDto implements Serializable
{
  private static final long serialVersionUID = 1095028808811566102L;
  private String username="";
  private String phoneNumber="";
  private String appKey = "8a216da858ce0b3c0158d8b1e2a00840";

  private String timestamp = DateUtil.dateToStr(new Date(), 
    5);
  
  private String token;
  public String getToken() {
	return token;
}
  private Long userId;
public Long getUserId() {
	return userId;
}

public void setUserId(Long userId) {
	this.userId = userId;
}

public void setToken(String token) {
	this.token = token;
}

private String md5Token = this.appKey + this.phoneNumber + this.timestamp + "0c54dbad19d314dd37fb4b4872a41529";
  private String districtId="";
  private Integer sex;
  private String thermalSignatrue="";
  private String userEmail="";
  private BigDecimal balance = new BigDecimal(0);
  private String avatar="";
  private String backAvatar="";
  
  private Integer ifFirstTime;//0为是 1为否
  private Integer infoStatus;//0未完善 1完善

  public String getPhoneNumber()
  {
    return this.phoneNumber;
  }

  public void setPhoneNumber(String phoneNumber)
  {
    this.phoneNumber = phoneNumber;
  }

  public String getUsername()
  {
    return this.username;
  }

  public void setUsername(String username)
  {
    this.username = username;
  }

  public String getDistrictId()
  {
    return this.districtId;
  }

  public void setDistrictId(String districtId)
  {
    this.districtId = districtId;
  }

  public Integer getSex()
  {
    return this.sex;
  }

  public void setSex(Integer sex)
  {
    this.sex = sex;
  }

  public String getThermalSignatrue()
  {
    return this.thermalSignatrue;
  }

  public void setThermalSignatrue(String thermalSignatrue)
  {
    this.thermalSignatrue = thermalSignatrue;
  }

  public String getUserEmail()
  {
    return this.userEmail;
  }

  public void setUserEmail(String userEmail)
  {
    this.userEmail = userEmail;
  }

  public BigDecimal getBalance()
  {
    return this.balance;
  }

  public void setBalance(BigDecimal balance)
  {
    this.balance = balance;
  }

  public String getAvatar()
  {
    return this.avatar;
  }

  public void setAvatar(String avatar)
  {
    this.avatar = avatar;
  }

  public String getBackAvatar()
  {
    return this.backAvatar;
  }

  public void setBackAvatar(String backAvatar)
  {
    this.backAvatar = backAvatar;
  }

  public String getAppKey()
  {
    return this.appKey;
  }

  public void setAppKey(String appKey)
  {
    this.appKey = appKey;
  }

  public String getTimestamp()
  {
    return this.timestamp;
  }

  public void setTimestamp(String timestamp)
  {
    this.timestamp = timestamp;
  }

  public String getMd5Token()
  {
    return this.md5Token;
  }

  public void setMd5Token(String md5Token)
  {
    this.md5Token = md5Token;
  }

public Integer getIfFirstTime() {
	return ifFirstTime;
}

public void setIfFirstTime(Integer ifFirstTime) {
	this.ifFirstTime = ifFirstTime;
}

public Integer getInfoStatus() {
	return infoStatus;
}

public void setInfoStatus(Integer infoStatus) {
	this.infoStatus = infoStatus;
}

}