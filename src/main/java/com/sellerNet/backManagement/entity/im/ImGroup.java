package com.sellerNet.backManagement.entity.im;

import com.sellerNet.backManagement.entity.BasePojo;

public class ImGroup extends BasePojo{
	  private static final long serialVersionUID = 3210792087437781531L;
	  private String name;
	  private String introduction;
	  private int memberCount = 0;
	
	  private String status = ImGroupStatus.ACTIVE.name();
	  private String avatar;
	  private int capacity;
	  private String groupNumber;
	  private String chatGroupId;
	  private String createName;
	  private String qrcode;
	  private String messageNo;//消息免打扰
	  private String topmessage;//置顶聊天信息
	  private String saveMail;//保存到通讯录
	  private String displayName;//是否显示群组昵称
	  private String number;//是否显示群组昵称
	  private String isbang;//判断是帮派还是堂口

	public String getQrcode() {
		return qrcode;
	}
	
	public void setQrcode(String qrcode) {
		this.qrcode = qrcode;
	}
	
	public String getCreateName()
	  {
	    return this.createName;
	  }
	
	  public void setCreateName(String createName) {
	    this.createName = createName;
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
	
	  public int getCapacity()
	  {
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
	
	  public String getGroupNumber() {
	    return this.groupNumber;
	  }
	
	  public void setGroupNumber(String groupNumber) {
	    this.groupNumber = groupNumber;
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

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getIsbang() {
		return isbang;
	}

	public void setIsbang(String isbang) {
		this.isbang = isbang;
	}
	
  
}