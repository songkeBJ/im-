package com.sellerNet.backManagement.dto.im;

import java.io.Serializable;
import java.util.Date;

public class ImRequestDTO
  implements Serializable
{
  private static final long serialVersionUID = 5615138480047911663L;
  private Long id;
  private Date createdTime;
  private String status;
  private Long userId;
  private String message;
  private String nickname;
  private String avatar;
  private String requestType;
  private Long auditedBy;
  private String type;
  private Long targetId;
  private String thermalSignatrue;
  private int rembers;
  public ImRequestDTO()
  {
  }

  public ImRequestDTO(Long id, Date createdTime, String status, Long userId, String message, String nickname, String avatar, String requestType, Long auditedBy, Long targetId)
  {
    this.id = id;
    this.createdTime = createdTime;
    this.status = status;
    this.userId = userId;
    this.message = message;
    this.nickname = nickname;
    this.avatar = avatar;
    this.requestType = requestType;
    this.auditedBy = auditedBy;
    this.targetId = targetId;
  }

  public Long getId()
  {
    return this.id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public Date getCreatedTime() {
    return this.createdTime;
  }

  public void setCreatedTime(Date createdTime) {
    this.createdTime = createdTime;
  }

  public String getStatus() {
    return this.status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public Long getUserId() {
    return this.userId;
  }

  public void setUserId(Long userId) {
    this.userId = userId;
  }

  public String getMessage() {
    return this.message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public String getNickname() {
    return this.nickname;
  }

  public void setNickname(String nickname) {
    this.nickname = nickname;
  }

  public String getAvatar() {
    return this.avatar;
  }

  public void setAvatar(String avatar) {
    this.avatar = avatar;
  }

  public String getRequestType() {
    return this.requestType;
  }

  public void setRequestType(String requestType) {
    this.requestType = requestType;
  }

  public Long getAuditedBy() {
    return this.auditedBy;
  }

  public void setAuditedBy(Long auditedBy) {
    this.auditedBy = auditedBy;
  }

  public String getType() {
    return this.type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public Long getTargetId() {
    return this.targetId;
  }

  public void setTargetId(Long targetId) {
    this.targetId = targetId;
  }

  public static enum ImRequestDTOType
  {
    SENT, 
    RECEIVED;
  }

public String getThermalSignatrue() {
	return thermalSignatrue;
}

public void setThermalSignatrue(String thermalSignatrue) {
	this.thermalSignatrue = thermalSignatrue;
}

public int getRembers() {
	return rembers;
}

public void setRembers(int rembers) {
	this.rembers = rembers;
}
  
}