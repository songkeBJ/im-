package com.sellerNet.backManagement.service.impl;

import com.alibaba.fastjson.TypeReference;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alipay.util.AliPayMsg;
import com.google.gson.JsonObject;
import com.sellerNet.backManagement.config.RedPackage;
import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.AppUserOneMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.RechargeRecordMapper;
import com.sellerNet.backManagement.dao.RedMapper;
import com.sellerNet.backManagement.dao.RedRecordMapper;
import com.sellerNet.backManagement.dto.UserDto;
import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.RechargeRecord;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.RedJsonResult;
import com.sellerNet.backManagement.entity.RedRecord;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.openapi.sdk.utils.DateUtil;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.RedService;
import com.sellerNet.backManagement.thread.PushMsgThread;
import com.sellerNet.backManagement.thread.RechargeRecordThread;
import com.sellerNet.backManagement.thread.RedRecordThread;
import com.sellerNet.backManagement.thread.RedSendThread;
import com.sellerNet.backManagement.thread.RedThreadPool;
import com.sellerNet.backManagement.utils.Md5Utils;
import com.sellerNet.backManagement.utils.RedUtils;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.BoundListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RedServiceImpl extends BaseServiceImpl<Red, Long> implements RedService{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(RedServiceImpl.class);
	
	private RedThreadPool redThreadPool = RedThreadPool.getInstance();
	@Resource
	private AppUserOneService appUserOneService;
	@Resource
	private AppUserService appUserService;
	
	@Resource
	private RedMapper redMapper;
	
	@Resource
	private RedRecordMapper redRecordMapper;
	@Resource
	private RechargeRecordMapper rechargeRecordMapper;
	@Autowired  
    protected RedisTemplate<String, String> redisTemplate; 
	@Autowired  
	protected Groupemplate groupemplate; 
	protected BaseDao<Red, Long> getDao() { 
		return this.redMapper; 
	}
	
	@Override
	public Red addOneRed(UserOne userOne2, String red_money, String red_type, String red_all_count, Long red_user_id,String red_content) {
		//扣除发红包用户的余额
		userOne2.setBalance(userOne2.getBalance().subtract(new BigDecimal(red_money)));
		appUserOneService.update(userOne2);
		//添加红包发送记录
		Red red = new Red();
		red.setRed_send_date(DateUtil.dateToStr(new Date(), "yyyy/MM/dd HH:mm:ss"));
		red.setRed_money(Double.valueOf(red_money));
		red.setRed_has_money(Double.valueOf(red_money));
		red.setRed_user_id(red_user_id);
		red.setRed_type(red_type);
		red.setRed_type_name(getRedTypeName(red_type));
		red.setRed_all_count(Integer.valueOf(red_all_count));
		red.setRed_has_count(Integer.valueOf(red_all_count));
		red.setRed_user_name(userOne2.getUsername());
		red.setRed_content(red_content);;
		insert(red);
		//添加资金明细记录RechargeRecord
		RechargeRecord rechargeRecord = new RechargeRecord();
		rechargeRecord.setActive("21");
		rechargeRecord.setAmount(red_money);
		rechargeRecord.setCreatedTime(new Date());
		rechargeRecord.setCreator(Long.valueOf(red_user_id));
		rechargeRecord.setLastModifiedTime(new Date());
		rechargeRecord.setLastModifier(Long.valueOf(red_user_id));
		rechargeRecord.setOrderId(red.getRed_id().toString());
		rechargeRecord.setUserId(red_user_id.intValue());
		rechargeRecordMapper.insert(rechargeRecord);
		return red;
	}

	
	@Override
	public Red addRed(UserOne userOne2, String red_money, String red_type, String red_all_count, Long red_user_id,String red_content) {
		//扣除发红包用户的余额
		userOne2.setBalance(userOne2.getBalance().subtract(new BigDecimal(red_money)));
		appUserOneService.update(userOne2);
		//添加红包发送记录
		Red red = new Red();
		red.setRed_send_date(DateUtil.dateToStr(new Date(), "yyyy/MM/dd HH:mm:ss"));
		red.setRed_money(Double.valueOf(red_money));
		red.setRed_has_money(Double.valueOf(red_money));
		red.setRed_user_id(red_user_id);
		red.setRed_type(red_type);
		red.setRed_type_name(getRedTypeName(red_type));
		red.setRed_all_count(Integer.valueOf(red_all_count));
		red.setRed_has_count(Integer.valueOf(red_all_count));
		red.setRed_user_name(userOne2.getUsername());
		red.setRed_content(red_content);;
		insert(red);
		//添加资金明细记录RechargeRecord
		RechargeRecord rechargeRecord = new RechargeRecord();
		rechargeRecord.setActive("21");
		rechargeRecord.setAmount(red_money);
		rechargeRecord.setCreatedTime(new Date());
		rechargeRecord.setCreator(Long.valueOf(red_user_id));
		rechargeRecord.setLastModifiedTime(new Date());
		rechargeRecord.setLastModifier(Long.valueOf(red_user_id));
		rechargeRecord.setOrderId(red.getRed_id().toString());
		rechargeRecord.setUserId(red_user_id.intValue());
		rechargeRecordMapper.insert(rechargeRecord);
		//缓存中添加预分配红包策略
		RedPackage redPackage = new RedPackage(Integer.valueOf(red_all_count), Double.valueOf(red_money));
		double max = 0D;
		for(int i=0;i<Integer.valueOf(red_all_count);i++){
			double randomMoney = RedUtils.getRandomMoney(redPackage);
			redisTemplate.opsForList().leftPush("RED_PRE_LIST_"+red.getRed_id(),Double.toString(randomMoney));
			max = max<randomMoney?randomMoney:max;
		}
		//缓存中设置最佳手气的值
		redisTemplate.opsForValue().set("RED_MAX_"+red.getRed_id(), Double.toString(max));
		//缓存中设置最佳手气的领取次数
		redisTemplate.opsForValue().set("RED_MAX_TIME_"+red.getRed_id(), "0");
		//将红包信息存入缓存中
		//redisTemplate.opsForValue().set("RED_INFO_"+red.getRed_id(), Json);
		return red;
	}
	private String getRedTypeName(String red_type) {
		return red_type.equals("0")?"普通红包":"拼手气红包";
	}
	
	public static void main(String[] args) {
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("aaa", "");
		System.out.println(com.alibaba.fastjson.JSONObject.toJSONString(jsonObject));
	}


	@Override
	public int canUpdateRed(Long red_id, String red_type, Long grab_user_id) {
		Red red = redMapper.get(red_id);
		if(red.getRed_outTime().equals("1")){
			//红包过期
			return 1;
		}
		if("0".equals(red_type)){
			//判断该用户是否已经抢过红包
			if(red.getRed_has_count()>0){
				return 0;
			}else{
				return 2;
			}
		}else{
			//判断该用户是否已经抢过红包
			List<String> range = redisTemplate.opsForList().range("RED_JSONLIST_"+red_id,0,redisTemplate.opsForList().size("RED_JSONLIST_"+red_id));
			for (int i = 0; i < range.size(); i++) {
				String string = range.get(i);
				JSONObject fromObject = JSONObject.fromObject(string);
				if(fromObject.getString("userId").equals(grab_user_id.toString())){
					return 3;
				}
			}
			Long size = redisTemplate.opsForList().size("RED_PRE_LIST_"+red_id);
			if(size>0){
				return 0;
			}else{
				return 2;
			}
		}
	}

	@Override
	public RedJsonResult updateOneRed(Long red_id, Long grab_user_id) {
		RedJsonResult apm = new RedJsonResult();
		Red red = redMapper.get(red_id);
        apm.setCode("0");
        apm.setErrorDescription("单人红包收取成功");
		//判断红包是否过期或已被抢完或该用户已经抢过(红包发送记录为空为过期)
		int canUpdateRed = canUpdateRed(red_id, "0",grab_user_id);
		if(canUpdateRed==1){
			apm.setCode("1");
			apm.setRed_state("2");
			apm.setErrorDescription("红包已过期");
			JSONObject result = new JSONObject();
			UserOne sendUser = appUserOneService.get(red.getRed_user_id().intValue());
			result.put("sendUser", sendUser);
			result.put("red", red);
			apm.setDataObject(result);
			return apm;
		}else if(canUpdateRed==2){
			apm.setCode("1");
			apm.setRed_state("1");
			apm.setErrorDescription("红包已被抢完");
			JSONObject result = new JSONObject();
			UserOne sendUser = appUserOneService.get(red.getRed_user_id().intValue());
			result.put("sendUser", sendUser);
			result.put("red", red);
			apm.setDataObject(result);
			return apm;
		}else if(canUpdateRed==3){
			apm.setCode("1");
			apm.setRed_state("3");
			apm.setErrorDescription("同一个用户同一个红包只能抢一次");
			JSONObject result = new JSONObject();
			UserOne sendUser = appUserOneService.get(red.getRed_user_id().intValue());
			result.put("sendUser", sendUser);
			result.put("red", red);
			apm.setDataObject(result);
			return apm;
		}
		//增加收取人的账户余额
		UserOne userOne = appUserOneService.get(grab_user_id.intValue());
		userOne.setBalance(userOne.getBalance().add(new BigDecimal(red.getRed_money())));
		appUserOneService.update(userOne);
		//添加抢红包记录
		RedRecord redRecord = new RedRecord();
		redRecord.setRed_id(red_id);
		redRecord.setRed_money(Double.toString(red.getRed_money()));
		redRecord.setRed_name(red.getRed_user_name());
		String dateToStr = DateUtil.dateToStr(new Date(), "yyyy/MM/dd HH:mm:ss");
		redRecord.setRed_record_date(dateToStr);
		redRecord.setRed_type(red.getRed_type());
		redRecord.setRed_type_name(red.getRed_type_name());
		redRecord.setRed_user_id(red.getRed_user_id());
		redRecord.setRed_ismax("1");
		redRecordMapper.insert(redRecord);
		//修改发红包记录
		red.setRed_has_count(0);
		red.setRed_has_money(0D);
		
		JSONObject jsonObject = new JSONObject();
		String nickname = filter(userOne.getNickname());
		String avatar = filter(userOne.getAvator());
		jsonObject.put("userId", grab_user_id);
		jsonObject.put("nickname", nickname);
		jsonObject.put("avatar", avatar);
		jsonObject.put("grabTime",dateToStr);
		jsonObject.put("money", red.getRed_money());
		jsonObject.put("isMax", "1");
		JSONArray jsonArray = new JSONArray();
		jsonArray.add(jsonObject);
		
		String red_json = jsonArray.toString();
		red.setRed_json(red_json);
		redMapper.update(red);
		//添加资金明细记录RechargeRecord
		RechargeRecord rechargeRecord = new RechargeRecord();
		rechargeRecord.setActive("22");
		rechargeRecord.setAmount(Double.toString(red.getRed_money()));
		rechargeRecord.setCreatedTime(DateUtil.strToDate(dateToStr));
		rechargeRecord.setCreator(Long.valueOf(grab_user_id));
		rechargeRecord.setLastModifiedTime(DateUtil.strToDate(dateToStr));
		rechargeRecord.setLastModifier(Long.valueOf(grab_user_id));
		rechargeRecord.setOrderId(redRecord.getRed_record_id().toString());
		rechargeRecord.setUserId(grab_user_id.intValue());
		RechargeRecordThread rechargeRecordThread = new RechargeRecordThread(rechargeRecordMapper, rechargeRecord);
		redThreadPool.executeJob(rechargeRecordThread);
		//推送抢红包信息
		List<String> receivers = new ArrayList<>();
		receivers.add(userOne.getPhoneNumber()); //18510829662  18263826828
		JsonObject jsonObject1 = new JsonObject();
		jsonObject1.addProperty("message","我领取了"+red.getRed_user_name()+"的红包");
		jsonObject1.addProperty("type","redSysMsg");
		Map map = new HashMap<>();
		map.put("type", "person");
		map.put("receivers", receivers);
		map.put("content", jsonObject1.toString());
		map.put("sender", userOne.getPhoneNumber());
		map.put("msgType", "1");
		redThreadPool.executeJob(new PushMsgThread(groupemplate, map ));
		JSONObject result = new JSONObject();
		UserOne sendUser = appUserOneService.get(red.getRed_user_id().intValue());
		result.put("sendUser", sendUser);
		result.put("red", red);
		apm.setDataObject(result);
		return apm;
	}

	@Override
	public RedJsonResult updateRed(Long red_id, Long grab_user_id,String groupId) {
		//判断红包是否可抢
		//判断红包是否过期或已被抢完或该用户已经抢过(红包发送记录为空为过期)
		RedJsonResult apm = new RedJsonResult();
		Red red = redMapper.get(red_id);
		UserOne sendUser = appUserOneService.get(red.getRed_user_id().intValue());
		JSONObject result = new JSONObject();
		result.put("sendUser", sendUser);
		result.put("red", red);
		apm.setDataObject(result);
		int canUpdateRed = canUpdateRed(red_id, "1",grab_user_id);
		if(canUpdateRed==1){
			apm.setCode("1");
			apm.setRed_state("2");
			apm.setErrorDescription("红包已过期");
			return apm;
		}else if(canUpdateRed==2){
			apm.setCode("1");
			apm.setRed_state("1");
			apm.setErrorDescription("红包已被抢完");
			return apm;
		}else if(canUpdateRed==3){
			apm.setCode("1");
			apm.setRed_state("3");
			apm.setErrorDescription("同一个用户同一个红包只能抢一次");
			return apm;
		}
		//获取抢到的红包
		String money = redisTemplate.opsForList().rightPop("RED_PRE_LIST_"+red_id);
		if(StringUtils.isBlank(money)){
			//红包已经被抢完
			//删除缓存中的信息  (过期时间为24h-红包创建时间)
			red = redMapper.get(red_id);
			String red_send_date = red.getRed_send_date();
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			try {
				Date parse = simpleDateFormat.parse(red_send_date);
				long time = parse.getTime();
				long now = System.currentTimeMillis();
				long time24 = 24*60*60*1000;
				long left = (time24-(now-time));
				redisTemplate.delete("RED_MAX_"+red_id);
				redisTemplate.delete("RED_MAX_TIME_"+red_id);
				redisTemplate.delete("RED_PRE_LIST_"+red_id);
				redisTemplate.expire("RED_JSONLIST_"+red_id, left, TimeUnit.MILLISECONDS);
				apm.setCode("1");
				apm.setRed_state("1");
				apm.setErrorDescription("红包已被抢完");
				return apm;
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		//修改缓存中的信息"RED_JSONLIST_"+red_id
		JSONObject jsonObject = new JSONObject();
		UserOne userOne = appUserOneService.get(grab_user_id.intValue());
		UserOne user = appUserOneService.get(grab_user_id.intValue());
		String nickname = filter(userOne.getNickname());
		String avatar = filter(user.getAvator());
		jsonObject.put("userId", grab_user_id);
		jsonObject.put("nickname", nickname);
		jsonObject.put("avatar", avatar);
		String dateToStr = DateUtil.dateToStr( new Date(), "yyyy-MM-dd HH:mm:ss");
		jsonObject.put("grabTime",dateToStr);
		jsonObject.put("money", money);
		//获取最大金额红包
		String max = redisTemplate.opsForValue().get("RED_MAX_"+red_id);
		String isMax = isMax(max, money,red_id);
		jsonObject.put("isMax", isMax);
		redisTemplate.opsForList().leftPush("RED_JSONLIST_"+red_id, jsonObject.toString());
		//异步修改数据库中的红包发送的金额和json
		red = redMapper.get(Long.valueOf(red_id));
		red.setRed_has_count((red.getRed_has_count()-1));
		red.setRed_has_money((red.getRed_has_money()-Double.valueOf(money)));
		List<String> jsonList = redisTemplate.opsForList().range("RED_JSONLIST_"+red_id,0,redisTemplate.opsForList().size("RED_JSONLIST_"+red.getRed_id()));
		JSONArray jsonArray = new JSONArray();
		for (String json : jsonList) {
			JSONObject jsonObject1 = JSONObject.fromObject(json);
			jsonArray.add(jsonObject1);
		}
		String redJson = jsonArray.toString();
		red.setRed_json(redJson);
		RedSendThread redSendThread = new RedSendThread(redMapper, red);
		redThreadPool.executeJob(redSendThread);
		//异步同步数据库抢红包记录
		RedRecord redRecord = new RedRecord();
		redRecord.setRed_id(red_id);
		redRecord.setRed_ismax(isMax);
		redRecord.setRed_money(money);
		redRecord.setRed_name(nickname);
		redRecord.setRed_record_date(dateToStr);
		redRecord.setRed_type("1");
		redRecord.setRed_type_name("拼手气红包");
		redRecord.setRed_user_id(grab_user_id);
		//RedRecordThread redRecordThread = new RedRecordThread(redRecordMapper, redRecord);
		//redThreadPool.executeJob(redRecordThread);
		redRecordMapper.insert(redRecord);
		//添加资金明细记录RechargeRecord
		RechargeRecord rechargeRecord = new RechargeRecord();
		rechargeRecord.setActive("22");
		rechargeRecord.setAmount(money);
		rechargeRecord.setCreatedTime(DateUtil.strToDate(dateToStr));
		rechargeRecord.setCreator(Long.valueOf(grab_user_id));
		rechargeRecord.setLastModifiedTime(DateUtil.strToDate(dateToStr));
		rechargeRecord.setLastModifier(Long.valueOf(grab_user_id));
		rechargeRecord.setOrderId(redRecord.getRed_record_id().toString());
		rechargeRecord.setUserId(grab_user_id.intValue());
		RechargeRecordThread rechargeRecordThread = new RechargeRecordThread(rechargeRecordMapper, rechargeRecord);
		redThreadPool.executeJob(rechargeRecordThread);
		apm.setCode("0");
		apm.setRed_state("0");
		apm.setErrorDescription("红包抢成功");
		//推送抢红包信息
		List<String> receivers = new ArrayList<>();
		receivers.add(groupId); //18510829662  18263826828
		JsonObject jsonObject1 = new JsonObject();
		jsonObject1.addProperty("message",userOne.getNickname()+"领取了("+red.getRed_user_name()+")的红包");
		jsonObject1.addProperty("type","redSysMsg");
		Map map = new HashMap<>();
		map.put("type", "group");
		map.put("receivers", receivers);
		map.put("content", jsonObject1.toString());
		map.put("sender", userOne.getPhoneNumber());
		map.put("msgType", "1");
		redThreadPool.executeJob(new PushMsgThread(groupemplate, map ));
		apm.setRed(red);
		return apm;
	}

	private String filter(String nickname) {
		return nickname==null?"":nickname;
	}

	private String isMax(String max, String money,Long red_id) {
		if(!max.equals(money)){
			return "0";
		}else{
			Long maxTime = redisTemplate.opsForValue().increment("RED_MAX_TIME_"+red_id, 1);
			if(maxTime==1){
				return "1";
			}else{
				return "0";
			}
		}
	}

	@Override
	public JsonResult getSendListByUserIdAndYear(Map map) {
		Map resultMap = new HashMap<>();
		Map<String, String> sendListHead = redMapper.getSendHeadByUserIdAndYear(map);
		List<Map<String, String>> sendList = redMapper.getSendListByUserIdAndYear(map);
		resultMap.put("sendListHead", sendListHead);
		resultMap.put("sendList", sendList);
		JsonResult apm = new JsonResult();
		apm.setCode("0");
		apm.setErrorDescription("获取发送红包列表成功");
		apm.setDataObject(resultMap);
		return apm;
	}
	@Override
	public JsonResult getGrabListByUserIdAndYear(Map map) {
		Map resultMap = new HashMap<>();
		Map<String, String> grabListHead = redMapper.getGrabHeadByUserIdAndYear(map);
		List<Map<String, String>> grabList = redMapper.getGrabListByUserIdAndYear(map);
		resultMap.put("grabListHead", grabListHead);
		resultMap.put("grabList", grabList);
		JsonResult apm = new JsonResult();
		apm.setCode("0");
		apm.setErrorDescription("获取抢红包列表成功");
		apm.setDataObject(resultMap);
		return apm;
	}

	@Override
	public JsonResult getGrabListByUserIdAndYear(Long redId) {
		Map resultMap = new HashMap<>();
		Map<String, String> grabListHead = new HashMap<>();
		Red red = redMapper.get(redId);
		UserOne user = appUserOneService.get(red.getRed_user_id().intValue());
		grabListHead.put("avatar", user.getAvator());
		grabListHead.put("nickname", red.getRed_user_name());
		grabListHead.put("red_content", red.getRed_content());
		grabListHead.put("red_all_count", red.getRed_all_count().toString());
		grabListHead.put("red_money", red.getRed_money().toString());
		String red_send_date = red.getRed_send_date();
		grabListHead.put("red_send_date", red_send_date);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		try {
			Date sendDate = dateFormat.parse(red_send_date);
			Date now=new Date();
			String passTime = Long.toString((now.getTime()-sendDate.getTime())/1000);
			grabListHead.put("passTime", passTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		//计算过去了多少秒
		//获取列表,先从缓存中取
		//实时抢到的总金额
		Double all_grab_money = 0D;
		List<String> redisList = redisTemplate.opsForList().range("RED_JSONLIST_"+redId, 0, redisTemplate.opsForList().size("RED_JSONLIST_"+redId));
		if(redisList!=null&&redisList.size()>0){
			JSONArray array = new JSONArray();
			for (int i = 0; i < redisList.size(); i++) {
				String redisStr = redisList.get(i);
				JSONObject fromObject = JSONObject.fromObject(redisStr);
				double double1 = fromObject.getDouble("money");
				all_grab_money+=double1;
				array.add(fromObject);
			}
			resultMap.put("grabList", array);
		}else{
			Red red2 = redMapper.get(redId);
			String red_json = red2.getRed_json();
			if(StringUtils.isNotBlank(red_json)){
				JSONArray fromArray = JSONArray.fromObject(red_json);
				for (int i = 0; i < fromArray.size(); i++) {
					JSONObject jsonObject = fromArray.getJSONObject(i);
					double double1 = jsonObject.getDouble("money");
					all_grab_money+=double1;
				}
				resultMap.put("grabList", JSONArray.fromObject(red_json));
			}else{
				resultMap.put("grabList", new JSONArray());
			}
		}
		grabListHead.put("all_grab_money", all_grab_money.toString());
		grabListHead.put("red_money", red.getRed_money().toString());
		resultMap.put("grabListHead", grabListHead);
		JsonResult apm = new JsonResult();
		apm.setCode("0");
		apm.setErrorDescription("获取实时抢红包列表成功");
		apm.setDataObject(com.alibaba.fastjson.JSONObject.toJSONString(resultMap,SerializerFeature.WriteMapNullValue));
		return apm;
	}
	
	/**
	 * 获取失效的红包
	 */
	@Override
	public List<Red> findOutTime() {
		return redMapper.findOutTime();
	}
}