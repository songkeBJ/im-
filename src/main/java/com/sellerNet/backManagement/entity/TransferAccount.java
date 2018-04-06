package com.sellerNet.backManagement.entity;

import java.io.Serializable;

/**
 * @author gxg
 * 转账类型
 *
 */
public class TransferAccount extends BasePojo implements Serializable{
	
	  private static final long serialVersionUID = -402217056511998660L;
	  private Long toUser;
	  private String weixinAccount;
	  private String zfbaoAccount;
	  private boolean status;
	  private String amount;
	  private String remark; //转账说明
	public Long getToUser() {
		return toUser;
	}
	public void setToUser(Long toUser) {
		this.toUser = toUser;
	}
	public String getWeixinAccount() {
		return weixinAccount;
	}
	public void setWeixinAccount(String weixinAccount) {
		this.weixinAccount = weixinAccount;
	}
	public String getZfbaoAccount() {
		return zfbaoAccount;
	}
	public void setZfbaoAccount(String zfbaoAccount) {
		this.zfbaoAccount = zfbaoAccount;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getAmount() {
		return amount;
	}
	public void setAmount(String amount) {
		this.amount = amount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	  
}