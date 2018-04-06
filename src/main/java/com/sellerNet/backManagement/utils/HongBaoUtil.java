package com.sellerNet.backManagement.utils;

import java.math.BigDecimal;

/**
 * 随机红包工具
 * @author Administrator
 *
 */
public class HongBaoUtil {

	static void hb(double total,int num,double min){
			for(int i=1;i<num;i++){
				double safe_total=(total-(num-i)*min)/(num-i);
				double money=Math.random()*(safe_total-min)+min;
		
				BigDecimal money_bd=new BigDecimal(money);
				money=money_bd.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue(); 
		
				total=total-money;
		
				BigDecimal total_bd=new BigDecimal(total);
				total=total_bd.setScale(2,BigDecimal.ROUND_HALF_UP).doubleValue();
		
				System.out.println("第"+i+"个红包："+money+",余额为:"+total+"元");
			}
		System.out.println("第"+num+"个红包："+total+",余额为:0元");
		}

		public static void main(String[] args) {
			hb(3, 2, 0.01);//金额，个数，最少值
		}
		 
}
