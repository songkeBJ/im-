package com.sellerNet.backManagement.config;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.alipay.util.AliPayMsg;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.service.AppUserService;

import net.sf.json.JSONObject;

public class TokenInterceptor extends HandlerInterceptorAdapter {
	@Resource
	private AppUserService appUserService;
	
	private Logger log = LoggerFactory.getLogger(TokenInterceptor.class);
	 @Override  
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {  
		 log.info("-----------------token校验开始------------------");
			String token = request.getParameter("token");
			log.info("-----------------token:"+token+"------------------");
			String userId = request.getParameter("userId");
			log.info("-----------------userId:"+userId+"------------------");
			if(StringUtils.isBlank(token)){
				log.info("-----------------token校验失败------------------");
				return false;
			}
			//校验token
			User user = appUserService.byUserId(Long.valueOf(userId));
			log.info("-----------------user:"+user+"------------------");
			if(!user.getToken().equals(token)){
				log.info("-----------------token校验失败------------------");
				return false;
			}
			log.info("-----------------token校验成功------------------");
			return true;
	    }  
    }  
