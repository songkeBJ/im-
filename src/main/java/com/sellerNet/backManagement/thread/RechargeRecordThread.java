package com.sellerNet.backManagement.thread;

import com.sellerNet.backManagement.dao.RechargeRecordMapper;
import com.sellerNet.backManagement.dao.RedRecordMapper;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.RedRecord;

public class RechargeRecordThread implements Runnable{
	
	private RechargeRecordMapper rechargeRecordMapper;
	private RechargeRecord rechargeRecord;
	@Override
	public void run() {
		rechargeRecordMapper.insert(rechargeRecord);
	}
	public RechargeRecordThread(RechargeRecordMapper rechargeRecordMapper, RechargeRecord rechargeRecord) {
		this.rechargeRecordMapper = rechargeRecordMapper;
		this.rechargeRecord = rechargeRecord;
	}

}
