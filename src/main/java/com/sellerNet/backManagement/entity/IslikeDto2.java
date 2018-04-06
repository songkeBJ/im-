package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author gxg
 * 
 * 点赞实体类
 *
 */
public class IslikeDto2  implements Serializable{

	
	/**
	 * 序列话对象
	 */
	private static final long serialVersionUID = 2874400916198623335L;
	

	/**
     * 用户ID
     */
	private Long userId;
	
	/**
     * 用户名
     */
	private String userName;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}


	


}
