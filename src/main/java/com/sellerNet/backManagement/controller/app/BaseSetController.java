package com.sellerNet.backManagement.controller.app;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Set;
import com.sellerNet.backManagement.entity.SetUserShow;
import com.sellerNet.backManagement.entity.Setexpression;
import com.sellerNet.backManagement.entity.Setparam;
import com.sellerNet.backManagement.service.SetService;
import com.sellerNet.backManagement.service.SetUserShowService;
import com.sellerNet.backManagement.service.SetexpressionService;
import com.sellerNet.backManagement.service.SetparamService;
import com.sellerNet.backManagement.utils.FileUpload;

import net.sf.json.JSONObject;

/**
 * 设置相关的app接口方法
 *
 */
@RestController
@RequestMapping({"api/baseset"})
public class BaseSetController extends BaseController{
	
  private static final Logger LOGGER = LoggerFactory.getLogger(BaseSetController.class);
  
  @Resource
  private SetexpressionService setexpressionService;
  
  @Resource
  private SetparamService setparamService;
  
  @Resource
  private SetUserShowService setUserShowService;
  
  @Resource
  private SetService setService;
  
  /**
   * 关于IM
   */
  @ResponseBody
  @RequestMapping(value="about.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult about(){
    JsonResult jsonResult = new JsonResult();
    Set record = new Set();
    record.setFlag("showSelf");
    record = setService.selectBySet(record);
    jsonResult.setDataObject(record);
    jsonResult.setCode("0");
    jsonResult.setErrorDescription("查询成功");
   return jsonResult;
  }
  
  
  /**
	 * 获取设置
	 */
	@ResponseBody
	@RequestMapping(value="/getOtherSet.do")
	public JsonResult getOtherSet(){
		JSONObject result=new JSONObject();
		Set set = setService.get(2L);
		Set set2 = setService.get(3L);
		Set set3 = setService.get(5L);
		result.put("cashFee", set.getContent());
		result.put("serviceNo", set2.getContent());
		result.put("maxSize", set3.getContent());
		JsonResult jsonResult = new JsonResult();
		jsonResult.setDataObject(result);
	    jsonResult.setCode("0");
	    jsonResult.setErrorDescription("查询成功");
		return jsonResult;
	}
  
  /**
   * 我的-设置-通用-我的表情.png
   */
  @ResponseBody
  @RequestMapping(value="myImg.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult myImg(@RequestParam("id") Long id){
    JsonResult jsonResult = new JsonResult();
    Setexpression record = new Setexpression();
    record.setuId(id);
    List<Setexpression> list = setexpressionService.queryList(record);
    jsonResult.setDataObject(list);
    jsonResult.setCode("0");
    jsonResult.setErrorDescription("查询成功");
    
    return jsonResult;
  }
  
  
  
  /**
   * 查询设置界面的相关参数，同上一个接口对应
   */
  @ResponseBody
  @RequestMapping(value="showprivacy.do", method={RequestMethod.GET,RequestMethod.POST})
  public JsonResult showprivacy(@RequestParam("id") Long id){
    JsonResult jsonResult = new JsonResult();
    Setparam record = new Setparam();
    record = setparamService.selectByPrimaryKey(id);
    if (record == null) {
    	record = new Setparam();
    }
    jsonResult.setDataObject(record);
    jsonResult.setCode("0");
    jsonResult.setErrorDescription("查询成功");
    return jsonResult;
  }
  
  
  

  	
	@ResponseBody
	@RequestMapping(value = "addFile.do", method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult addFile(HttpServletRequest request,@RequestParam("file") CommonsMultipartFile file,@RequestParam("id") Long id) {
		JsonResult jsonResult = new JsonResult();
		String temp = "\\headimg\\"+System.currentTimeMillis()+".jpg";
		String pathName = request.getSession().getServletContext().getRealPath("")+temp;
		System.out.println(pathName);
		System.out.println(request.getRequestURL());
		FileUpload fu = new FileUpload();
		try {
			fu.fileUpload(file,pathName);
		} catch (IOException e) {
			System.out.println(e);
		}
		String temp2 = request.getRequestURL().toString().split(Pattern.quote("/api/"))[0];
		Setexpression record = new Setexpression();
		record.setImgUrl(temp2+temp.replace("\\", "/"));
		record.setuId(id);
		setexpressionService.insert(record);
		jsonResult.setDataObject(record);
		jsonResult.setCode("0");
	    jsonResult.setErrorDescription("上传成功");
	    return jsonResult;
	}
  
  
  
  
  
  
}