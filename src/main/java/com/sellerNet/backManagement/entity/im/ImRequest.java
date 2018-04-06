package com.sellerNet.backManagement.entity.im;

import com.sellerNet.backManagement.entity.BasePojo;
import java.io.Serializable;

public class ImRequest extends BasePojo
  implements Serializable
{
  private static final long serialVersionUID = -7205424223670896906L;
  private String status = ImRequestStatus.NOT_HANDLED.name();
  private String message;
  private Long targetId;
  private String requestType;
  private Long auditedBy;
  private Long groupId;
  private String pay;
  private String remark;
  private String lableName;
  
  public String getRemark() {
	return remark;
}

public void setRemark(String remark) {
	this.remark = remark;
}

public String getLableName() {
	return lableName;
}

public void setLableName(String lableName) {
	this.lableName = lableName;
}

public ImRequest()
  {
  }

  public ImRequest(Long targetId, Long auditedBy, Long friendsGroupId, String requestType, String message)
  {
    this.targetId = targetId;
    this.auditedBy = auditedBy;
    this.requestType = requestType;
    this.message = message;
  }

  public static ImRequestBuilder getBuilder(Long targetId, Long auditedBy, String requestType) {
    return new ImRequestBuilder(targetId, auditedBy, requestType);
  }

  public String getStatus()
  {
    return this.status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getMessage() {
    return this.message;
  }

  public void setMessage(String message) {
    this.message = message;
  }

  public Long getTargetId() {
    return this.targetId;
  }

  public void setTargetId(Long targetId) {
    this.targetId = targetId;
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

  public Long getGroupId() {
    return this.groupId;
  }

  public void setGroupId(Long groupId) {
    this.groupId = groupId;
  }

  public static class ImRequestBuilder
  {
    private Long targetId;
    private Long auditedBy;
    private String requestType;
    private String message;
    private Long creator;
    private Long friendsGroupId;

    public ImRequestBuilder(Long targetId, Long auditedBy, String requestType)
    {
      this.targetId = targetId;
      this.auditedBy = auditedBy;
      this.requestType = requestType;
    }

    public ImRequestBuilder addMessage(String message) {
      this.message = message;
      return this;
    }

    public ImRequestBuilder addCreator(Long creator) {
      this.creator = creator;
      return this;
    }

    public ImRequestBuilder addFriendsGroupId(Long friendsGroupId) {
      this.friendsGroupId = friendsGroupId;
      return this;
    }

    public ImRequest build() {
      ImRequest entity = new ImRequest(this.targetId, this.auditedBy, this.friendsGroupId, this.requestType, this.message);
      if (this.creator != null) {
        entity.preCreate(this.creator);
      }
      return entity;
    }
  }

public String getPay() {
	return pay;
}

public void setPay(String pay) {
	this.pay = pay;
}
}