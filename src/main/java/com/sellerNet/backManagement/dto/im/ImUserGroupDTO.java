package com.sellerNet.backManagement.dto.im;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.sellerNet.backManagement.entity.im.ImGroup;
import com.sellerNet.backManagement.entity.im.ImGroupRole;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class ImUserGroupDTO implements Serializable{
  private static final long serialVersionUID = 426332666920551014L;
  private Long id;
  private Date createdTime;
  private String name;
  private int memberCount = 0;
  private String status;
  private String avatar;
  private String groupNumber;
  private int capacity;
  private String chatGroupId;
  private String role;
  private String qrcode;//群组二维码
  private String messageNo;//消息免打扰
  private String topmessage;//置顶聊天信息
  private String saveMail;//保存到通讯录
  private String displayName;//是否显示群组昵称
  private List<String> images;

public String getQrcode() {
	return qrcode;
}

public void setQrcode(String qrcode) {
	this.qrcode = qrcode;
}

public ImUserGroupDTO()
  {
  }

  public ImUserGroupDTO(Long id, Date createdTime, String name, int memberCount, String status, String avatar, String groupNumber, int capacity, String chatGroupId, String role)
  {
    this.id = id;
    this.createdTime = createdTime;
    this.name = name;
    this.memberCount = memberCount;
    this.status = status;
    this.avatar = avatar;
    this.groupNumber = groupNumber;
    this.capacity = capacity;
    this.chatGroupId = chatGroupId;
    this.role = role;
  }

  public ImUserGroupDTO(ImGroup group) {
    this.id = group.getId();
    this.createdTime = group.getCreatedTime();
    this.name = group.getName();
    this.memberCount = group.getMemberCount();
    this.status = group.getStatus();
    this.avatar = group.getAvatar();
    this.capacity = group.getCapacity();
    this.chatGroupId = group.getChatGroupId();
    this.role = ImGroupRole.GUEST.name();
  }

  public Long getId() {
    return this.id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
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
    return this.avatar == null ? "" : this.avatar;
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

  public String getRole() {
    return this.role;
  }

  public void setRole(String role) {
    this.role = role;
  }

	public List<String> getImages() {
		return images;
	}
	
	public void setImages(List<String> images) {
		this.images = images;
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
	
}