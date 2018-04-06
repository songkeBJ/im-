package com.sellerNet.backManagement.utils;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.apache.http.client.utils.URIBuilder;
import org.apache.http.message.BasicNameValuePair;

public class URLUtil
{
  public static <T> String ObjectToURL(String url, T model)
    throws NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
  {
    StringBuilder sBuilder = new StringBuilder();
    sBuilder.append(url).append("?");

    Field[] field = model.getClass().getDeclaredFields();

    for (int j = 0; j < field.length; j++)
    {
      String name = field[j].getName();

      String getName = name.substring(0, 1).toUpperCase() + name.substring(1);

      String type = field[j].getGenericType().toString();

      if (type.equals("class java.lang.String")) {
        Method m = model.getClass().getMethod("get" + getName, new Class[0]);

        String value = (String)m.invoke(model, new Object[0]);
        if (!StringUtil.empty(value)) {
          sBuilder.append(name).append("=").append(value).append("&");
        }
      }
      if (type.equals("class java.lang.Integer")) {
        Method m = model.getClass().getMethod("get" + getName, new Class[0]);
        Integer value = (Integer)m.invoke(model, new Object[0]);
        if (value != null) {
          sBuilder.append(name).append("=").append(value).append("&");
        }
      }
      if (type.equals("class java.lang.Short")) {
        Method m = model.getClass().getMethod("get" + getName, new Class[0]);
        Short value = (Short)m.invoke(model, new Object[0]);
        if (value != null) {
          sBuilder.append(name).append("=").append(value).append("&");
        }
      }
      if (type.equals("class java.lang.Double")) {
        Method m = model.getClass().getMethod("get" + getName, new Class[0]);
        Double value = (Double)m.invoke(model, new Object[0]);
        if (value != null) {
          sBuilder.append(name).append("=").append(value).append("&");
        }
      }
      if (type.equals("class java.lang.Boolean")) {
        Method m = model.getClass().getMethod("get" + getName, new Class[0]);
        Boolean value = (Boolean)m.invoke(model, new Object[0]);
        if (value != null) {
          sBuilder.append(name).append("=").append(value).append("&");
        }
      }
      if (type.equals("class java.util.Date")) {
        Method m = model.getClass().getMethod("get" + getName, new Class[0]);
        Date value = (Date)m.invoke(model, new Object[0]);
        if (value != null) {
          sBuilder.append(name).append("=").append(value).append("&");
        }
      }

    }

    return sBuilder.substring(0, sBuilder.length() - 1);
  }

  public static <T> String ObjectToURL_(String url, Map map)
    throws NoSuchMethodException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
  {
    StringBuilder sBuilder = new StringBuilder();
    sBuilder.append(url).append("?");
    for (Iterator localIterator = map.keySet().iterator(); localIterator.hasNext(); ) { Object s = localIterator.next();
      String key = s.toString();
      String value = (String)map.get(key);
      sBuilder.append(key).append("=").append(value).append("&");
    }
    return sBuilder.substring(0, sBuilder.length() - 1);
  }

  public static String build(String url, Map<String, String> params)
    throws URISyntaxException
  {
    URI uri;
    if ((params == null) || (params.isEmpty())) {
      uri = new URIBuilder(url).setCharset(Charset.forName("UTF-8")).build();
    } else {
      List nvps = new ArrayList();
      for (String key : params.keySet()) {
        BasicNameValuePair nameValuePair = new BasicNameValuePair(key, (String)params.get(key));
        nvps.add(nameValuePair);
      }
      uri = new URIBuilder(url).setCharset(Charset.forName("UTF-8")).setParameters(nvps).build();
    }
    return uri.toString();
  }
  
  
  /**
   * 获取首页地址 <br/>
   * Such as: 
   *
   * @param scheme     协议（http or https）
   * @param serverName 域名
   * @param serverPort 端口
   * @return 首页地址
   * @since 1.0
   */
  public static String getHomeUrl(String scheme, String serverName, int serverPort) {
      return scheme + "://" + serverName + ":" + serverPort;
  }
  
  
	public static boolean isChineseChar(String str) {  
        boolean temp = false;  
        Pattern p = Pattern.compile("[\u4e00-\u9fa5]");  
        Matcher m = p.matcher(str);  
        if (m.find()) {  
            temp = true;  
        }  
        return temp;  
    }  
  
  
  
  
  
  
  
}