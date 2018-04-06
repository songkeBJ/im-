package com.sellerNet.backManagement.controller.manager;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
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

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.CityAgent;
import com.sellerNet.backManagement.dto.CityDto;
import com.sellerNet.backManagement.entity.AgentUser;
import com.sellerNet.backManagement.entity.Citys;
import com.sellerNet.backManagement.entity.Order;
import com.sellerNet.backManagement.entity.PageEntity;
import com.sellerNet.backManagement.entity.PagingResult;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.CityAgentService;
import com.sellerNet.backManagement.service.CitysService;
import com.sellerNet.backManagement.service.ManagerUserService;
import com.sellerNet.backManagement.utils.NumberUtil;
import com.sellerNet.backManagement.utils.StringUtil;

/**
 * 城市列表管理
 */
@Controller
@RequestMapping({ "/agentUser" })
public class CitysController extends BaseController {
	private static final Logger LOGGER = LoggerFactory.getLogger(CitysController.class);

	@Resource
	private CitysService citysService;
	@Resource
	private AppUserOneService appUserOneService;
	@Resource
	private CityAgentService cityAgentService;
	@Resource
	private ManagerUserService managerUserService;
	

	/**
	 * 跳转城市页面
	 * 
	 * @return
	 */
	@RequestMapping(value = { "/getCitys.do" }, method = { RequestMethod.GET })
	public String getCitys() {
		return "citysManage";
	}

	/**
	 * 加载城市列表集合
	 * @param page
	 * @param rows
	 * @param cityName
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = { "/citysList.do" }, method = {RequestMethod.POST})
	public Map<String, Object> appuserList(
			@RequestParam(value = "page", required = false) String page,
			@RequestParam(value = "rows", required = false) String rows,
			@RequestParam(value = "name", required = false) String cityName,
			@RequestParam(value = "flag", required = false) String flag) {
//		Map map = new HashMap<>();
//		map.put("page",NumberUtil.countOffset(Integer.valueOf(page)));
//		map.put("rows", rows);
//		Map result = new HashMap();
//		PagingResult feedbacklist = this.citysService.selectAllArea(map);
//		if (feedbacklist.getResultList().size() > 0) {
//			List<Order> orders = feedbacklist.getResultList();
//		}
//		result.put("rows", feedbacklist.getResultList());
//		result.put("total", Integer.valueOf(feedbacklist.getTotalSize()));
//		return result;
		Map<String,String> mapAll =new HashMap<String, String>();
		Map map2 =new HashMap();
		map2.put("userType", 2);
		List<AgentUser> agentUserList =managerUserService.selectParam(map2);
		for (AgentUser agentUser : agentUserList) {
			mapAll.put(agentUser.getId().toString(), agentUser.getName());
		}
		
		PageEntity pageEntity = new PageEntity(Integer.parseInt(page), Integer.parseInt(rows));
		Map<String, Object> map = new HashMap<String, Object>();
		if(StringUtil.isNotEmpty(cityName)){
			map.put("name", cityName);
		}
		if(flag!=null&&!flag.equals("")){
			map.put("flag", flag);
		}
		pageEntity.setParams(map);
		PagingResult userlist = citysService.selectPagination(pageEntity);
		List<CityDto> cityDtoList =userlist.getResultList();
		for (CityDto cityDto : cityDtoList) {
			if(cityDto.getAgent_integral()==null){
				continue;
			}
			cityDto.setAgent_integral(mapAll.get(cityDto.getAgent_integral()).toString());
		}
		Map result = new HashMap();
		result.put("rows", userlist.getResultList());
		result.put("total", Integer.valueOf(userlist.getTotalSize()));
		return result;
	}
	
	/**
	 * 设置代理
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/saveCity.do", method = RequestMethod.POST)
	public JSONObject saveUser(@RequestParam(value = "id",required=false) Long cityId,
			                   @RequestParam(value = "phoneNumber",required=false) String phoneNumber
							   ){
		JSONObject result=new JSONObject();
		AgentUser agentUser =managerUserService.findByName(phoneNumber);
		//UserOne userone =appUserOneService.byPhoneNumber(phoneNumber);
		if(agentUser==null){
			result.put("success", true);
			result.put("errorMsg", "该用户不存在");
		}else{
			CityAgent c =cityAgentService.get(cityId);
			c.setAgent_integral(Integer.parseInt(agentUser.getId().toString()));
			c.setArea_status(1);
			cityAgentService.update(c);
			result.put("success", true);
		}
		return result;
	}
	
	/**
	 * 删除（包含批量删除）
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/deleteCitys.do", method = RequestMethod.POST)
	public JSONObject logout(@RequestParam("id") Long id){
		JSONObject result=new JSONObject();
		CityAgent c =cityAgentService.get(id);
		
		c.setAgent_integral(null);
		c.setArea_status(0);
		cityAgentService.update(c);
		result.put("success", true);
		return result;
	}
	
	/**
	 * 获取所有的城市列表
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/getAllCitys.do", method = {RequestMethod.POST,RequestMethod.GET})
	public List<Citys> getAllCitys(){
	List<Citys> citys = citysService.select();
	return citys;
	}
	
	
}