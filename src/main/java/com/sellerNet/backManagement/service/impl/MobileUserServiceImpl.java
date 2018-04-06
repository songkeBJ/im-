package com.sellerNet.backManagement.service.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.AppUserOneMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.MobileUserMapper;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.MobileUser;
import com.sellerNet.backManagement.entity.MobileUserDto;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.im.ImFriend;
import com.sellerNet.backManagement.service.MobileUserService;
import com.sellerNet.backManagement.service.im.ImFriendService;
import com.sellerNet.backManagement.utils.DistanceUtils;
import com.sellerNet.backManagement.utils.NumberUtil;

@Service
public class MobileUserServiceImpl extends BaseServiceImpl<MobileUser, Long>implements MobileUserService{
	private static final Logger LOGGER = LoggerFactory.getLogger(MobileUserServiceImpl.class);

	@Resource
	private MobileUserMapper mobileUserMapper;
	
	@Resource
	private AppUserMapper userMapper;
	
	@Resource
	private AppUserOneMapper userOneMapper;
	
	@Resource
	private ImFriendService imFriendService;


	protected BaseDao<MobileUser, Long> getDao(){
	  return this.mobileUserMapper;
	}


	@Override
	public JsonResult<List<MobileUserDto>> getNearUsers( double lat ,double lon,int page,Long uid,String sex,Integer meter) {
		
		JsonResult jsonResult = new JsonResult<>();
		double[] distances = DistanceUtils.getAround(lat, lon, meter);//获取中心的四个经纬度//一千米附近的用户
		Map map = new HashMap();
		map.put("start", NumberUtil.countOffset(page));
	    map.put("end", 10);
		map.put("uid",uid);
		map.put("left_lat", distances[1]);
		map.put("right_lat", distances[3]);
		map.put("top_lon", distances[2]);
		map.put("down_lon", distances[0]);
		map.put("lat", lat);
		map.put("lon", lon);
		if(!sex.equals("2")){
			map.put("sex",Integer.parseInt(sex));
		}else{
			map.put("sex",null);
		}
		map.put("userId", uid);
		List<MobileUser> mobileUsers = mobileUserMapper.selectParam(map);
		System.out.print(map);
		List<MobileUserDto> mobileUserDtos = new ArrayList<>();
		for (int i = 0; i < mobileUsers.size(); i++) {
			MobileUser mobileUser = mobileUsers.get(i);
			MobileUserDto mobileUserDto = new MobileUserDto();
			//获取距离
			double distance = DistanceUtils.distance(lon, lat, mobileUser.getLongitud(), mobileUser.getLatitude());
			String cc  = String.valueOf(distance);
			int  a = cc.indexOf(".");
			String bString = cc.substring(0,a);
			
			mobileUserDto.setDistance(getDis(distance));
			UserOne userOne = userOneMapper.get(Integer.parseInt(mobileUser.getUserId().toString()));
			User user = userMapper.byPhoneNumber(userOne.getPhoneNumber());
			mobileUserDto.setThermalSignatrue(user.getThermalSignatrue());
			mobileUserDto.setUsername(userOne.getUsername());
			mobileUserDto.setUserId(mobileUser.getUserId());
			mobileUserDto.setAvatar(userOne.getAvator());
			mobileUserDto.setPhone(userOne.getPhoneNumber());
			mobileUserDto.setAddPay(userOne.getAddPay().toString());
			if(mobileUser.getSex()!=null){
				if(mobileUser.getSex()==0){
					mobileUserDto.setSex("男");
				}else {
					mobileUserDto.setSex("女");
				}
			}
			mobileUserDto.setDistrictName(user.getDistrictId()==null?"":user.getDistrictId());
			mobileUserDtos.add(mobileUserDto);
		}
		jsonResult.setDataObject(mobileUserDtos);
		jsonResult.setErrorDescription("获取附近的人成功");
		return jsonResult;
	}
	public String getDis(double distance){
		String str="0";
		if(distance>=0&&distance<100){
			str="100米内";
		}
		if(distance>=100&&distance<200){
			str="200米内";
		}
		if(distance>=200&&distance<300){
			str="300米内";
		}
		if(distance>=300&&distance<500){
			str="500米内";
		}
		if(distance>=500&&distance<1000){
			str="1000米内";
		}
		if(distance>1000){
			str=new BigDecimal(distance).divide(new BigDecimal(1000),2, BigDecimal.ROUND_UP)+" km";
		}
		return str;
	}


	@Override
	public MobileUser selectByUserId(Long userId) {
		Map map = new HashMap<>();
		map.put("userId", userId);
		return mobileUserMapper.selectByUserId(map);
	}
	
	


	@Override
	public JsonResult<List<MobileUserDto>> getNearpeople(double lat,double lon, Long uid) {
		JsonResult jsonResult = new JsonResult<>();
		MobileUserDto mobileUserDto = new MobileUserDto();
		Map map = new HashMap<>();
		map.put("userId", uid);
		List<MobileUser> mobileUsers = mobileUserMapper.getNearpeople(map);
		List<MobileUserDto> mobileUserDtos = new ArrayList<>();
		for (int i = 0; i < mobileUsers.size(); i++) {
			//当前用户的位置信息\
			
			MobileUser mobileUser2 =  mobileUserMapper.selectByUserId(map);
			MobileUser mobileUser = mobileUsers.get(i);
			Date date1 = mobileUser2.getCreatedTime();
			Date date2 = mobileUser.getCreatedTime();
//			l date1.getTime();
//			int d2 = Integer.parseInt(String.valueOf(date2.getTime()));
			int d = (int) (date1.getTime()-date2.getTime()/1000/60);
			if(d<3){
				//获取距离
				double distance = DistanceUtils.distance(lon, lat, mobileUser.getLongitud(), mobileUser.getLatitude());
				String cc  = String.valueOf(distance);
				int  a = cc.indexOf(".");
				String bString = cc.substring(0,a);
				
				mobileUserDto.setDistance(bString+" 米以内");
				UserOne userOne = userOneMapper.get(Integer.parseInt(uid.toString()));
				User user = userMapper.byPhoneNumber(userOne.getPhoneNumber());
				mobileUserDto.setThermalSignatrue(user.getThermalSignatrue());
				mobileUserDto.setUsername(userOne.getUsername());
				mobileUserDto.setUserId(mobileUser.getUserId());
				mobileUserDto.setAvatar(userOne.getAvator());
				if(user.getSex()!=null){
					if(user.getSex()==0){
						mobileUserDto.setSex("男");
					}else {
						mobileUserDto.setSex("女");
					}
				}
				mobileUserDto.setDistrictName(user.getDistrictId());
			}
			
		}
		if(mobileUsers.size()>0){
			jsonResult.setDataObject(mobileUserDto);
		}
		jsonResult.setErrorDescription("获取摇一摇人成功");
		return jsonResult;
	}


	@Override
	public JsonResult<List<MobileUserDto>> getNearStroe(double lat, double lon, Long uid) {
		JsonResult jsonResult = new JsonResult<>();
		MobileUserDto mobileUserDto = new MobileUserDto();
		Map map = new HashMap<>();
		map.put("userId", uid);
		List<MobileUser> mobileUsers = mobileUserMapper.getNearStroe(map);
		List<MobileUserDto> mobileUserDtos = new ArrayList<>();
		for (int i = 0; i < mobileUsers.size(); i++) {
			//当前用户的位置信息\
			MobileUser mobileUser2 =  mobileUserMapper.selectByUserId(map);
			MobileUser mobileUser = mobileUsers.get(i);
			Date date1 = mobileUser2.getCreatedTime();
			Date date2 = mobileUser.getCreatedTime();
			int d = (int) (date1.getTime()-date2.getTime()/1000/60);
			if(d<3){
				//获取距离
				double distance = DistanceUtils.distance(lon, lat, mobileUser.getLongitud(), mobileUser.getLatitude());
				String cc  = String.valueOf(distance);
				int  a = cc.indexOf(".");
				String bString = cc.substring(0,a);
				
				mobileUserDto.setDistance(bString+" 米以内");
				UserOne userOne = userOneMapper.get(Integer.parseInt(uid.toString()));
				User user = userMapper.byPhoneNumber(userOne.getPhoneNumber());
				mobileUserDto.setThermalSignatrue(user.getThermalSignatrue());
				mobileUserDto.setUsername(userOne.getUsername());
				mobileUserDto.setUserId(mobileUser.getUserId());
				mobileUserDto.setAvatar(userOne.getAvator());
				if(user.getSex()!=null){
					if(user.getSex()==0){
						mobileUserDto.setSex("男");
					}else {
						mobileUserDto.setSex("女");
					}
				}
				mobileUserDto.setDistrictName(user.getDistrictId());
			}
			
		}
		if(mobileUsers!=null){
			jsonResult.setDataObject(mobileUserDto);
		}
		jsonResult.setErrorDescription("获取摇一摇商家成功");
		return jsonResult;
	}
	
	
	
	
	public static void main(String[] args) {
		double bb  = 1.1578558E7;
		String cc  = String.valueOf(bb);
		int  a = cc.indexOf(".");
		String bString = cc.substring(0,a);
		System.out.print(bString);
//		String sjiachun = "12345E-10";
		BigDecimal db = new BigDecimal(cc);
		String ii = db.toPlainString();
//		System.out.print(Math.ceil(Double.valueOf(ii)));
	}


	@Override
	public JsonResult radarUsers(double lat, double lon,int page, Long uid) {
		JsonResult jsonResult = new JsonResult<>();
		double[] distances = DistanceUtils.getAround(lat, lon, 20000);//获取中心的四个经纬度//一千米附近的用户
		Map map = new HashMap();
//		map.put("start", NumberUtil.countOffset(page));
//	    map.put("end", 15);
		map.put("uid",uid);
		map.put("left_lat", distances[1]);
		map.put("right_lat", distances[3]);
		map.put("top_lon", distances[2]);
		map.put("down_lon", distances[0]);
		map.put("lat", lat);
		map.put("lon", lon);
		List<MobileUser> mobileUsers = mobileUserMapper.radarUsers(map);
		System.out.print(map);
		List<MobileUserDto> mobileUserDtos = new ArrayList<>();
		for (int i = 0; i < mobileUsers.size(); i++) {
			MobileUser mobileUser = mobileUsers.get(i);
			MobileUserDto mobileUserDto = new MobileUserDto();
			//获取距离
			double distance = DistanceUtils.distance(lon, lat, mobileUser.getLongitud(), mobileUser.getLatitude());
			String cc  = String.valueOf(distance);
			int  a = cc.indexOf(".");
			String bString = cc.substring(0,a);
			mobileUserDto.setDistance(bString+" 米以内");
			UserOne userOne = userOneMapper.get(Integer.parseInt(mobileUser.getUserId().toString()));
			User user = userMapper.byPhoneNumber(userOne.getPhoneNumber());
			mobileUserDto.setThermalSignatrue(user.getThermalSignatrue());
			mobileUserDto.setUsername(userOne.getUsername());
			mobileUserDto.setUserId(mobileUser.getUserId());
			mobileUserDto.setAvatar(userOne.getAvator());
			if(user.getSex()!=null){
				if(user.getSex()==0){
					mobileUserDto.setSex("男");
				}else {
					mobileUserDto.setSex("女");
				}
			}
			mobileUserDto.setDistrictName(user.getDistrictId());
			ImFriend imFriend = imFriendService.findByUserIdAndFriendId(uid, Long.valueOf(userOne.getUser_id()));
			if(imFriend!=null){
				mobileUserDto.setIsFriend(1);
			}
			mobileUserDtos.add(mobileUserDto);
		}
		LOGGER.info("用户日志输出"+mobileUserDtos.toString());
		jsonResult.setDataObject(mobileUserDtos);
		jsonResult.setErrorDescription("获取雷达的好友成功");
		return jsonResult;
	}
	
	
}