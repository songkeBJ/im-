package com.sellerNet.backManagement.thread;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class RedThreadPool {

	private static ExecutorService executorService =null;
	
	private RedThreadPool() {
		executorService = Executors.newFixedThreadPool(1000);
	}
	private static class LazyHolder{
		private static final RedThreadPool INSTANCE = new RedThreadPool();
	}
	public static final RedThreadPool getInstance(){
		return LazyHolder.INSTANCE;
	}
	public void executeJob(Runnable job){
		executorService.execute(job);
	}
	
}
