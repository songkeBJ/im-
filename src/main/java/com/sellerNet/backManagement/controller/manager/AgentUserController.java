package com.sellerNet.backManagement.controller.manager;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.AgentUser;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.Set;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.ManagerUserService;
import com.sellerNet.backManagement.service.RoleService;
import com.sellerNet.backManagement.service.SetService;
import com.sellerNet.backManagement.utils.Md5Utils;
import com.sellerNet.backManagement.utils.StringUtil;

/**
 * 代理商管理http://localhost:8080/recharge_Platform/agentUser/login.do
 * @author gxg
 *
 */
@Controller
@RequestMapping("/admin")
public class AgentUserController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AgentUserController.class);
	
	@Resource
	private ManagerUserService managerUserService;
	
	@Resource
	private RoleService roleService;
	  @Resource
	  private SetService setService;
	@Resource
	private AppUserOneService appUserOneService;
	@Resource
	private AppUserService appUserService;
	/**
	 * 登陆页面
	 * @return
	 */
	@RequestMapping(value="/login.do", method = RequestMethod.GET)
	public String login(){
		return "login";
	}
	
	/**
	 * 主页面
	 */
	@RequestMapping(value="/main.do", method = RequestMethod.GET)
	public String main(){
		return "main";
	}
	
	/**
	 * 会员主页面
	 */
	@RequestMapping(value="/agentmain.do", method = RequestMethod.GET)
	public String agentmain(){
		return "yxinmain";
	}
	
	/**
	 * 会员登录页面
	 */
	@RequestMapping(value="/agentLogin.do", method = RequestMethod.GET)
	public String yxinlogin(){
		return "yxinlogin";
	}
	
	/**
	 * 管理员登陆
	 */
	@RequestMapping(value="/login.do", method = RequestMethod.POST)
	public String login(@RequestParam(value="userName") String userName,
			            @RequestParam(value="password") String password,
			            @RequestParam(value="imageCode") String imageCode,
			            ModelMap modelMap,HttpSession session){
		if(StringUtil.isEmpty(userName)||StringUtil.isEmpty(password)){
			modelMap.addAttribute("error","用户名或密码为空！");
			return "login";
		}
		if(StringUtil.isEmpty(imageCode)){
			modelMap.addAttribute("error","验证码为空！");
			return "login";
		}
		if(!imageCode.equals(session.getAttribute("sRand"))){
			modelMap.addAttribute("error","验证码错误!");
			return "login";
		}
		try {
			AgentUser user =    managerUserService.findByNameAndPassowrd(userName,Md5Utils.encrypt(password));//
			//AgentUser user =    managerUserService.findByNameAndPassowrd(userName,password);
			if(user==null){
				modelMap.addAttribute("error","用户名或密码错误！");
				return "login";
			}else{
				if(user.getUserType()!=1){
					modelMap.addAttribute("error","用户不存在！");
					return "login";
				}
				String roleName  = roleService.get(user.getRoleId()).getName();
				user.setRoleName(roleName);
				session.setAttribute("currentUser", user);
				session.setAttribute("type", "maijia");
				return "redirect:/admin/main.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	/**
	 * 会员pc订阅号登陆地址
	 */
	@RequestMapping(value="/agentLogin.do", method = RequestMethod.POST)
	public String yxinlogin(@RequestParam(value="userName") String userName,
			@RequestParam(value="password") String password,
			@RequestParam(value="imageCode") String imageCode,
			ModelMap modelMap,HttpSession session){
		if(StringUtil.isEmpty(userName)||StringUtil.isEmpty(password)){
			modelMap.addAttribute("error","用户名或密码为空！");
			return "yxinlogin";
		}
		if(StringUtil.isEmpty(imageCode)){
			modelMap.addAttribute("error","验证码为空！");
			return "yxinlogin";
		}
		if(!imageCode.equals(session.getAttribute("sRand"))){
			modelMap.addAttribute("error","验证码错误!");
			return "yxinlogin";
		}
		try {
			AgentUser user =    managerUserService.findByNameAndPassowrd(userName,Md5Utils.encrypt(password));//
			//AgentUser user =    managerUserService.findByNameAndPassowrd(userName,password);//
			if(user==null){
				modelMap.addAttribute("error","用户名或密码错误！");
				return "yxinlogin";
			}else{
//				if(user.getUserType()!=2){
//					modelMap.addAttribute("error","用户不存在！");
//					return "yxinlogin";
//				}
				if(user.getIsLocked()==true){
					modelMap.addAttribute("error","用户已被锁定,请联系管理员");
					return "yxinlogin";
				}
				String roleName  = roleService.get(user.getRoleId()).getName();
				user.setRoleName(roleName);
				session.setAttribute("currentUser", user);
				session.setAttribute("type", "yxin");
				return "redirect:/admin/agentmain.do";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	/**
	 * 管理员退出
	 */
	@RequestMapping(value="/logout.do", method = RequestMethod.GET)
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return "redirect:/admin/login.do";
	}
	/**
	 *会员退出
	 */
	@RequestMapping(value="/yxinlogout.do", method = RequestMethod.GET)
	public String yxinlogout(HttpServletRequest request){
		request.getSession().invalidate();
		return "redirect:/admin/agentLogin.do";
	}
	
	/**
	 * 修改密码
	 */
	@ResponseBody
	@RequestMapping(value="/updatePassword.do", method = RequestMethod.POST)
	public JSONObject updatePassword(@RequestParam(value="userId") String userId,
			             @RequestParam(value="oldPassword") String oldPassword,
		                 @RequestParam(value="newPassword") String newPassword){
		JSONObject result=new JSONObject();
		try {
			AgentUser user = managerUserService.get(Long.valueOf(userId));
			if(!user.getPassword().equals(Md5Utils.encrypt(oldPassword))){
				result.put("success", "true");
				result.put("errorMsg", "原始密码不正确");
			}else {
				user.setPassword(Md5Utils.encrypt(newPassword));
				int updateNum=managerUserService.update(user);
				if(updateNum>0){
					result.put("success", "true");
				}else{
					result.put("success", "true");
					result.put("errorMsg", "修改密码失败！");
				}
			}
			
		} catch (Exception e) {
			
		}
		return result;
	}
	
	
	/**
	 * app用户管理页面
	 * @return
	 */
	@RequestMapping(value="/userManage.do", method = RequestMethod.GET)
	public String userPage(){
		return "userManage";
	}
	
	/**
	 * 获取app用户信息列表
	 */
	@ResponseBody
	@RequestMapping(value="/userList.do", method = RequestMethod.POST)
	public JSONObject getUserList(@RequestParam(value = "page",required=false) String page,
			                      @RequestParam(value = "rows",required=false) String rows,
			                      @RequestParam(value = "s_userName",required=false) String s_userName,
			                      @RequestParam(value ="s_roleId",required=false) String s_roleId){
		
		PageEntity pageEntity = new PageEntity(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", Long.valueOf(page)-1);
		map.put("end", Long.valueOf(rows));
		map.put("userType", 1);
		if(StringUtil.isNotEmpty(s_userName)){
			map.put("name", s_userName);
		}
		if(StringUtil.isNotEmpty(s_roleId)){
			map.put("roleId", Long.valueOf(s_roleId));
		}
		pageEntity.setParams(map);
		PagingResult<AgentUser> userlist = managerUserService.selectPagination(pageEntity);
		JSONArray jsonArray = JSONArray.fromObject(userlist.getResultList());
		JSONObject result=new JSONObject();
		result.put("rows", jsonArray);
		result.put("total", userlist.getTotalSize());
		return result;
	}
	
	/**
	 * 保存或修改用户
	 */
	@ResponseBody
	@RequestMapping(value="/saveUser.do", method = RequestMethod.POST)
	public JSONObject saveUser(@RequestParam(value = "userId",required=false) String userId,
			                @RequestParam(value = "name",required=false) String name,
							@RequestParam(value = "password",required=false) String password,
							@RequestParam(value = "sex",required=false) String sex,
							@RequestParam(value = "phoneNumber",required=false) String phoneNumber,
							@RequestParam(value = "userEmail",required=false) String userEmail,
							@RequestParam(value = "roleId",required=false) String roleId,
							@RequestParam(value = "userDescription",required=false) String userDescription,
							@RequestParam(value = "userType",defaultValue="1") Long userType,
							@RequestParam(value = "nickName",required=false) String nickName,
							@RequestParam(value = "cartNo",required=false) String cartNo,
							@RequestParam(value = "address",required=false) String address
						){
		JSONObject result=new JSONObject();
		userType=1L;
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
				user2.setAddress(address);
				user2.setCartNo(cartNo);
				user2.setNickName(nickName);
				managerUserService.update(user2);
			}else {
				if(managerUserService.findByName(name)!=null){
					saveNums=-1;
				}else {
					AgentUser user = new AgentUser();
					user.setName(name);
					user.setPassword(Md5Utils.encrypt(password));
//					if(sex.equals("男")){
//						user.setSex(0L);
//					}else {
//						user.setSex(1L);
//					}
					user.setPhoneNumber(phoneNumber);
					user.setUserEmail(userEmail);
					user.setRoleId(Long.valueOf(roleId));
					user.setUserDescription(userDescription);
					user.setUserType(userType);
					user.setAddress(address);
					user.setCartNo(cartNo);
					user.setNickName(nickName);
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
	 */
	@ResponseBody
	@RequestMapping(value="/deleteUser.do", method = RequestMethod.POST)
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
	 * 锁定用户（包含批量锁定）
	 */
	@ResponseBody
	@RequestMapping(value="/lockUser.do", method = RequestMethod.POST)
	public JSONObject lockUser(@RequestParam("delIds") String delIds,@RequestParam("type") Integer type){
		String[] str1 =  delIds.split(",");
		Long[] str2  = new Long[str1.length];
		for (int i = 0; i < str1.length; i++) {
            str2[i] = Long.valueOf(str1[i]);
        }
		List<Long> IdList = new ArrayList<Long>();
		Collections.addAll(IdList, str2);
		JSONObject result=new JSONObject();
		try {
			boolean flag=true;
			for (Long long1 : IdList) {
				AgentUser au =	managerUserService.get(long1);
				if(type==0){
					flag=false;
				}
				au.setIsLocked(flag);
				managerUserService.update(au);
			}
			result.put("success", true);
		} catch (Exception e) {
			
		}
		return result;
	}
	
	
}
