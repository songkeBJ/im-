package com.sellerNet.backManagement.openapi.sdk.demo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.google.gson.JsonObject;
import com.sellerNet.backManagement.openapi.sdk.CCPRestSDK;
import com.sellerNet.backManagement.openapi.sdk.InitRonglian;

@Service
public class Groupemplate{
	
	/**
	 * 推送内容
	 * @param groupname
	 * @param username
	 * @return
	 */
	public String pushMesage(List<String> receivers, String content,String sender,String msgType){
			String success = null;
		    HashMap result = null;
			CCPRestSDK restAPI = InitRonglian.getSdk("admin");
					result = restAPI.pushMsg(receivers, content,sender,msgType);
					System.out.println("createGroup result=" + result);
					if ("000000".equals(result.get("statusCode"))){
						success = "0";
					}else {
						System.out.println("错误码=" + result.get("statusCode") + " 错误信息= " + result.get("statusMsg"));
					}
		return success;
	}
	/**
	 * 推送群内容
	 * @param groupname
	 * @param username
	 * @return
	 */
	public String pushMesageToGroup(List<String> receivers, String content,String sender,String msgType){
		String success = null;
		HashMap result = null;
		CCPRestSDK restAPI = InitRonglian.getSdk("admin");
		result = restAPI.pushMsgToGroup(receivers, content,sender,msgType);
		System.out.println("createGroup result=" + result);
		if ("000000".equals(result.get("statusCode"))){
			success = "0";
		}else {
			System.out.println("错误码=" + result.get("statusCode") + " 错误信息= " + result.get("statusMsg"));
		}
		return success;
	}
  /**
   * 创建群组
 * @param groupname
 * @param username
 * @return
 */
public String createGroup(String groupname, String username){
    String groupId = null;
    HashMap result = null;

    CCPRestSDK restAPI = InitRonglian.getSdk(username);
    result = restAPI.createGroup(groupname, "0");
    System.out.println("createGroup result=" + result);
    if ("000000".equals(result.get("statusCode"))){
    	HashMap<String,Object> data = (HashMap<String, Object>) result.get("data");
    	Set<String> keySet = data.keySet();
      for (String key : keySet) {
        Object object = data.get(key);
        System.out.println(key + " = " + object);
        groupId = (String)object;
      }
    }else {
      System.out.println("错误码=" + result.get("statusCode") + " 错误信息= " + result.get("statusMsg"));
    }
    return groupId;
  }



  public String deleteGroup(String groupId, String type, String username)
  {
    HashMap result = null;

    String code = null;
    CCPRestSDK restAPI = InitRonglian.getSdk(username);
    result = restAPI.deleteGroup(groupId, "1");
    System.out.println("deleteGroup result=" + result);
    if ("000000".equals(result.get("statusCode")))
    {
    	HashMap<String,Object> data = (HashMap<String, Object>) result.get("data");
		Set<String> keySet = data.keySet();
      for (String key : keySet) {
        Object object = data.get(key);
        System.out.println(key + " = " + object);
        code = (String)object;
      }
    }
    else {
      System.out.println("错误码=" + result.get("statusCode") + " 错误信息= " + result.get("statusMsg"));
    }
    return code;
  }

  public String InviteJoinGroup(String groupId, List<String> members, String groupName, String username)
  {
    HashMap result = null;

    String code = null;
    CCPRestSDK restAPI = InitRonglian.getSdk(username);
    result = restAPI.InviteJoinGroup(groupId, members, "1", groupName, "1");
    System.out.println("InviteJoinGroup result=" + result);
    if ("000000".equals(result.get("statusCode")))
    {
    	code="0";
    }
    else {
      System.out.println("错误码=" + result.get("statusCode") + " 错误信息= " + result.get("statusMsg"));
    }
    return code;
  }
  
  public String queryGroup(String groupId, List<String> members, String groupName, String username)
  {
    HashMap result = null;

    String code = null;
    CCPRestSDK restAPI = InitRonglian.getSdk(username);
    result = restAPI.InviteJoinGroup(groupId, members, "0", groupName, "1");
    System.out.println("InviteJoinGroup result=" + result);
    if ("000000".equals(result.get("statusCode")))
    {
    	code="0";
    }
    else {
      System.out.println("错误码=" + result.get("statusCode") + " 错误信息= " + result.get("statusMsg"));
    }
    return code;
  }
  
  public static void main(String[] args) {
	  List<String> receivers = new ArrayList<>();
	   // receivers.add("18221160579"); //18510829662(系统充值) 18510829664(提现)  18263826828 18510829663
	    receivers.add("gg8023718018"); //18510829662  18263826828
	    JsonObject jsonObject = new JsonObject();
	   // jsonObject.addProperty("type","0");
	    jsonObject.addProperty("message","您的实名认证申请已通过");
	   // jsonObject.addProperty("message","提现申请通过,金额：38元");
	//new Groupemplate().pushMesage(receivers, jsonObject.toString(),"18510829662","26");
	new Groupemplate().pushMesageToGroup(receivers, jsonObject.toString(),"16603401130","1");
	new Groupemplate().pushMesageToGroup(receivers, jsonObject.toString(),"15625172790","1");
	new Groupemplate().pushMesageToGroup(receivers, jsonObject.toString(),"18221160579","1");
	  // new Groupemplate().createGroup("末日聊天群22", "18153254126");
	   // new Groupemplate().deleteGroup("gg8020464895", "1", "18575618939");
  }
}