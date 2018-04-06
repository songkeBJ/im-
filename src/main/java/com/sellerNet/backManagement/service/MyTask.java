package com.sellerNet.backManagement.service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.scheduling.annotation.Scheduled;  
import org.springframework.stereotype.Component;

import com.google.gson.JsonObject;
import com.sellerNet.backManagement.dao.RechargeRecordMapper;
import com.sellerNet.backManagement.entity.Invite;
import com.sellerNet.backManagement.entity.InviteRecord;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.SysOrder;
import com.sellerNet.backManagement.entity.TransferAccount;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.im.ImRequest;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.service.im.ImRequestService;
import com.sellerNet.backManagement.utils.Constant;
import com.sellerNet.backManagement.utils.TimeStampUtils;  
  
@Component  
public class MyTask {  
	
	@Resource
	private AppUserOneService userOneService;
	@Resource
	private AppUserService userService;
	@Resource
    private RechargeRecordMapper rechargeRecordMapper;
	@Resource
	private RedService redService;
	 @Resource
	private TransferAccountService transferAccountService;
	 @Resource
	 private ImRequestService imRequestService;
		@Resource
		private  SysOrderService sysOrderService;
		@Autowired  
	    protected RedisTemplate<String, String> redisTemplate; 
		private static boolean isRun = false;

	
    /**
     * 24小时退还失效红包
     */
    @Scheduled(cron="0/10 * * * * ? ") //
    public void redTask(){  
	    	List<Red> list =redService.findOutTime();
	    	for (int i = 0; i < list.size(); i++) {
	    		//退钱给用户余额
				Red red = list.get(i);
				Long red_user_id = red.getRed_user_id();
				UserOne userone =userOneService.get(red_user_id.intValue());
	    		BigDecimal b1 =userone.getBalance();
	    		BigDecimal inviteMoney =new BigDecimal(red.getRed_has_money());
	    		userone.setBalance(b1.add(inviteMoney));
	            userOneService.update(userone);
	            //将该条红包记录标记为过期
	            red.setRed_outTime("1");
	            redService.update(red);
	            //删除缓存中的红包信息
	            Long red_id = red.getRed_id();
	            redisTemplate.delete("RED_MAX_"+red_id);
				redisTemplate.delete("RED_MAX_TIME_"+red_id);
				redisTemplate.delete("RED_PRE_LIST_"+red_id);
				redisTemplate.delete("RED_JSONLIST_"+red_id);
				//添加红包失效退还资金明细记录
				RechargeRecord rechargeRecord = new RechargeRecord();
	            rechargeRecord.setUserId(red_user_id.intValue());
	            rechargeRecord.preCreate(red_user_id);
	            rechargeRecord.setActive("14");
	            rechargeRecord.setAmount(red.getRed_has_money().toString());
	            rechargeRecordMapper.insert(rechargeRecord);
			}
	    	
		}
    
    /**
     * 24小时退还转账金额
     */
    @Scheduled(cron="0/10 * * * * ? ")
    public void TransferAccountTask(){  
    	List<TransferAccount> list =transferAccountService.findOutTime();
    	for (TransferAccount invite : list) {
    			invite.setIsLocked(true);
    			transferAccountService.update(invite);
    			
    			UserOne userone =userOneService.get(Integer.parseInt(invite.getCreator().toString()));
	    		BigDecimal b1 =userone.getBalance();
	    		BigDecimal inviteMoney =new BigDecimal(invite.getAmount());
	    		userone.setBalance(b1.add(inviteMoney));
	            userOneService.update(userone);
	            
	            //保存零钱记录
	            RechargeRecord rechargeRecord = new RechargeRecord();
	            rechargeRecord.setUserId(Integer.parseInt(invite.getCreator().toString()));
	            rechargeRecord.preCreate(invite.getCreator());
	            rechargeRecord.setActive("17");
	            rechargeRecord.setAmount(invite.getAmount());
	            rechargeRecordMapper.insert(rechargeRecord);
               }
		}
    
    
    
}