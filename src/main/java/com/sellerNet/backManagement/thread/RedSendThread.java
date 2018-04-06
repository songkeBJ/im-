package com.sellerNet.backManagement.thread;

import com.sellerNet.backManagement.dao.RedMapper;
import com.sellerNet.backManagement.entity.Red;

public class RedSendThread implements Runnable{
	
	private RedMapper redMapper;
	private Red red;
	@Override
	public void run() {
		redMapper.update(red);
	}
	public RedSendThread(RedMapper redMapper, Red red) {
		this.redMapper = redMapper;
		this.red = red;
	}

}
