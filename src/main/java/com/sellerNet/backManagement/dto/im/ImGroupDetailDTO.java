package com.sellerNet.backManagement.dto.im;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;
import com.sellerNet.backManagement.entity.im.ImGroup;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ImGroupDetailDTO
  implements Serializable
{
  private static final long serialVersionUID = 21782897135831029L;
  private Long id;
  private Date createdTime;
  private String name;
  private String introduction;
  private int memberCount;
  private String status;
  private String avatar;
  private String groupNumber;
  private int capacity;
  private String chatGroupId;
  private String qrcode;//群组二维码
  private String messageNo;//消息免打扰
  private String topmessage;//置顶聊天信息
  private String saveMail;//保存到通讯录
  private String displayName;//是否显示群组昵称
  
  private Long owner;
  private List<ImGroupMemberDTO> members;

  public ImGroupDetailDTO()
  {
  }

  public ImGroupDetailDTO(ImGroup group)
  {
    this.id = group.getId();
    this.createdTime = group.getCreatedTime();
    this.name = group.getName();
    this.avatar = group.getAvatar();
    this.capacity = group.getCapacity();
    this.chatGroupId = group.getChatGroupId();
    this.introduction = group.getIntroduction();
    this.memberCount = group.getMemberCount();
    this.status = group.getStatus();
    this.qrcode = group.getQrcode();
    this.messageNo =group.getMessageNo();
    this.topmessage= group.getTopmessage();
    this.saveMail = group.getSaveMail();
    this.displayName = group.getDisplayName();
    this.owner =group.getCreator();
  }

  public Long getId() {
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

  public String getName() {
    return this.name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getIntroduction() {
    return this.introduction;
  }

  public void setIntroduction(String introduction) {
    this.introduction = introduction;
  }

  public int getMemberCount() {
    return this.memberCount;
  }

  public void setMemberCount(int memberCount) {
    this.memberCount = memberCount;
  }

  public String getStatus() {
    return this.status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getAvatar() {
    return this.avatar;
  }

  public void setAvatar(String avatar) {
    this.avatar = avatar;
  }

  public String getGroupNumber() {
    return this.groupNumber;
  }

  public void setGroupNumber(String groupNumber) {
    this.groupNumber = groupNumber;
  }

  public int getCapacity() {
    return this.capacity;
  }

  public void setCapacity(int capacity) {
    this.capacity = capacity;
  }

  public String getChatGroupId() {
    return this.chatGroupId;
  }

  public void setChatGroupId(String chatGroupId) {
    this.chatGroupId = chatGroupId;
  }

  public List<ImGroupMemberDTO> getMembers() {
    return this.members;
  }

  public void setMembers(List<ImGroupMemberDTO> members) {
    this.members = members;
  }

public String getQrcode() {
	return qrcode;
}

public void setQrcode(String qrcode) {
	this.qrcode = qrcode;
}

public String getMessageNo() {
	return messageNo;
}

public void setMessageNo(String messageNo) {
	this.messageNo = messageNo;
}

public String getTopmessage() {
	return topmessage;
}

public void setTopmessage(String topmessage) {
	this.topmessage = topmessage;
}

public String getSaveMail() {
	return saveMail;
}

public void setSaveMail(String saveMail) {
	this.saveMail = saveMail;
}

public String getDisplayName() {
	return displayName;
}

public void setDisplayName(String displayName) {
	this.displayName = displayName;
}

public Long getOwner() {
	return owner;
}

public void setOwner(Long owner) {
	this.owner = owner;
}
  
}