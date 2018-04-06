package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public class NewStatus extends BasePojo implements Serializable{
	
  /**
	 * 
	 */
	private static final long serialVersionUID = 4982771801701901639L;
private Integer userId;
  private Integer inviteStatus;
  private Integer advertStatus;
  private Integer nearStatus;
  private Integer firendAppyStatus;
  
public Integer getInviteStatus() {
	return inviteStatus;
}
public void setInviteStatus(Integer inviteStatus) {
	this.inviteStatus = inviteStatus;
}
public Integer getAdvertStatus() {
	return advertStatus;
}
public void setAdvertStatus(Integer advertStatus) {
	this.advertStatus = advertStatus;
}
public Integer getNearStatus() {
	return nearStatus;
}
public void setNearStatus(Integer nearStatus) {
	this.nearStatus = nearStatus;
}
public Integer getFirendAppyStatus() {
	return firendAppyStatus;
}
public void setFirendAppyStatus(Integer firendAppyStatus) {
	this.firendAppyStatus = firendAppyStatus;
}
public Integer getUserId() {
	return userId;
}
public void setUserId(Integer userId) {
	this.userId = userId;
}
}
