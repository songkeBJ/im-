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
public class IslikeDto  implements Serializable{

	
	/**
	 * 序列话对象
	 */
	private static final long serialVersionUID = 2874400916198623335L;
	

	/**
     * 点赞人集合
     */
	private List<IslikeDto2> userNames = new ArrayList<>();


	public List<IslikeDto2> getUserNames() {
		return userNames;
	}


	public void setUserNames(List<IslikeDto2> userNames) {
		this.userNames = userNames;
	}



}
