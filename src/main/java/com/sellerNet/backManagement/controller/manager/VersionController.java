package com.sellerNet.backManagement.controller.manager;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.entity.Set;
import com.sellerNet.backManagement.entity.VersionSys;
import com.sellerNet.backManagement.service.SetService;
import com.sellerNet.backManagement.service.VersionService;

/**
 * 版本及其他配置
 */
@Controller
@RequestMapping("/admin")
public class VersionController extends BaseController{
	
	@SuppressWarnings("unused")
	private static final Logger LOGGER = LoggerFactory.getLogger(VersionController.class);
	
	@Resource
	private VersionService versionService;
	@Resource
	private SetService setService;
	/**
	 * 版本号
	 * @return
	 */
	@RequestMapping(value="/versionManage.do", method = RequestMethod.GET)
	public String advertManage(){
		return "versionManage";
	}
	/**
	 * 其他设置页面
	 * @return
	 */
	@RequestMapping(value="/otherSet.do")
	public String otherSet(){
		return "otherSet";
	}
	/**
	 * 修改设置
	 */
	@ResponseBody
	@RequestMapping(value="/updateOtherSet.do")
	public JSONObject updateOtherSet(String cashFee,String serviceNo,String maxSize){
		JSONObject result=new JSONObject();
		Set set = setService.get(2L);
		Set set2 = setService.get(3L);
		Set set3 = setService.get(5L);
		if(cashFee!=null){
			set.setContent(cashFee);
			setService.update(set);
		}
		if(serviceNo!=null){
			set2.setContent(serviceNo);
			setService.update(set2);
		}
		if(maxSize!=null){
			set3.setContent(maxSize);
			setService.update(set3);
		}
		result.put("code", "0");
		return result;
	}
	/**
	 * 修改资讯收费配置
	 */
	@ResponseBody
	@RequestMapping(value="/updateNewsMoneySet.do")
	public JSONObject updateNewsMoneySet(double[] title){
		JSONObject result=new JSONObject();
		//校验配置参数是否合法
		double[] checkArray=getCheckArray(title);
		if(!check(checkArray)){
			result.put("code", "1");
			result.put("msg", "阶梯式数据输入非法!");
			return result;
		}
		Set set = setService.get(4L);
		StringBuilder stringBuilder = new StringBuilder();
		for (double d : title) {
			stringBuilder.append(d).append(",");
		}
		if(StringUtils.isBlank(stringBuilder.toString())){
			set.setContent("");
		}else{
			set.setContent(stringBuilder.toString().substring(0, stringBuilder.toString().lastIndexOf(",")));
		}
		setService.update(set);
		result.put("code", "0");
		return result;
	}
	private boolean check(double[] checkArray) {
		int num=(checkArray.length-1)/2;
		for (int i = 0; i < checkArray.length-1; i++) {
			if(checkArray[i]>checkArray[i+1]){
				return false;
			}
		}
		for (int i = 1; i < num+1; i+=2) {
			if(checkArray[i]==checkArray[i+1]){
				return false;
			}
		}
		for (int i = 0; i < num; i+=2) {
			if(checkArray[i]!=checkArray[i+1]){
				return false;
			}
		}
		return true;
	}
	private double[] getCheckArray(double[] title) {
		double[] checkArray=null;
		if(title.length==2){
			checkArray=new double[1];
			checkArray[0]=title[0];
			return checkArray;
		}else{
			int num=(title.length-2)/3;
			checkArray=new double[num*2+1];
			checkArray[0]=title[0];
			int j=1;
			for (int i = 1; i < num+1; i++) {
				checkArray[j++]=title[3*i-1];
				checkArray[j++]=title[3*i];
			}
		}
		return checkArray;
	}
	/**
	 * 获取资讯收费配置
	 */
	@ResponseBody
	@RequestMapping(value="/getNewsMoneySet.do")
	public JSONObject getNewsMoneySet(){
		JSONObject result=new JSONObject();
		Set set = setService.get(4L);
		int count = 0;
		String content = set.getContent();
		if(StringUtils.isNotBlank(content)){
			 int length = content.split(",").length;
			 count = (length-2)/3;
			 result.put("nums", content.split(","));
		}
		result.put("count", count);
		return result;
	}
	/**
	 * 获取设置
	 */
	@ResponseBody
	@RequestMapping(value="/getOtherSet.do")
	public JSONObject getOtherSet(){
		JSONObject result=new JSONObject();
		Set set = setService.get(2L);
		Set set2 = setService.get(3L);
		Set set3 = setService.get(5L);
		result.put("cashFee", set.getContent());
		result.put("serviceNo", set2.getContent());
		result.put("maxSize", set3.getContent());
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/versionList.do")
	public JSONObject versionList(@RequestParam(value = "id",required=false) Long id ){
		JSONObject result=new JSONObject();
		VersionSys ap =versionService.get(id);
		result.put("id", ap.getId());
		result.put("androidVersion", ap.getAndroidVersion());
		result.put("androidPath", ap.getAndroidPath());
		result.put("iosPath", ap.getIosPath());
		result.put("iosVersion", ap.getIosVersion());
		return result;
	}
	@ResponseBody
	@RequestMapping(value="/saveVersion.do", method = RequestMethod.POST)
	public JSONObject saveVersion(@RequestParam(value = "androidVersion",required=false) String androidVersion,
									@RequestParam(value = "androidPath",required=false) String androidPath,
			                       @RequestParam(value = "iosPath",required=false) String iosPath,
			                       @RequestParam(value = "iosVersion",required=false) String iosVersion){
		JSONObject result=new JSONObject();
		VersionSys ap =new VersionSys();
		ap.setAndroidPath(androidPath);
		ap.setAndroidVersion(androidVersion);
		ap.setIosPath(iosPath);
		ap.setIosVersion(iosVersion);
		ap.setId(1L);
		versionService.update(ap);
		result.put("success", true);
		return result;
	}
	
    
    @RequestMapping(value="/versionUpload.do",method = RequestMethod.POST)  
    @ResponseBody
    public String method2(HttpServletRequest request, HttpServletResponse response )  { 
            //多个参数的话只要多个@RequestParam即可，注意参数名要和表单里面的属性名一致
     JSONObject json =new JSONObject();
     
     FileItemFactory factory = new DiskFileItemFactory();
     ServletFileUpload upload = new ServletFileUpload(factory);
     upload.setHeaderEncoding("UTF-8");
     List items;
	try {
		items = upload.parseRequest(request);
	} catch (FileUploadException e1) {
		e1.printStackTrace();
		 return "error";
	}
     Iterator itr = items.iterator();
     while (itr.hasNext()) {
     	FileItem item = (FileItem) itr.next();
     	String fileName = item.getName();
     	long fileSize = item.getSize();
     	if (!item.isFormField()) {
     		
     		//上传文件路径
            String path = request.getSession().getServletContext().getRealPath("apk");
            System.out.println(path);
            //上传文件名
            File filepath = new File(path,fileName);
            //判断路径是否存在，如果不存在就创建一个
            if (!filepath.getParentFile().exists()) { 
                filepath.getParentFile().mkdirs();
            }
            //将上传文件保存到一个目标文件当中
            try {
				item.write(new File(path + File.separator + fileName));
			} catch (Exception e) {
				e.printStackTrace();
				 return "error";
			}
            json.put("flag", true);
            json.put("path", "apk" + File.separator + fileName);
            System.out.println(json.toString());
        } else {
            return "error";
        }
           return json.toString();  
       }  
      return "error";
    }
  }    		
     		
