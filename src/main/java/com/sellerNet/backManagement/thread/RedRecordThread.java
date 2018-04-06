package com.sellerNet.backManagement.thread;

import com.sellerNet.backManagement.dao.RedRecordMapper;
import com.sellerNet.backManagement.entity.RedRecord;

public class RedRecordThread implements Runnable{
	
	private RedRecordMapper redRecordMapper;
	private RedRecord redRecord;
	@Override
	public void run() {
		redRecordMapper.insert(redRecord);
	}
	public RedRecordThread(RedRecordMapper redRecordMapper, RedRecord redRecord) {
		this.redRecordMapper = redRecordMapper;
		this.redRecord = redRecord;
	}

}
