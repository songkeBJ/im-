package com.sellerNet.backManagement.utils;

/**  
 * 
 * 根据经纬度获取相关的用户之间的距离
 * @param lat 纬度  
 * @param lon 精度  
 * @param raidus 半径（以米为单位）  
 * @return  
 */    
public class DistanceUtils {
	
	/**
	 * 生成以中心点为中心的四方形经纬度  
	 * @param lat
	 * @param lon
	 * @param raidus
	 * @return
	 */
	public static double[] getAround(double lat, double lon, int raidus) {   
		   
        Double latitude = lat;   
        Double longitude = lon;   
   
        Double degree = (24901 * 1609) / 360.0;   
        double raidusMile = raidus;   
   
        Double dpmLat = 1 / degree;   
        Double radiusLat = dpmLat * raidusMile;   
        Double minLat = latitude - radiusLat;   
        Double maxLat = latitude + radiusLat;   
   
        Double mpdLng = degree * Math.cos(latitude * (Math.PI / 180));   
        Double dpmLng = 1 / mpdLng;                
        Double radiusLng = dpmLng * raidusMile;    
        Double minLng = longitude - radiusLng;     
        Double maxLng = longitude + radiusLng;     
        return new double[] { minLat, minLng, maxLat, maxLng };   
    } 
	
	
	/**
	 * 计算中心经纬度与目标经纬度的距离（米）
	 * @param centerLon 中心精度 
	 * @param centerLat 中心纬度 
	 * @param targetLon 需要计算的精度 
	 * @param targetLat 需要计算的纬度
	 * @return
	 */
	public static double distance(double centerLon, double centerLat, double targetLon, double targetLat){   
		   
        double jl_jd = 102834.74258026089786013677476285;// 每经度单位米;   
        double jl_wd = 111712.69150641055729984301412873;// 每纬度单位米;   
        double b = Math.abs((centerLat - targetLat) * jl_jd);   
        double a = Math.abs((centerLon - targetLon) * jl_wd);   
        return Math.sqrt((a * a + b * b));   
    }  
	
	
	public static void main(String[] args) {
//		System.out.print(distance(116.283256, 40.049158,116.296255,40.040157));
		System.out.print(distance(116.296256,40.040156,116.296255, 40.040157));
	}
	
	

}
