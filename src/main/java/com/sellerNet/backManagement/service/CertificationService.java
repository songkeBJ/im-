package com.sellerNet.backManagement.service;

import com.alibaba.fastjson.JSONObject;
import com.sellerNet.backManagement.entity.Certification;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;

public abstract interface CertificationService extends baseService<Certification, Long>{
  
	public void addCertification(Certification certification);
	public boolean checkPass(String user_id);
	public Certification selectByUserId(String user_id);
}