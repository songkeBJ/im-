package com.sellerNet.backManagement.openapi.sdk;

import java.io.ByteArrayInputStream;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

import ytx.org.apache.http.HttpEntity;
import ytx.org.apache.http.HttpResponse;
import ytx.org.apache.http.client.methods.HttpGet;
import ytx.org.apache.http.client.methods.HttpPost;
import ytx.org.apache.http.client.methods.HttpRequestBase;
import ytx.org.apache.http.entity.BasicHttpEntity;
import ytx.org.apache.http.impl.client.DefaultHttpClient;
import ytx.org.apache.http.message.AbstractHttpMessage;
import ytx.org.apache.http.util.EntityUtils;

import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.sellerNet.backManagement.openapi.sdk.utils.CcopHttpClient;
import com.sellerNet.backManagement.openapi.sdk.utils.DateUtil;
import com.sellerNet.backManagement.openapi.sdk.utils.EncryptUtil;
import com.sellerNet.backManagement.openapi.sdk.utils.LoggerUtil;

public class CCPRestSDK
{
  int status;
  private static final int Request_Get = 0;
  private static final int Request_Post = 1;
  private static final String Account_Info = "AccountInfo";
  private static final String Create_SubAccount = "SubAccounts";
  private static final String Get_SubAccounts = "GetSubAccounts";
  private static final String Query_SubAccountByName = "QuerySubAccountByName";
  private static final String SMSMessages = "SMS/Messages";
  private static final String TemplateSMS = "SMS/TemplateSMS";
  private static final String Query_SMSTemplate = "SMS/QuerySMSTemplate";
  private static final String LandingCalls = "Calls/LandingCalls";
  private static final String VoiceVerify = "Calls/VoiceVerify";
  private static final String IvrDial = "ivr/dial";
  private static final String BillRecords = "BillRecords";
  private static final String queryCallState = "ivr/call";
  private static final String callResult = "CallResult";
  private static final String mediaFileUpload = "Calls/MediaFileUpload";
  private static final String Group_CreateGroup = "Group/CreateGroup";
  private static final String Group_DeleteGroup = "Group/DeleteGroup";
  private static final String Group_InviteJoinGroup = "Group/InviteJoinGroup";
  private static final String Group_DeleteGroupMember = "Group/DeleteGroupMember";
  private String SERVER_IP;
  private String SERVER_PORT;
  private String ACCOUNT_SID;
  private String ACCOUNT_TOKEN;
  private String SUBACCOUNT_SID;
  private String SUBACCOUNT_Token;
  public String App_ID;
  private BodyType BODY_TYPE = BodyType.Type_XML;
  public String Callsid;
  public String Filename;

  public void init(String serverIP, String serverPort)
  {
    if ((isEmpty(serverIP)) || (isEmpty(serverPort))) {
      LoggerUtil.fatal("初始化异常:serverIP或serverPort为空");
      throw new IllegalArgumentException("必选参数:" + (
        isEmpty(serverIP) ? " 服务器地址 " : "") + (
        isEmpty(serverPort) ? " 服务器端口 " : "") + "为空");
    }
    this.SERVER_IP = serverIP;
    this.SERVER_PORT = serverPort;
  }

  public void setAccount(String accountSid, String accountToken)
  {
    if ((isEmpty(accountSid)) || (isEmpty(accountToken))) {
      LoggerUtil.fatal("初始化异常:accountSid或accountToken为空");
      throw new IllegalArgumentException("必选参数:" + (
        isEmpty(accountSid) ? " 主帐号" : "") + (
        isEmpty(accountToken) ? " 主帐号TOKEN " : "") + "为空");
    }
    this.ACCOUNT_SID = accountSid;
    this.ACCOUNT_TOKEN = accountToken;
  }

  public void setSubAccount(String subAccountSid, String subAccountToken)
  {
    if ((isEmpty(subAccountSid)) || (isEmpty(subAccountToken))) {
      LoggerUtil.fatal("初始化异常:subAccountSid或subAccountToken为空");
      throw new IllegalArgumentException("必选参数:" + (
        isEmpty(subAccountSid) ? " 子帐号" : "") + (
        isEmpty(subAccountToken) ? " 子帐号TOKEN " : "") + "为空");
    }
    this.SUBACCOUNT_SID = subAccountSid;
    this.SUBACCOUNT_Token = subAccountToken;
  }

  public void setAppId(String appId)
  {
    if (isEmpty(appId)) {
      LoggerUtil.fatal("初始化异常:appId为空");
      throw new IllegalArgumentException("必选参数: 应用Id 为空");
    }
    this.App_ID = appId;
  }
  
  /**
	 * 创建群组
	 * 
	 * @param templateId
	 *            可选参数 模板Id，不带此参数查询全部可用模板
	 * @return
	 */
  public HashMap<String, Object> createGroup(String name, String type)
  {
    HashMap validate = accountValidate();
    if (validate != null) {
      return validate;
    }
    CcopHttpClient chc = new CcopHttpClient();
    DefaultHttpClient httpclient = null;
    try {
      httpclient = chc.registerSSL(this.SERVER_IP, "TLS", 
        Integer.parseInt(this.SERVER_PORT), "https");
    } catch (Exception e1) {
      e1.printStackTrace();
      LoggerUtil.error(e1.getMessage());
      throw new RuntimeException("初始化httpclient异常" + e1.getMessage());
    }
    String result = "";
    try {
      HttpPost httppost = (HttpPost)getHttpRequestBase(1, 
        "Group/CreateGroup", AccountType.SubAccounts);
      String requsetbody = "";

      requsetbody = "<?xml version='1.0' encoding='utf-8'?><Request><name>" + 
        name + "</name>" + "<type>" + 
        type + "</type>" + "</Request>";
      LoggerUtil.info("QuerySMSTemplate Request body =  " + requsetbody);

      System.out.println("请求的包体：" + requsetbody);
      BasicHttpEntity requestBody = new BasicHttpEntity();
      requestBody.setContent(new ByteArrayInputStream(requsetbody
        .getBytes("UTF-8")));
      requestBody.setContentLength(requsetbody.getBytes("UTF-8").length);
      httppost.setEntity(requestBody);

      HttpResponse response = httpclient.execute(httppost);
    //获取响应码
      this.status = response.getStatusLine().getStatusCode();

      System.out.println("Https请求返回状态码：" + this.status);

      HttpEntity entity = response.getEntity();

      if (entity != null) {
        result = EntityUtils.toString(entity, "UTF-8");
      }

      EntityUtils.consume(entity);
    } catch (IOException e) {
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172001", "网络错误");
    }catch (Exception e){
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172002", "无返回");
    } finally {
      if (httpclient != null)
        httpclient.getConnectionManager().shutdown();
      }
    LoggerUtil.info("QuerySMSTemplate response body = " + result);
    try {
      if (this.BODY_TYPE == BodyType.Type_JSON) {
    	  return jsonToMap(result);
      }else{
    	  return xmlToMap(result);
      }
    }catch (Exception e) {
    	return getMyError("172003", "返回包体错误");
    }
    
  }

  public HashMap<String, Object> deleteGroup(String groupId, String type)
  {
    HashMap validate = accountValidate();
    if (validate != null) {
      return validate;
    }
    CcopHttpClient chc = new CcopHttpClient();
    DefaultHttpClient httpclient = null;
    try {
      httpclient = chc.registerSSL(this.SERVER_IP, "TLS", 
        Integer.parseInt(this.SERVER_PORT), "https");
    } catch (Exception e1) {
      e1.printStackTrace();
      LoggerUtil.error(e1.getMessage());
      throw new RuntimeException("初始化httpclient异常" + e1.getMessage());
    }
    String result = "";
    try {
      HttpPost httppost = (HttpPost)getHttpRequestBase(1, 
        "Group/DeleteGroup", AccountType.SubAccounts);
      String requsetbody = "";

      requsetbody = "<?xml version='1.0' encoding='utf-8'?><Request><groupId>" + 
        groupId + "</groupId>" + "</Request>";
      LoggerUtil.info("QuerySMSTemplate Request body =  " + requsetbody);

      System.out.println("请求的包体：" + requsetbody);
      BasicHttpEntity requestBody = new BasicHttpEntity();
      requestBody.setContent(new ByteArrayInputStream(requsetbody
        .getBytes("UTF-8")));
      requestBody.setContentLength(requsetbody.getBytes("UTF-8").length);
      httppost.setEntity(requestBody);

      HttpResponse response = httpclient.execute(httppost);

      this.status = response.getStatusLine().getStatusCode();

      System.out.println("Https请求返回状态码：" + this.status);

      HttpEntity entity = response.getEntity();

      if (entity != null) {
        result = EntityUtils.toString(entity, "UTF-8");
      }

      EntityUtils.consume(entity);
    } catch (IOException e) {
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172001", "网络错误");
    }
    catch (Exception e)
    {
      HashMap localHashMap1;
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172002", "无返回");
    } finally {
      if (httpclient != null)
        httpclient.getConnectionManager().shutdown();
    }
    if (httpclient != null) {
      httpclient.getConnectionManager().shutdown();
    }
    LoggerUtil.info("QuerySMSTemplate response body = " + result);
    try {
      if (this.BODY_TYPE == BodyType.Type_JSON) {
        return jsonToMap(result);
      }
      return xmlToMap(result);
    }
    catch (Exception e) {
    }
    return getMyError("172003", "返回包体错误");
  }

  public HashMap<String, Object> InviteJoinGroup(String groupId, List<String> members, String confirm, String declared, String type)
  {
    HashMap validate = accountValidate();
    if (validate != null) {
      return validate;
    }
    CcopHttpClient chc = new CcopHttpClient();
    DefaultHttpClient httpclient = null;
    try {
      httpclient = chc.registerSSL(this.SERVER_IP, "TLS", 
        Integer.parseInt(this.SERVER_PORT), "https");
    } catch (Exception e1) {
      e1.printStackTrace();
      LoggerUtil.error(e1.getMessage());
      throw new RuntimeException("初始化httpclient异常" + e1.getMessage());
    }
    String result = "";
    try {
      HttpPost httppost = (HttpPost)getHttpRequestBase(1, 
        "Group/InviteJoinGroup", AccountType.SubAccounts);
      String requsetbody = "";

      StringBuilder sb = new StringBuilder("<?xml version='1.0' encoding='utf-8'?><Request>");
      sb.append("<groupId>").append(groupId).append("</groupId>") .append("<members>");
      if (members != null) {
        for (String member : members) {
          sb.append("<member>").append(member).append("</member>");
        }
      }
      sb.append("</members>");
      sb.append("<confirm>").append(confirm).append("</confirm>")
        .append("<declared>").append(declared).append("</declared>");
      sb.append("</Request>").toString();
      requsetbody = sb.toString();
      LoggerUtil.info("QuerySMSTemplate Request body =  " + requsetbody);

      System.out.println("请求的包体：" + requsetbody);
      BasicHttpEntity requestBody = new BasicHttpEntity();
      requestBody.setContent(new ByteArrayInputStream(requsetbody
        .getBytes("UTF-8")));
      requestBody.setContentLength(requsetbody.getBytes("UTF-8").length);
      httppost.setEntity(requestBody);

      HttpResponse response = httpclient.execute(httppost);

      this.status = response.getStatusLine().getStatusCode();

      System.out.println("Https请求返回状态码：" + this.status);

      HttpEntity entity = response.getEntity();

      if (entity != null) {
        result = EntityUtils.toString(entity, "UTF-8");
      }

      EntityUtils.consume(entity);
    } catch (IOException e) {
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172001", "网络错误");
    }
    catch (Exception e)
    {
      HashMap localHashMap1;
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172002", "无返回");
    } finally {
      if (httpclient != null)
        httpclient.getConnectionManager().shutdown();
    }
    if (httpclient != null) {
      httpclient.getConnectionManager().shutdown();
    }
    LoggerUtil.info("QuerySMSTemplate response body = " + result);
    try {
      if (this.BODY_TYPE == BodyType.Type_JSON) {
        return jsonToMap(result);
      }
      return xmlToMap(result);
    }
    catch (Exception e) {
    }
    return getMyError("172003", "返回包体错误");
  }

  public HashMap<String, Object> DeleteGroupMember(String groupId, List<String> members, String type, String templateId)
  {
    HashMap validate = accountValidate();
    if (validate != null) {
      return validate;
    }
    CcopHttpClient chc = new CcopHttpClient();
    DefaultHttpClient httpclient = null;
    try {
      httpclient = chc.registerSSL(this.SERVER_IP, "TLS", 
        Integer.parseInt(this.SERVER_PORT), "https");
    } catch (Exception e1) {
      e1.printStackTrace();
      LoggerUtil.error(e1.getMessage());
      throw new RuntimeException("初始化httpclient异常" + e1.getMessage());
    }
    String result = "";
    try {
      HttpPost httppost = (HttpPost)getHttpRequestBase(1, 
        "Group/DeleteGroupMember", AccountType.SubAccounts);
      String requsetbody = "";

      if (this.BODY_TYPE == BodyType.Type_JSON) {
        JsonObject json = new JsonObject();
        json.addProperty("appId", this.App_ID);
        json.addProperty("templateId", templateId);
        requsetbody = json.toString();
      }
      else {
        StringBuilder sb = new StringBuilder("<?xml version='1.0' encoding='utf-8'?><Request>");
        sb.append("<groupId>").append(groupId).append("</groupId>")
          .append("<members>");
        if (members != null) {
          for (String member : members) {
            sb.append("<member>").append(member).append("</member>");
          }
        }
        sb.append("</Request>").toString();
        requsetbody = sb.toString();
      }
      LoggerUtil.info("QuerySMSTemplate Request body =  " + requsetbody);

      System.out.println("请求的包体：" + requsetbody);
      BasicHttpEntity requestBody = new BasicHttpEntity();
      requestBody.setContent(new ByteArrayInputStream(requsetbody
        .getBytes("UTF-8")));
      requestBody.setContentLength(requsetbody.getBytes("UTF-8").length);
      httppost.setEntity(requestBody);

      HttpResponse response = httpclient.execute(httppost);

      this.status = response.getStatusLine().getStatusCode();

      System.out.println("Https请求返回状态码：" + this.status);

      HttpEntity entity = response.getEntity();

      if (entity != null) {
        result = EntityUtils.toString(entity, "UTF-8");
      }

      EntityUtils.consume(entity);
    } catch (IOException e) {
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172001", "网络错误");
    }
    catch (Exception e)
    {
      HashMap localHashMap1;
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172002", "无返回");
    } finally {
      if (httpclient != null)
        httpclient.getConnectionManager().shutdown();
    }
    if (httpclient != null) {
      httpclient.getConnectionManager().shutdown();
    }
    LoggerUtil.info("QuerySMSTemplate response body = " + result);
    try {
      if (this.BODY_TYPE == BodyType.Type_JSON) {
        return jsonToMap(result);
      }
      return xmlToMap(result);
    }
    catch (Exception e) {
    }
    return getMyError("172003", "返回包体错误");
  }

  public HashMap<String, Object> LogoutGroup(String groupId, List<String> members, String type, String templateId)
  {
    HashMap validate = accountValidate();
    if (validate != null) {
      return validate;
    }
    CcopHttpClient chc = new CcopHttpClient();
    DefaultHttpClient httpclient = null;
    try {
      httpclient = chc.registerSSL(this.SERVER_IP, "TLS", 
        Integer.parseInt(this.SERVER_PORT), "https");
    } catch (Exception e1) {
      e1.printStackTrace();
      LoggerUtil.error(e1.getMessage());
      throw new RuntimeException("初始化httpclient异常" + e1.getMessage());
    }
    String result = "";
    try {
      HttpPost httppost = (HttpPost)getHttpRequestBase(1, 
        "Group/DeleteGroupMember", AccountType.SubAccounts);
      String requsetbody = "";

      if (this.BODY_TYPE == BodyType.Type_JSON) {
        JsonObject json = new JsonObject();
        json.addProperty("appId", this.App_ID);
        json.addProperty("templateId", templateId);
        requsetbody = json.toString();
      }
      else {
        StringBuilder sb = new StringBuilder("<?xml version='1.0' encoding='utf-8'?><Request>");
        sb.append("<groupId>").append(groupId).append("</groupId>")
          .append("<members>");
        if (members != null) {
          for (String member : members) {
            sb.append("<member>").append(member).append("</member>");
          }
        }
        sb.append("</Request>").toString();
        requsetbody = sb.toString();
      }
      LoggerUtil.info("QuerySMSTemplate Request body =  " + requsetbody);

      System.out.println("请求的包体：" + requsetbody);
      BasicHttpEntity requestBody = new BasicHttpEntity();
      requestBody.setContent(new ByteArrayInputStream(requsetbody
        .getBytes("UTF-8")));
      requestBody.setContentLength(requsetbody.getBytes("UTF-8").length);
      httppost.setEntity(requestBody);

      HttpResponse response = httpclient.execute(httppost);

      this.status = response.getStatusLine().getStatusCode();

      System.out.println("Https请求返回状态码：" + this.status);

      HttpEntity entity = response.getEntity();

      if (entity != null) {
        result = EntityUtils.toString(entity, "UTF-8");
      }

      EntityUtils.consume(entity);
    } catch (IOException e) {
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172001", "网络错误");
    }
    catch (Exception e)
    {
      HashMap localHashMap1;
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172002", "无返回");
    } finally {
      if (httpclient != null)
        httpclient.getConnectionManager().shutdown();
    }
    if (httpclient != null) {
      httpclient.getConnectionManager().shutdown();
    }
    LoggerUtil.info("QuerySMSTemplate response body = " + result);
    try {
      if (this.BODY_TYPE == BodyType.Type_JSON) {
        return jsonToMap(result);
      }
      return xmlToMap(result);
    }
    catch (Exception e) {
    }
    return getMyError("172003", "返回包体错误");
  }

  public HashMap<String, Object> MediaFileUpload(String filename, FileInputStream fis)
  {
    HashMap validate = accountValidate();
    if (validate != null)
      return validate;
    if (isEmpty(filename)) {
      LoggerUtil.fatal("必选参数: filename  为空");
      throw new IllegalArgumentException("必选参数: filename 为空");
    }
    if (fis == null) {
      LoggerUtil.fatal("必选参数: fis  为空");
      throw new IllegalArgumentException("请检查设置的文件");
    }

    this.Filename = filename;
    CcopHttpClient chc = new CcopHttpClient();
    DefaultHttpClient httpclient = new DefaultHttpClient();
    try {
      httpclient = chc.registerSSL(this.SERVER_IP, "TLS", 
        Integer.parseInt(this.SERVER_PORT), "https");
    } catch (Exception e1) {
      e1.printStackTrace();
      LoggerUtil.error(e1.getMessage());
      throw new RuntimeException("初始化httpclient异常" + e1.getMessage());
    }
    String result = "";
    try {
      HttpPost httppost = (HttpPost)getHttpRequestBase(1, "Calls/MediaFileUpload");

      LoggerUtil.info("MediaFileUpload Request body = : " + fis);
      BasicHttpEntity requestBody = new BasicHttpEntity();
      requestBody.setContent(fis);
      requestBody.setContentLength(fis.available());
      System.out.println("请求的包体：" + requestBody);

      httppost.setEntity(requestBody);
      HttpResponse response = httpclient.execute(httppost);
      this.status = response.getStatusLine().getStatusCode();
      System.out.println("Https请求返回状态码：" + this.status);

      HttpEntity entity = response.getEntity();
      if (entity != null) {
        result = EntityUtils.toString(entity, "UTF-8");
      }
      EntityUtils.consume(entity);
    } catch (IOException e) {
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172001", "网络错误");
    }
    catch (Exception e)
    {
      HashMap localHashMap1;
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
      return getMyError("172002", "无返回");
    } finally {
      if (httpclient != null)
        httpclient.getConnectionManager().shutdown();
    }
    if (httpclient != null) {
      httpclient.getConnectionManager().shutdown();
    }
    LoggerUtil.info("billRecords response body = " + result);
    try {
      if (this.BODY_TYPE == BodyType.Type_JSON) {
        return jsonToMap(result);
      }
      return xmlToMap(result);
    }
    catch (Exception e) {
    }
    return getMyError("172003", "返回包体错误");
  }

  
  /**
	 * 推送消息
	 * 
	 * @param receiver  :接受者账号
	 * @param msgContent:推送内容
	 *            可选参数 模板Id，不带此参数查询全部可用模板
	 * @return
	 */
  public HashMap<String, Object> pushMsg(List<String> receiver, String msgContent,String sender,String msgType){
	  HashMap validate = accountValidate();
	  if(validate != null) {
		  return validate;
	  }
	  CcopHttpClient chc = new CcopHttpClient();
	  DefaultHttpClient httpclient = null;
	  try {
		  httpclient = chc.registerSSL(this.SERVER_IP, "TLS", 
	      Integer.parseInt(this.SERVER_PORT), "https");
	  }catch (Exception e1) {
		  e1.printStackTrace();
		  LoggerUtil.error(e1.getMessage());
		  throw new RuntimeException("初始化httpclient异常" + e1.getMessage());
	  }
	  String result = "";
	  try {
	    HttpPost httppost = (HttpPost)getHttpRequestBase(1, 
	      "IM/PushMsg", AccountType.Accounts);
	    String requsetbody = "";
	    //创建json入参
	    JsonObject json = new JsonObject();
	    json.addProperty("pushType", "1");//推送类型 1：个人2：群组
	    json.addProperty("appId", InitRonglian.AppID);//应用Id
	    json.addProperty("sender", sender);//发送者帐号
	    if (receiver != null) {
			StringBuilder sb = new StringBuilder("[");
			for (String s : receiver) {
				sb.append("\"" + s + "\"" + ",");
			}
			sb.replace(sb.length() - 1, sb.length(), "]");
			JsonParser parser = new JsonParser();
			JsonArray Jarray = parser.parse(sb.toString())
					.getAsJsonArray();
			json.add("receiver", Jarray);
		}
	    json.addProperty("msgType", msgType);//消息类型，1：文本消息，2：语音消息，3：视频消息，4：图片消息，5：位置消息，6：文件
	    if("26".equals(msgType)){
	    	json.addProperty("extOpts", "{\"isOfflinePush\":"+Base64.getEncoder().encodeToString("1".getBytes())+"}");
	    }
	    json.addProperty("msgContent", msgContent);
	    requsetbody = json.toString();
	    LoggerUtil.info("推送消息 Request body =  " + requsetbody);
	
	    System.out.println("请求的包体：" + requsetbody);
	    BasicHttpEntity requestBody = new BasicHttpEntity();
	    requestBody.setContent(new ByteArrayInputStream(requsetbody
				.getBytes("UTF-8")));
		requestBody.setContentLength(requsetbody.getBytes("UTF-8").length);
	    httppost.setEntity(requestBody);
	
	    HttpResponse response = httpclient.execute(httppost);
	  //获取响应码
	    this.status = response.getStatusLine().getStatusCode();
	
	    System.out.println("Https请求返回状态码：" + this.status);
	
	    HttpEntity entity = response.getEntity();
	
	    if (entity != null) {
	      result = EntityUtils.toString(entity, "UTF-8");
	    }
	
	    EntityUtils.consume(entity);
	  } catch (IOException e) {
	    e.printStackTrace();
	    LoggerUtil.error(e.getMessage());
	    return getMyError("172001", "网络错误");
	  }catch (Exception e){
	    e.printStackTrace();
	    LoggerUtil.error(e.getMessage());
	    return getMyError("172002", "无返回");
	  } finally {
	    if (httpclient != null)
	      httpclient.getConnectionManager().shutdown();
	    }
	  LoggerUtil.info("QuerySMSTemplate response body = " + result);
	  try {
	  	  return jsonToMap(result);
	  }catch (Exception e) {
	  	return getMyError("172003", "返回包体错误");
	  }
  
}
  /**
   * 推送群消息
   * 
   * @param receiver  :接受者账号
   * @param msgContent:推送内容
   *            可选参数 模板Id，不带此参数查询全部可用模板
   * @return
   */
  public HashMap<String, Object> pushMsgToGroup(List<String> receiver, String msgContent,String sender,String msgType){
	  HashMap validate = accountValidate();
	  if(validate != null) {
		  return validate;
	  }
	  CcopHttpClient chc = new CcopHttpClient();
	  DefaultHttpClient httpclient = null;
	  try {
		  httpclient = chc.registerSSL(this.SERVER_IP, "TLS", 
				  Integer.parseInt(this.SERVER_PORT), "https");
	  }catch (Exception e1) {
		  e1.printStackTrace();
		  LoggerUtil.error(e1.getMessage());
		  throw new RuntimeException("初始化httpclient异常" + e1.getMessage());
	  }
	  String result = "";
	  try {
		  HttpPost httppost = (HttpPost)getHttpRequestBase(1, 
				  "IM/PushMsg", AccountType.Accounts);
		  String requsetbody = "";
		  //创建json入参
		  JsonObject json = new JsonObject();
		  json.addProperty("pushType", "2");//推送类型 1：个人2：群组
		  json.addProperty("appId", InitRonglian.AppID);//应用Id
		  json.addProperty("sender", sender);//发送者帐号
		  if (receiver != null) {
			  StringBuilder sb = new StringBuilder("[");
			  for (String s : receiver) {
				  sb.append("\"" + s + "\"" + ",");
			  }
			  sb.replace(sb.length() - 1, sb.length(), "]");
			  JsonParser parser = new JsonParser();
			  JsonArray Jarray = parser.parse(sb.toString())
					  .getAsJsonArray();
			  json.add("receiver", Jarray);
		  }
		  json.addProperty("msgType", msgType);//消息类型，1：文本消息，2：语音消息，3：视频消息，4：图片消息，5：位置消息，6：文件
		  if("26".equals(msgType)){
			  json.addProperty("extOpts", "{\"isOfflinePush\":"+Base64.getEncoder().encodeToString("1".getBytes())+"}");
		  }
		  json.addProperty("msgContent", msgContent);
		  requsetbody = json.toString();
		  LoggerUtil.info("推送消息 Request body =  " + requsetbody);
		  
		  System.out.println("请求的包体：" + requsetbody);
		  BasicHttpEntity requestBody = new BasicHttpEntity();
		  requestBody.setContent(new ByteArrayInputStream(requsetbody
				  .getBytes("UTF-8")));
		  requestBody.setContentLength(requsetbody.getBytes("UTF-8").length);
		  httppost.setEntity(requestBody);
		  
		  HttpResponse response = httpclient.execute(httppost);
		  //获取响应码
		  this.status = response.getStatusLine().getStatusCode();
		  
		  System.out.println("Https请求返回状态码：" + this.status);
		  
		  HttpEntity entity = response.getEntity();
		  
		  if (entity != null) {
			  result = EntityUtils.toString(entity, "UTF-8");
		  }
		  
		  EntityUtils.consume(entity);
	  } catch (IOException e) {
		  e.printStackTrace();
		  LoggerUtil.error(e.getMessage());
		  return getMyError("172001", "网络错误");
	  }catch (Exception e){
		  e.printStackTrace();
		  LoggerUtil.error(e.getMessage());
		  return getMyError("172002", "无返回");
	  } finally {
		  if (httpclient != null)
			  httpclient.getConnectionManager().shutdown();
	  }
	  LoggerUtil.info("QuerySMSTemplate response body = " + result);
	  try {
		  return jsonToMap(result);
	  }catch (Exception e) {
		  return getMyError("172003", "返回包体错误");
	  }
	  
  }
  
  
  
  
  
  private HashMap<String, Object> jsonToMap(String result) {
		HashMap<String, Object> hashMap = new HashMap<String, Object>();
		JsonParser parser = new JsonParser();
		JsonObject asJsonObject = parser.parse(result).getAsJsonObject();
		Set<Entry<String, JsonElement>> entrySet = asJsonObject.entrySet();
		HashMap<String, Object> hashMap2 = new HashMap<String, Object>();

		for (Map.Entry<String, JsonElement> m : entrySet) {
			if ("statusCode".equals(m.getKey())
					|| "statusMsg".equals(m.getKey()))
				hashMap.put(m.getKey(), m.getValue().getAsString());
			else {
				if ("SubAccount".equals(m.getKey())
						|| "totalCount".equals(m.getKey())
						|| "smsTemplateList".equals(m.getKey())
						|| "token".equals(m.getKey())
						|| "callSid".equals(m.getKey())
						|| "state".equals(m.getKey())
						|| "downUrl".equals(m.getKey())) {
					if (!"SubAccount".equals(m.getKey())
							&& !"smsTemplateList".equals(m.getKey()))
						hashMap2.put(m.getKey(), m.getValue().getAsString());
					else {
						try {
							if ((m.getValue().toString().trim().length() <= 2)
									&& !m.getValue().toString().contains("[")) {
								hashMap2.put(m.getKey(), m.getValue()
										.getAsString());
								hashMap.put("data", hashMap2);
								break;
							}
							if (m.getValue().toString().contains("[]")) {
								hashMap2.put(m.getKey(), new JsonArray());
								hashMap.put("data", hashMap2);
								continue;
							}
							JsonArray asJsonArray = parser.parse(
									m.getValue().toString()).getAsJsonArray();
							ArrayList<HashMap<String, Object>> arrayList = new ArrayList<HashMap<String, Object>>();
							for (JsonElement j : asJsonArray) {
								Set<Entry<String, JsonElement>> entrySet2 = j
										.getAsJsonObject().entrySet();
								HashMap<String, Object> hashMap3 = new HashMap<String, Object>();
								for (Map.Entry<String, JsonElement> m2 : entrySet2) {
									hashMap3.put(m2.getKey(), m2.getValue()
											.getAsString());
								}
								arrayList.add(hashMap3);
							}
							hashMap2.put(m.getKey(), arrayList);
						} catch (Exception e) {
							JsonObject asJsonObject2 = parser.parse(
									m.getValue().toString()).getAsJsonObject();
							Set<Entry<String, JsonElement>> entrySet2 = asJsonObject2
									.entrySet();
							HashMap<String, Object> hashMap3 = new HashMap<String, Object>();
							for (Map.Entry<String, JsonElement> m2 : entrySet2) {
								hashMap3.put(m2.getKey(), m2.getValue()
										.getAsString());
							}
							hashMap2.put(m.getKey(), hashMap3);
							hashMap.put("data", hashMap2);
						}

					}
					hashMap.put("data", hashMap2);
				} else {

					JsonObject asJsonObject2 = parser.parse(
							m.getValue().toString()).getAsJsonObject();
					Set<Entry<String, JsonElement>> entrySet2 = asJsonObject2
							.entrySet();
					HashMap<String, Object> hashMap3 = new HashMap<String, Object>();
					for (Map.Entry<String, JsonElement> m2 : entrySet2) {
						hashMap3.put(m2.getKey(), m2.getValue().getAsString());
					}
					if (hashMap3.size() != 0) {
						hashMap2.put(m.getKey(), hashMap3);
					} else {
						hashMap2.put(m.getKey(), m.getValue().getAsString());
					}
					hashMap.put("data", hashMap2);
				}
			}
		}
		return hashMap;
	}

  private HashMap<String, Object> xmlToMap(String xml)
  {
    HashMap map = new HashMap();
    Document doc = null;
    try {
      doc = DocumentHelper.parseText(xml);
      Element rootElt = doc.getRootElement();
      HashMap hashMap2 = new HashMap();
      ArrayList arrayList = new ArrayList();
      for (Iterator i = rootElt.elementIterator(); i.hasNext(); ) {
        Element e = (Element)i.next();
        if (("statusCode".equals(e.getName())) || 
          ("statusMsg".equals(e.getName()))) {
          map.put(e.getName(), e.getText());
        }
        else if (("SubAccount".equals(e.getName())) || 
          ("TemplateSMS".equals(e.getName())) || 
          ("totalCount".equals(e.getName())) || 
          ("token".equals(e.getName())) || 
          ("callSid".equals(e.getName())) || 
          ("state".equals(e.getName())) || 
          ("downUrl".equals(e.getName()))) {
          if ((!"SubAccount".equals(e.getName())) && (!"TemplateSMS".equals(e.getName()))) {
            hashMap2.put(e.getName(), e.getText());
          } else if ("SubAccount".equals(e.getName()))
          {
            HashMap hashMap3 = new HashMap();
            Iterator i2 = e.elementIterator();
            while (i2
              .hasNext()) {
              Element e2 = (Element)i2.next();
              hashMap3.put(e2.getName(), e2.getText());
            }
            arrayList.add(hashMap3);
            hashMap2.put("SubAccount", arrayList);
          } else if ("TemplateSMS".equals(e.getName()))
          {
            HashMap hashMap3 = new HashMap();
            Iterator i2 = e.elementIterator();
            while (i2
              .hasNext()) {
              Element e2 = (Element)i2.next();
              hashMap3.put(e2.getName(), e2.getText());
            }
            arrayList.add(hashMap3);
            hashMap2.put("TemplateSMS", arrayList);
          }
          map.put("data", hashMap2);
        }
        else {
          HashMap hashMap3 = new HashMap();
          for (Iterator i2 = e.elementIterator(); i2.hasNext(); ) {
            Element e2 = (Element)i2.next();

            hashMap3.put(e2.getName(), e2.getText());
          }
          if (hashMap3.size() != 0)
            hashMap2.put(e.getName(), hashMap3);
          else {
            hashMap2.put(e.getName(), e.getText());
          }
          map.put("data", hashMap2);
        }
      }
    }
    catch (DocumentException e) {
      e.printStackTrace();
      LoggerUtil.error(e.getMessage());
    } catch (Exception e) {
      LoggerUtil.error(e.getMessage());
      e.printStackTrace();
    }
    return map;
  }

  private HttpRequestBase getHttpRequestBase(int get, String action) throws NoSuchAlgorithmException, UnsupportedEncodingException
  {
    return getHttpRequestBase(get, action, AccountType.Accounts);
  }

  private HttpRequestBase getHttpRequestBase(int get, String action, AccountType mAccountType)
    throws NoSuchAlgorithmException, UnsupportedEncodingException
  {
    String timestamp = DateUtil.dateToStr(new Date(), 
    		DateUtil.DATE_TIME_NO_SLASH);
    EncryptUtil eu = new EncryptUtil();
    String sig = "";
    String acountName = "";
    String acountType = "";
    if (mAccountType == AccountType.Accounts) {
      acountName = this.ACCOUNT_SID;
      sig = this.ACCOUNT_SID + this.ACCOUNT_TOKEN + timestamp;
      acountType = "Accounts";
    } else {
      acountName = SUBACCOUNT_SID;
      sig = App_ID + SUBACCOUNT_Token + timestamp;
      acountType = "SubAccounts";
    }
    String signature = eu.md5Digest(sig);
    String url = null;
    url = getBaseUrl().append("/" + acountType + "/")
			.append(acountName).append("/" + action + "?sig=")
			.append(signature).toString();
    if ("ivr/call".equals(action)) {
      url = url + "&callid=" + this.Callsid;
    }
    if ("Calls/MediaFileUpload".equals(action)) {
      url = url + "&appid=" + this.App_ID + "&filename=" + this.Filename;
    }
    LoggerUtil.info(getmethodName(action) + " url = " + url);

    HttpRequestBase mHttpRequestBase = null;
    if (get == 0){
    	mHttpRequestBase = new HttpGet(url);
    }else if (get == 1){
    	mHttpRequestBase = new HttpPost(url);
    }
    if ("ivr/dial".equals(action)){
    	setHttpHeaderXML(mHttpRequestBase);
    }else if ("IM/PushMsg".equals(action)){
    	setHttpPushHeader(mHttpRequestBase);
    }else{
      setHttpHeader(mHttpRequestBase);
    }
    String src ="";
    if ("IM/PushMsg".equals(action)){
    	src= acountName + ":" + timestamp;
    }else{
    	src = this.App_ID + ":" + timestamp;
    }
    

    String auth = eu.base64Encoder(src);
    mHttpRequestBase.setHeader("Authorization", auth);
    System.out.println("请求的Url：" + mHttpRequestBase);
    return mHttpRequestBase;
  }

  private String getmethodName(String action)
  {
    if (action.equals("AccountInfo"))
      return "queryAccountInfo";
    if (action.equals("SubAccounts"))
      return "createSubAccount";
    if (action.equals("GetSubAccounts"))
      return "getSubAccounts";
    if (action.equals("QuerySubAccountByName"))
      return "querySubAccount";
    if (action.equals("SMS/Messages"))
      return "sendSMS";
    if (action.equals("SMS/TemplateSMS"))
      return "sendTemplateSMS";
    if (action.equals("Calls/LandingCalls"))
      return "landingCalls";
    if (action.equals("Calls/VoiceVerify"))
      return "voiceVerify";
    if (action.equals("ivr/dial"))
      return "ivrDial";
    if (action.equals("BillRecords")) {
      return "billRecords";
    }
    return "";
  }

  private void setHttpHeaderXML(AbstractHttpMessage httpMessage)
  {
    httpMessage.setHeader("Accept", "application/xml");
    httpMessage.setHeader("Content-Type", "application/xml;charset=utf-8");
  }

  private void setHttpHeaderMedia(AbstractHttpMessage httpMessage) {
    if (this.BODY_TYPE == BodyType.Type_JSON) {
      httpMessage.setHeader("Accept", "application/json");
      httpMessage.setHeader("Content-Type", "application/octet-stream;charset=utf-8;");
    } else {
      httpMessage.setHeader("Accept", "application/xml");
      httpMessage.setHeader("Content-Type", "application/octet-stream;charset=utf-8;");
    }
  }

  private void setHttpHeader(AbstractHttpMessage httpMessage) {
    if (this.BODY_TYPE == BodyType.Type_JSON) {
      httpMessage.setHeader("Accept", "application/json");
      httpMessage.setHeader("Content-Type", 
        "application/json;charset=utf-8");
    }
    else {
      httpMessage.setHeader("Accept", "application/xml");
      httpMessage.setHeader("Content-Type", 
        "application/xml;charset=utf-8");
    }
  }
  
  private void setHttpPushHeader(AbstractHttpMessage httpMessage) {
	  httpMessage.setHeader("Accept", "application/json");
	  httpMessage.setHeader("Content-Type", "application/json;charset=utf-8");
	  
  }

  private StringBuffer getBaseUrl() {
    StringBuffer sb = new StringBuffer("https://");
    sb.append(this.SERVER_IP).append(":").append(this.SERVER_PORT);
    sb.append("/2013-12-26");
    return sb;
  }
  private StringBuffer getPushBaseUrl() {
	  StringBuffer sb = new StringBuffer("https://");
	  sb.append(this.SERVER_IP).append(":").append(this.SERVER_PORT);
	  return sb;
  }

  private boolean isEmpty(String str) {
    return ("".equals(str)) || (str == null);
  }

  private HashMap<String, Object> getMyError(String code, String msg) {
    HashMap hashMap = new HashMap();
    hashMap.put("statusCode", code);
    hashMap.put("statusMsg", msg);
    return hashMap;
  }

  private HashMap<String, Object> subAccountValidate() {
    if (isEmpty(this.SERVER_IP)) {
      return getMyError("172004", "IP为空");
    }
    if (isEmpty(this.SERVER_PORT)) {
      return getMyError("172005", "端口错误");
    }
    if (isEmpty(this.SUBACCOUNT_SID))
      return getMyError("172008", "子帐号空");
    if (isEmpty(this.SUBACCOUNT_Token))
      return getMyError("172009", "子帐号TOKEN空");
    return null;
  }

  private HashMap<String, Object> accountValidate() {
    if (isEmpty(this.SERVER_IP)) {
      return getMyError("172004", "IP为空");
    }
    if (isEmpty(this.SERVER_PORT)) {
      return getMyError("172005", "端口错误");
    }
    if (isEmpty(this.ACCOUNT_SID)) {
      return getMyError("172006", "主帐号为空");
    }
    if (isEmpty(this.ACCOUNT_TOKEN)) {
      return getMyError("172007", "主帐号TOKEN为空");
    }
    if (isEmpty(this.App_ID)) {
      return getMyError("172012", "应用ID为空");
    }
    return null;
  }

  private void setBodyType(BodyType bodyType) {
    this.BODY_TYPE = bodyType;
  }

  public static enum AccountType
  {
    Accounts, SubAccounts;
  }

  public static enum BodyType
  {
    Type_XML, Type_JSON;
  }
  
  
  public static void main(String[] args) {
	CCPRestSDK cc = InitRonglian.getSdk("admin");
	  HashMap validate = cc.accountValidate();
	    if (validate != null) {
	      System.out.println(validate); ;
	    }
	    CcopHttpClient chc = new CcopHttpClient();
	    DefaultHttpClient httpclient = null;
	    try {
	      httpclient = chc.registerSSL(cc.SERVER_IP, "TLS", 
	        Integer.parseInt(cc.SERVER_PORT), "https");
	    } catch (Exception e1) {
	      e1.printStackTrace();
	      LoggerUtil.error(e1.getMessage());
	      throw new RuntimeException("初始化httpclient异常" + e1.getMessage());
	    }
	    String result = "";
	    try {
	      HttpPost httppost = (HttpPost)cc.getHttpRequestBase(1, 
	        "Member/QueryMember", AccountType.SubAccounts);
	      String requsetbody = "";

	      requsetbody = "<?xml version='1.0' encoding='utf-8'?><Request>"
	      		+ "<appId>8aaf07085c62aa66015c85afe6cb0d58</appId>"
	      		+ "<groupId>gg8020464820</groupId>"+"</Request>";
	      LoggerUtil.info("QuerySMSTemplate Request body =  " + requsetbody);

	      System.out.println("请求的包体：" + requsetbody);
	      BasicHttpEntity requestBody = new BasicHttpEntity();
	      requestBody.setContent(new ByteArrayInputStream(requsetbody
	        .getBytes("UTF-8")));
	      requestBody.setContentLength(requsetbody.getBytes("UTF-8").length);
	      httppost.setEntity(requestBody);

	      HttpResponse response = httpclient.execute(httppost);
	    //获取响应码
	      cc.status = response.getStatusLine().getStatusCode();

	      System.out.println("Https请求返回状态码：" + cc.status);

	      HttpEntity entity = response.getEntity();

	      if (entity != null) {
	        result = EntityUtils.toString(entity, "UTF-8");
	      }

	      EntityUtils.consume(entity);
	    } catch (IOException e) {
	      e.printStackTrace();
	      LoggerUtil.error(e.getMessage());
	    }catch (Exception e){
	      e.printStackTrace();
	      LoggerUtil.error(e.getMessage());
	    } finally {
	      if (httpclient != null)
	        httpclient.getConnectionManager().shutdown();
	      }
	    LoggerUtil.info("QuerySMSTemplate response body = " + result);
	  
	  
  }
}