package com.sellerNet.backManagement.controller.manager;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sellerNet.backManagement.config.PushConst;
import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.CountParm;
import com.sellerNet.backManagement.dto.UserOneCountDto;
import com.sellerNet.backManagement.entity.AgentUser;
import com.sellerNet.backManagement.entity.AppMessage;
import com.sellerNet.backManagement.entity.Certification;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.service.AppMessageService;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.CertificationService;
import com.sellerNet.backManagement.service.CityAgentService;
import com.sellerNet.backManagement.service.CitysService;
import com.sellerNet.backManagement.service.ManagerUserService;
import com.sellerNet.backManagement.service.RechargeRecordService;
import com.sellerNet.backManagement.service.RoleService;
import com.sellerNet.backManagement.service.im.ImRequestService;
import com.sellerNet.backManagement.thread.RedThreadPool;
import com.sellerNet.backManagement.utils.Md5Utils;
import com.sellerNet.backManagement.utils.StringUtil;

/**
 * app会员管理
 *
 */
@Controller
@RequestMapping("/admin")
public class AppUserController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AppUserController.class);
	
	@Resource
	private ManagerUserService managerUserService;
	
	@Resource
	private RoleService roleService;
	
	@Resource
	private AppUserOneService appUserOneService;
	
	@Resource
	private AppUserService	 appUserService;
	@Resource
	private CityAgentService cityAgentService;
	@Resource
	private CitysService citysService;
    @Resource
    private ImRequestService imRequestService;
	@Resource
	private RechargeRecordService rechargeRecordService;
	@Resource
	private CertificationService certificationService;
	@Resource
	private AppMessageService appMessageService;
	@Resource
	private Groupemplate groupemplate;
		  
	private RedThreadPool redThreadPool=RedThreadPool.getInstance();
	/**
	 * APP用户管理页面
	 * @return
	 */
	@RequestMapping(value="/appuserManage.do", method = RequestMethod.GET)
	public String userPage(){
		return "appuserManage";
	}
	/**
	 * 实名认证管理界面
	 * @return
	 */
	@RequestMapping(value="/certificationManage.do", method = RequestMethod.GET)
	public String certificationManage(){
		return "certificationManage";
	}
	/**
	 * 获取实名申请列表
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/certificationList.do")
	public Map<String, Object> certificationList(@RequestParam(value = "page",required=false) String page,
			                      		   @RequestParam(value = "rows",required=false) String rows,
			                      		   @RequestParam(value = "pass",required=false) String pass
			                      		   ){
		PageEntity pageEntity = new PageEntity(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> map = new HashMap<String, Object>();
		if(StringUtil.isNotEmpty(pass)&&selectPass(pass)){
			map.put("pass", pass);
		}
		pageEntity.setParams(map);
		PagingResult<Certification> certificationList = certificationService.selectPagination(pageEntity);
		List<Certification> certifications = certificationList.getResultList();
		Map result = new HashMap();
		result.put("rows", certifications);
		result.put("total", Integer.valueOf(certificationList.getTotalSize()));
		return result;
	}
	private boolean selectPass(String pass) {
		if(pass==null){
			return false;
		}else{
			return Long.valueOf(pass)==-1?false:true;
		}
	}
	/**
	 * 处理实名申请
	 * @throws Exception 
	 */
	@ResponseBody
	@RequestMapping(value="/updateCertification.do")
	public JSONObject updateCertification(@RequestParam(value = "id",required=false) Long id,
			@RequestParam(value = "pass",required=false) String pass
			) throws Exception{
		JSONObject result=new JSONObject();
		Certification certification = certificationService.get(id);
		if(certification!=null&&certification.getPass().equals("2")){
			result.put("success", false);
			result.put("msg", "未通过申请不可编辑!");
			return result;
		}
		UserOne userOne = appUserOneService.get(Integer.valueOf(certification.getUser_id()));
		certification.setPass(pass);
		try {
			certificationService.update(certification);
		} catch (Exception e) {
			result.put("success", false);
			result.put("msg", "编辑失败!");
			e.printStackTrace();
			return result;
		}
		result.put("success", true);
		//推送审核结果消息
		List<String> receivers = new ArrayList<>();
		receivers.add(userOne.getPhoneNumber()); //18510829662  18263826828
		AppMessage appMessage = new AppMessage();
		appMessage.setPushtime(new Date());
		appMessage.setIsread(0);
		appMessage.setUserid((long)userOne.getUser_id());
		appMessage.setType(PushConst.CERTIFICATION);
		if(result.getBoolean("success")&&"1".equals(pass)){
			appMessage.setTitle("实名认证申请");
			appMessage.setContent("您的实名认证申请已通过");
		}else{
			appMessage.setTitle("实名认证申请");
			appMessage.setContent("您的实名认证申请未通过");
		}
		appMessageService.pushMessage(appMessage );
		return result;
	}
	@RequestMapping(value="/appuserCountManage.do", method = RequestMethod.GET)
	public String appuserCountManage(){
		return "appuserCountManage";
	}
	@RequestMapping(value="/appUserCountMonth.do", method = RequestMethod.GET)
	public String appUserCountMonth(){
		return "appUserCountMonth";
	}
	/*
	 * 按月份统计会员注册人数
	 */
	@ResponseBody
	@RequestMapping(value="/appUserCountByMonth.do", method = RequestMethod.POST)
	public List<Map<String, Object>> appUserCountByMonth(){
		List<Map<String, Object>> result=appUserOneService.countByMonth(null);
		return result;
	}
			
	@ResponseBody
	@RequestMapping(value="/appuserCount.do", method = RequestMethod.POST)
	public Map<String, Object> appuserCount(){
		CountParm count =new CountParm();
		Integer day =getNOTNULL(appUserOneService.dayCount(null));
		Integer month =getNOTNULL(appUserOneService.monthCount(null));
		Integer all =getNOTNULL(appUserOneService.allCount(null));
		List<CountParm> list =new ArrayList<CountParm>();
		count.setAll(all.toString());
		count.setMonth(month.toString());
		count.setToday(day.toString());
		Map map =new HashMap();
		map.put("sex", 0);
		Integer byman =appUserOneService.allCountBySex(map); //总人数
		map.put("sex", 1);
		Integer byfemal =appUserOneService.allCountBySex(map); //总人数
		count.setP1(byman.toString());
		count.setP2(byfemal.toString());
		list.add(count);
		Map result = new HashMap();
		result.put("rows", list);
		result.put("total", 1);
		return result;
	}
	
	private Integer getNOTNULL(Integer day) {
		return day==null?0:day;
	}
	@RequestMapping(value="/appuserCashCountManage.do", method = RequestMethod.GET)
	public String appuserCashCountManage(){
		return "appuserCashCountManage";
	}
	
	@ResponseBody
	@RequestMapping(value="/appuserCashCount.do", method = RequestMethod.POST)
	public Map<String, Object> appuserCashCount(@RequestParam(value = "page",required=false) Integer page,
   		   @RequestParam(value = "rows",required=false) Integer rows){
		Map map = new HashMap();
		map.put("start", (page-1)*rows);
		map.put("end", rows);
		List<UserOneCountDto> list =appUserOneService.dayCashCount(map);
		for (UserOneCountDto userOneCountDto : list) {
			if(userOneCountDto.getDayCount()!=null){
				userOneCountDto.setDayCount(new BigDecimal(userOneCountDto.getDayCount()).setScale(2, BigDecimal.ROUND_HALF_UP).toString());
			}
			if(userOneCountDto.getMonthCount()!=null){
				userOneCountDto.setMonthCount(new BigDecimal(userOneCountDto.getMonthCount()).setScale(2, BigDecimal.ROUND_HALF_UP).toString());
			}
			if(userOneCountDto.getAllCount()!=null){
				userOneCountDto.setAllCount(new BigDecimal(userOneCountDto.getAllCount()).setScale(2, BigDecimal.ROUND_HALF_UP).toString());
			}
		}
		Integer listcount =appUserOneService.count();
		Map result = new HashMap();
		result.put("rows", list);
		result.put("total",listcount);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/getAllUserPay.do", method = RequestMethod.POST)
	public Map<String, Object> getAllUserPay(@RequestParam(value = "page",required=false) Integer page,
   		   @RequestParam(value = "rows",required=false) Integer rows){
		Map result = new HashMap();
		String allPay =appUserOneService.allPay();
		if(allPay==null){
			allPay="0";
		}
		result.put("allPay",new BigDecimal(allPay).setScale(2,BigDecimal.ROUND_HALF_UP).toString());
		return result;
	}
	@ResponseBody
	@RequestMapping(value="/getAllDayUserPay.do", method = RequestMethod.POST)
	public Map<String, Object> getAllDayUserPay(@RequestParam(value = "page",required=false) Integer page,
			@RequestParam(value = "rows",required=false) Integer rows){
		Map result = new HashMap();
		String allPay =appUserOneService.allDayPay();
		if(allPay==null){
			allPay="0";
		}
		result.put("allDayPay",new BigDecimal(allPay).setScale(2,BigDecimal.ROUND_HALF_UP).toString());
		return result;
	}
	@ResponseBody
	@RequestMapping(value="/getAllMonthUserPay.do", method = RequestMethod.POST)
	public Map<String, Object> getAllMonthUserPay(@RequestParam(value = "page",required=false) Integer page,
			@RequestParam(value = "rows",required=false) Integer rows){
		Map result = new HashMap();
		String allPay =appUserOneService.allMonthPay();
		if(allPay==null){
			allPay="0";
		}
		result.put("allMonthPay",new BigDecimal(allPay).setScale(2,BigDecimal.ROUND_HALF_UP).toString());
		return result;
	}
	
	@SuppressWarnings("rawtypes")
	@ResponseBody
	@RequestMapping(value="/getAllUserPay2.do", method = RequestMethod.POST)
	public Map<String, Object> getAllUserPay2(@RequestParam(value = "type",required=false) Integer type){
		Map result = new HashMap();
	  	Map map =new HashMap<>();
	  	map.put("active",type);
		String aa =rechargeRecordService.alladdPay(map); 
		if(aa==null){
			aa="0";
		}
		result.put("allPay",new BigDecimal(aa).setScale(2,BigDecimal.ROUND_HALF_UP).toString());
		return result;
	}
	
	/**
	 * 获取代理商用户信息
	 * @param page
	 * @param rows
	 * @param s_userName
	 * @param s_roleId
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	@ResponseBody
	@RequestMapping(value="/appuserList.do", method = RequestMethod.POST)
	public Map<String, Object> getUserList(@RequestParam(value = "page",required=false) String page,
			                      		   @RequestParam(value = "rows",required=false) String rows,
			                      		   @RequestParam(value = "s_userName",required=false) String s_userName,
										   @RequestParam(value = "s_phoneNumber",required=false) String s_phoneNumber,
										   @RequestParam(value = "s_userId",required=false) Integer s_userId){
		PageEntity pageEntity = new PageEntity(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> map = new HashMap<String, Object>();
		if(StringUtil.isNotEmpty(s_userName)){
			map.put("name", s_userName);
		}
		
		if(StringUtil.isNotEmpty(s_phoneNumber)){
			map.put("phoneNumber", s_phoneNumber);
		}
		if(s_userId!=null){
			map.put("userId", s_userId);
		}
		pageEntity.setParams(map);
		PagingResult userlist = appUserService.selectPagination(pageEntity);
		List<User> users = userlist.getResultList();
		for (int i = 0; i < users.size(); i++) {
			User user = users.get(i);
			UserOne userOne = appUserOneService.byPhoneNumber(user.getPhoneNumber());
			//将分转换成元
			BigDecimal amount=null;
			if(userOne.getBalance()!=null){
				amount= userOne.getBalance();
			}else{
				amount=new BigDecimal(0);
			}
			user.setBalance(amount);
			user.setUsername(userOne.getUsername());
			user.setLockStatus(userOne.getLockStatus());
		}
		Map result = new HashMap();
		result.put("rows", userlist.getResultList());
		result.put("total", Integer.valueOf(userlist.getTotalSize()));
		return result;
	}
	
	/**
	 * 保存或修改用户
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/saveappUser.do", method = RequestMethod.POST)
	public JSONObject saveUser(@RequestParam(value = "userId",required=false) String userId,
			                @RequestParam(value = "name",required=false) String name,
							@RequestParam(value = "password",required=false) String password,
							@RequestParam(value = "sex",required=false) String sex,
							@RequestParam(value = "phoneNumber",required=false) String phoneNumber,
							@RequestParam(value = "userEmail",required=false) String userEmail,
							@RequestParam(value = "roleId",required=false) String roleId,
							@RequestParam(value = "userDescription",required=false) String userDescription
						){
		JSONObject result=new JSONObject();
		try {
			int saveNums=0;
			if(StringUtil.isNotEmpty(userId)){
				AgentUser user2 = managerUserService.get(Long.valueOf(userId));
				user2.setName(name);
				if(!StringUtil.isEmpty(password)){
					user2.setPassword(Md5Utils.encrypt(password));
				}
				if(sex.equals("男")){
					user2.setSex(0L);
				}else {
					user2.setSex(1L);
				}
				user2.setPhoneNumber(phoneNumber);
				user2.setUserEmail(userEmail);
				user2.setRoleId(Long.valueOf(roleId));
				user2.setUserDescription(userDescription);
				managerUserService.update(user2);
			}else {
				if(managerUserService.findByName(name)!=null){
					saveNums=-1;
				}else {
					AgentUser user = new AgentUser();
					user.setName(name);
					user.setPassword(Md5Utils.encrypt(password));
					if(sex.equals("男")){
						user.setSex(0L);
					}else {
						user.setSex(1L);
					}
					user.setPhoneNumber(phoneNumber);
					user.setUserEmail(userEmail);
					user.setRoleId(Long.valueOf(roleId));
					user.setUserDescription(userDescription);
					saveNums = managerUserService.insert(user);
				}
				if(saveNums==-1){
					result.put("success", true);
					result.put("errorMsg", "此用户名已经存在");
				}else if(saveNums==0){
					result.put("success", true);
					result.put("errorMsg", "保存失败");
				}else{
					result.put("success", true);
				}
			}
		} catch (Exception e) {
			
		}
		return result;
	}
	
	/**
	 * 删除用户（包含批量删除）
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/deleteappUser.do", method = RequestMethod.POST)
	public JSONObject logout(@RequestParam("delIds") String delIds){
		String[] str1 =  delIds.split(",");
		Long[] str2  = new Long[str1.length];
		for (int i = 0; i < str1.length; i++) {
            str2[i] = Long.valueOf(str1[i]);
        }
		List<Long> IdList = new ArrayList<Long>();
		Collections.addAll(IdList, str2);
		JSONObject result=new JSONObject();
		try {
		
			int delNums = managerUserService.deleteBatch(IdList);
			if(delNums>0){
				result.put("success", true);
				result.put("delNums", delNums);
			}else{
				result.put("errorMsg", "删除失败");
			}
		} catch (Exception e) {
			
		}
		return result;
	}
	
	/**
	 * 锁定，解锁
	 * @param id
	 * @param status
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/updateStatus.do", method = RequestMethod.POST)
	public JSONObject updateStatus(@RequestParam("id") Integer id,@RequestParam("status") Integer status){
		JSONObject result=new JSONObject();
		UserOne userOne = appUserOneService.get(id);
		userOne.setLockStatus(status);
		appUserOneService.update(userOne);
		result.put("success", true);
		return result;
	}
	
	/**
	 * 修改密码
	 * @param id
	 * @param status
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/updatePw.do", method = RequestMethod.POST)
	public JSONObject updatePw(@RequestParam("id") Integer id,@RequestParam("password") String password){
		JSONObject result=new JSONObject();
		UserOne userOne = appUserOneService.get(id);
		userOne.setPassword(Md5Utils.encrypt(password));
		appUserOneService.update(userOne);
		result.put("success", true);
		return result;
	}
	
	@RequestMapping(value="/agentUserListManage.do", method = RequestMethod.GET)
	public String agentUserListManage(){
		return "agentReport/agentUserListManage";
	}
	
	@RequestMapping(value="/agentDisCountManage.do", method = RequestMethod.GET)
	public String agentDisCountManage(){
		return "agentDisCountManage";
	}
	
	/**
	 * 统计会员人数
	 */
	@SuppressWarnings("unchecked")
	@ResponseBody
	@RequestMapping(value="/appUserCount.do", method = RequestMethod.POST)
	public Map<String, Object> appUserCount(String year){
		return appUserService.appUserCount(year);
	}
	public static void main(String[] args) {
		System.out.println(Md5Utils.encrypt("123123"));
	}
	
}
