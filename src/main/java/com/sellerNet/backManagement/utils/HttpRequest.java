package com.sellerNet.backManagement.utils;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import com.alibaba.fastjson.JSONObject;

public class HttpRequest
{
  public static String sendGet(String url, String param)
  {
    String result = "";
    BufferedReader in = null;
    try {
      String urlNameString = url + "?" + param;
      URL realUrl = new URL(urlNameString);

      URLConnection connection = realUrl.openConnection();

      connection.setRequestProperty("accept", "*/*");
      connection.setRequestProperty("connection", "Keep-Alive");
      connection.setRequestProperty("user-agent", 
        "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");

      connection.connect();

      Map<String,List<String>> map = connection.getHeaderFields();

      for (String key : map.keySet()) {
        System.out.println(key + "--->" + map.get(key));
      }

      in = new BufferedReader(new InputStreamReader(
        connection.getInputStream()));
      String line;
      while ((line = in.readLine()) != null)
      {
//        String line;
        result = result + line;
      }
    } catch (Exception e) {
      System.out.println("发送GET请求出现异常！" + e);
      e.printStackTrace();
      try
      {
        if (in != null)
          in.close();
      }
      catch (Exception e2) {
        e2.printStackTrace();
      }
    }
    finally
    {
      try
      {
        if (in != null)
          in.close();
      }
      catch (Exception e2) {
        e2.printStackTrace();
      }
    }
    return result;
  }

  /**
   * 向指定 URL 发送POST方法的请求
   * 
   * @param url
   *            发送请求的 URL
   * @param param
   *            请求参数，请求参数应该是 name1=value1&name2=value2 的形式。
   * @return 所代表远程资源的响应结果
   */
  public static String sendPost(String url, String param)
  {
    PrintWriter out = null;
    BufferedReader in = null;
    String result = "";
    try {
      URL realUrl = new URL(url);

      URLConnection conn = realUrl.openConnection();

      conn.setRequestProperty("accept", "*/*");
      conn.setRequestProperty("connection", "Keep-Alive");
      conn.setRequestProperty("user-agent", 
        "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1;SV1)");

      conn.setDoOutput(true);
      conn.setDoInput(true);

      out = new PrintWriter(conn.getOutputStream());

      out.print(param);

      out.flush();

      in = new BufferedReader(
        new InputStreamReader(conn.getInputStream()));
      String line;
      while ((line = in.readLine()) != null)
      {
//        String line;
        result = result + line;
      }
    } catch (Exception e) {
      System.out.println("发送 POST 请求出现异常！" + e);
      e.printStackTrace();
      try
      {
        if (out != null) {
          out.close();
        }
        if (in != null)
          in.close();
      }
      catch (IOException ex)
      {
        ex.printStackTrace();
      }
    }
    finally
    {
      try
      {
        if (out != null) {
          out.close();
        }
        if (in != null)
          in.close();
      }
      catch (IOException ex)
      {
        ex.printStackTrace();
      }
    }
    return result;
  }

//  public static void main(String[] args){
//    String s = sendGet("http://106.ihuyi.cn/webservice/sms.php", "method=Submit&account=cf_52mj&password=6dbe43c2ef4c3cf1797d4a2c1f8513ab&mobile=18510829660&content=您的验证码是：123456。请不要把验证码泄露给其他人。如非本人操作，可不用理会！");
//    System.out.println(s);
//  }
  
  /**
   * 云购创聊短信发送接口
   * @param args
   */
  public static void main(String[] args) {
	  String s = null;
	try {
		s = sendSms3("123456", "18510829660");
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	  System.out.print(s);
  }
  
  
  /**
    * 发送短信验证码
 * @throws IOException 
  */
  public static String sendSms(String code,String phoneNumber) throws IOException{
	  String smsmessage="您的验证码是:" + code + "。请不要把验证码泄露给其他人。如非本人操作，可不用理会!";
		smsmessage=URLEncoder.encode(smsmessage);
		String sendurl="http://www.56dxw.com/sms/HttpInterfaceMoreMd5.aspx?comid=2784&username=kaichao&userpwd=8ef1327b3fa1da8ac1dbe4d9ee90d8b3&handtel=" + phoneNumber + "&sendcontent=【种鱼APP】"+smsmessage+"&sendtime=&smsnumber=10690";
		System.out.println(sendurl);
		URL url = new URL(sendurl);
		
		HttpURLConnection httpCon = (HttpURLConnection) url.openConnection();
		httpCon.connect();
		BufferedReader in = new BufferedReader(new InputStreamReader(
		httpCon.getInputStream()));
		String line = in.readLine();
		System.out.println("result:   " + line);
		int i_ret = httpCon.getResponseCode();
		String sRet = httpCon.getResponseMessage();
		System.out.println("sRet   is:   " + sRet);
		System.out.println("i_ret   is:   " + i_ret);
		return line;
  }
  
  /**
   * Y信发送短信验证码
   * @throws IOException 
   */
  public static String sendSms2(String code,String phoneNumber) throws IOException{
	  String s=HttpRequest.sendGet("http://106.ihuyi.cn/webservice/sms.php", "method=Submit&account=cf_52mj&password=6dbe43c2ef4c3cf1797d4a2c1f8513ab&mobile="+phoneNumber+"&content=您的验证码是："+code+"。请不要把验证码泄露给其他人。如非本人操作，可不用理会！");
      System.out.println(s);
	  return s;
  }
  
  /**
   * 云购创聊发送短信验证码功能
   * @throws IOException 
   */
  public static String sendSms3(String code,String phoneNumber) throws IOException{
	  //入参说明
	  String url = "https://sms.aliyuncs.com/";
	  String action = "SingleSendSms";
	  String signName = "阿里云短信服务";
	  String templateCode = "SMS_58330099";//管理控制台中配置的审核通过的短信模板的模板CODE（状态必须是验证通过）
	  String recNum = phoneNumber;
	  JSONObject jsonObject = new JSONObject();
	  jsonObject.put("code", code);
	  jsonObject.put("product", "云购创聊");
	  String paramString = jsonObject.toString();
	  String s=HttpRequest.sendGet(url,"Action="+action+"&SignName="+signName+"&TemplateCode="+templateCode+"&RecNum="+recNum+"&ParamString="+paramString);
	  System.out.println(s);
	  return s;
  }
  
  
  
  
  
  
  
  
  
  
}