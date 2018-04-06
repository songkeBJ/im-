package com.sellerNet.backManagement.service.impl;

import com.sellerNet.backManagement.controller.app.SDKSendTemplateSMS;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.CodeMapper;
import com.sellerNet.backManagement.entity.Code;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.service.CodeService;
import com.sellerNet.backManagement.utils.Alidayu;
import com.sellerNet.backManagement.utils.HttpRequest;
import com.sellerNet.backManagement.utils.NumberUtil;
import com.sellerNet.backManagement.utils.SmsUtils;

import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl extends BaseServiceImpl<Code, Long>
  implements CodeService
{
  private static final Logger LOGGER = LoggerFactory.getLogger(CodeServiceImpl.class);

  @Resource
  private CodeMapper codeMapper;

  public JsonResult sendOne(String phoneNumber,String mbId) throws IOException {
    JsonResult jsonResult = new JsonResult();
    Code send = findInAMinute(phoneNumber);
    if (send != null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("发送短信次数频繁!请稍后再试!");
      return jsonResult;
    }
    // String code = NumberUtil.generateRandomCode();
    //给客户看8888
    String code = "8888";
    LOGGER.debug("Code is " + code);
	//容联发送验证码
	//boolean sendMessage = SDKSendTemplateSMS.sendMessage(phoneNumber, code, mbId);
	boolean sendMessage = true;
	if(sendMessage){
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("验证码已发送!请注意查收!");
		replaceCode(phoneNumber, code);
	}else{
		jsonResult.setCode("-1");
		jsonResult.setErrorDescription("验证码发送失败");
	}
    return jsonResult;
  }
  public JsonResult sendOne2(String phoneNumber) throws IOException {
	  JsonResult jsonResult = new JsonResult();
	  Code send = findInAMinute(phoneNumber);
	  if (send != null) {
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("发送短信次数频繁!请稍后再试!");
		  return jsonResult;
	  }
	  String code = NumberUtil.generateRandomCode();
	  LOGGER.debug("Code is " + code);
//  HttpRequest.sendGet("http://106.ihuyi.cn/webservice/sms.php", "method=Submit&account=cf_52mj&password=6dbe43c2ef4c3cf1797d4a2c1f8513ab&mobile=" + phoneNumber + "&content=您的验证码是：" + code + "。请不要把验证码泄露给其他人。如非本人操作，可不用理会！");
	 String line = HttpRequest.sendSms2(code, phoneNumber);
	 jsonResult.setCode("0");
	 jsonResult.setErrorDescription("验证码已发送!请注意查收!");
	 replaceCode(phoneNumber, code);
	 return jsonResult;
  }
  
  public JsonResult sendOne3(String phoneNumber) throws IOException {
	  JsonResult jsonResult = new JsonResult();
	  Code send = findInAMinute(phoneNumber);
	  if (send != null) {
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("发送短信次数频繁!请稍后再试!");
		  return jsonResult;
	  }
	  String code = NumberUtil.generateRandomCode();
	  LOGGER.debug("Code is " + code);
	  SmsUtils.sendSms(phoneNumber, code);
	  jsonResult.setCode("0");
	  jsonResult.setErrorDescription("验证码已发送!请注意查收!");
	  replaceCode(phoneNumber, code);
	  return jsonResult;
  }

  public JsonResult checkCode(String phoneNumber, String code)
  {
    JsonResult jsonResult = new JsonResult();
    Map map = new HashMap();
    map.put("phoneNumber", phoneNumber);
    map.put("code", code);
    Code code1 = this.codeMapper.selectParam(map).size() == 0 ? null : (Code)this.codeMapper.selectParam(map).get(0);
    if (code1 == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("验证码错误!");
      return jsonResult;
    }
    return jsonResult;
  }

  private Code findInAMinute(String phoneNumber)
  {
    Long time = Long.valueOf(new Date().getTime());
    Date queryDate = new Date(time.longValue() - 600000L);
    LOGGER.debug("time");
    Map map = new HashMap();
    map.put("phoneNumber", phoneNumber);
    map.put("createdTime", queryDate.toString());
    List codes = this.codeMapper.selectParam(map);
    return codes.size() == 0 ? null : (Code)codes.get(0);
  }

  private void replaceCode(String phoneNumber, String code)
  {
    Map map = new HashMap();
    map.put("phoneNumber", phoneNumber);
    map.put("code", code);
    Code code1 = this.codeMapper.selectParam(map).size() == 0 ? null : (Code)this.codeMapper.selectParam(map).get(0);
    if (code1 != null) {
      Code code2 = new Code();
      code2.setPhoneNumber(phoneNumber);
      code2.setIsLocked(Boolean.valueOf(true));
      this.codeMapper.update(code2);
    }
    Code sent = new Code();
    sent.setCode(code);
    sent.setPhoneNumber(phoneNumber);
    this.codeMapper.insert(sent);
  }

  protected BaseDao<Code, Long> getDao()
  {
    return this.codeMapper;
  }
}