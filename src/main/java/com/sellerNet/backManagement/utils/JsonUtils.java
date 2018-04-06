package com.sellerNet.backManagement.utils;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.Date;
import java.util.Map;

import javax.ws.rs.BadRequestException;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.sellerNet.backManagement.openapi.sdk.utils.DateUtil;

/**
 * json转化为对象
 *
 * @author like
 */
public final class JsonUtils {

    private static Gson gson = new Gson();

    private JsonUtils() {
    }

    public static <T> T getObject(final String jsonString, Class<T> classz) {
        T obj;
        try {
            obj = gson.fromJson(jsonString, classz);
        } catch (Exception e) {
            throw new BadRequestException("error.bad.parameter.error", e);
        }
//        PreConditions.throwIfNull(obj, "error.bad.parameter.error");
        return obj;
    }


    public static String toJson(final Map<String, Object> map) {
        return gson.toJson(map);
    }
    
//    public static JSONArray formatRsToJsonArray(ResultSet rs)throws Exception{
//		ResultSetMetaData md=rs.getMetaData();
//		int num=md.getColumnCount();
//		JSONArray array=new JSONArray();
//		while(rs.next()){
//			JSONObject mapOfColValues=new JSONObject();
//			for(int i=1;i<=num;i++){
//				Object o=rs.getObject(i);
//				if(o instanceof Date){
//					mapOfColValues.put(md.getColumnName(i), DateUtil.formatDate((Date)o, "yyyy-MM-dd"));
//				}else{
//					mapOfColValues.put(md.getColumnName(i), rs.getObject(i));					
//				}
//			}
//			array.add(mapOfColValues);
//		}
//		return array;
//	}
    
    
}
