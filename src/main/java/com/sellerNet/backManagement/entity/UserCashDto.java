package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class UserCashDto implements Serializable{
    /**
	 * 序列话
	 */
	private static final long serialVersionUID = 962718944639791980L;
	
	private int totalMoney;
    private List<UserCashDto2> userCashs = new ArrayList<>();
	public int getTotalMoney() {
		return totalMoney;
	}
	public void setTotalMoney(int totalMoney) {
		this.totalMoney = totalMoney;
	}
	public List<UserCashDto2> getUserCashs() {
		return userCashs;
	}
	public void setUserCashs(List<UserCashDto2> userCashs) {
		this.userCashs = userCashs;
	}
    
    
}