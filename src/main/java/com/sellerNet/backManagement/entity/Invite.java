package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import com.sellerNet.backManagement.utils.URLUtil;

public class Invite extends BasePojo implements Serializable{

	private static final long serialVersionUID = -5774944644894258614L;

	private Integer userId;
	
	private String title;
	
	private BigDecimal inviteMoney; 
	
	private BigDecimal realPay; 
	
	private BigDecimal totalMoney; 
	
	private BigDecimal otherMoney; 
	
	private String inviteUsers;
	
	private Integer userNum;
	
	private Integer joinNum=0;
	
	private String inviteAddress;
	
	private String longitud;//用户精度
	  
	private String latitude;//用户纬度
	
	private Integer status; //0发起 1进行中 2完成 3拒绝 4失效 
	
	private Date invateTime;
	
	private String applyTime;//响应时间
	
	private Date startTime;//开始进行时间
	
	private Date drawTime;//退款时间
	
	private String rateMoney;
	
	
	//其他参数
	private String nickName;
	private String avatar;
	private String phone;
	private Integer otherStatus;
	
	public String getApplyTime() {
		return applyTime;
	}

	public void setApplyTime(String applyTime) {
		this.applyTime = applyTime;
	}

	private List<Long> ids; //用户集合

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		boolean flag =URLUtil.isChineseChar(title);
		if(!flag){
			try {
				title =new String(title.getBytes("iso8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		this.title = title;
	}

	public BigDecimal getInviteMoney() {
		return inviteMoney;
	}

	public void setInviteMoney(BigDecimal inviteMoney) {
		this.inviteMoney = inviteMoney;
	}

	public String getInviteUsers() {
		return inviteUsers;
	}

	public void setInviteUsers(String inviteUsers) {
		this.inviteUsers = inviteUsers;
	}

	public String getInviteAddress() {
		return inviteAddress;
	}

	public void setInviteAddress(String inviteAddress) {
		boolean flag =URLUtil.isChineseChar(inviteAddress);
		if(!flag){
			try {
				inviteAddress =new String(inviteAddress.getBytes("iso8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		this.inviteAddress = inviteAddress;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	@DateTimeFormat(pattern="yyyy-MM-dd HH:mm")  
	public Date getInvateTime() {
		return invateTime;
	}

	public void setInvateTime(Date invateTime) {
		this.invateTime = invateTime;
	}

	public List<Long> getIds() {
		return ids;
	}

	public void setIds(List<Long> ids) {
		this.ids = ids;
	}

	public String getLongitud() {
		return longitud;
	}

	public void setLongitud(String longitud) {
		this.longitud = longitud;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public Integer getUserNum() {
		return userNum;
	}

	public void setUserNum(Integer userNum) {
		this.userNum = userNum;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public Date getStartTime() {
		return startTime;
	}

	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	public Date getDrawTime() {
		return drawTime;
	}

	public void setDrawTime(Date drawTime) {
		this.drawTime = drawTime;
	}

	public BigDecimal getOtherMoney() {
		return otherMoney;
	}

	public void setOtherMoney(BigDecimal otherMoney) {
		this.otherMoney = otherMoney;
	}

	public BigDecimal getTotalMoney() {
		return totalMoney;
	}

	public void setTotalMoney(BigDecimal totalMoney) {
		this.totalMoney = totalMoney;
	}

	public String getRateMoney() {
		return rateMoney;
	}

	public void setRateMoney(String rateMoney) {
		this.rateMoney = rateMoney;
	}

	public Integer getJoinNum() {
		return joinNum;
	}

	public void setJoinNum(Integer joinNum) {
		this.joinNum = joinNum;
	}

	public BigDecimal getRealPay() {
		return realPay;
	}

	public void setRealPay(BigDecimal realPay) {
		this.realPay = realPay;
	}

	public Integer getOtherStatus() {
		return otherStatus;
	}

	public void setOtherStatus(Integer otherStatus) {
		this.otherStatus = otherStatus;
	}

	
}
