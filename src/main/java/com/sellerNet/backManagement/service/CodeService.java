package com.sellerNet.backManagement.service;

import java.io.IOException;

import com.sellerNet.backManagement.entity.Code;
import com.sellerNet.backManagement.entity.JsonResult;

public abstract interface CodeService extends baseService<Code, Long> {
	
	/**
	 * 发送容联短信
	 * @param paramString
	 * @return
	 * @throws IOException
	 */
	public abstract JsonResult sendOne(String paramString,String mbId) throws IOException;

	/**
	 * 发送Y信
	 * @param paramString
	 * @return
	 * @throws IOException
	 */
	public abstract JsonResult sendOne2(String paramString) throws IOException;
	
	/**
	 * 发送云购创聊
	 * @param paramString
	 * @return
	 * @throws IOException
	 */
	public abstract JsonResult sendOne3(String paramString) throws IOException;

	/**
	 * 校验验证码
	 * @param paramString1
	 * @param paramString2
	 * @return
	 */
	public abstract JsonResult checkCode(String paramString1,String paramString2);
}