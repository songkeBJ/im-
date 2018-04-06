package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.CertificationMapper;
import com.sellerNet.backManagement.dao.RedMapper;
import com.sellerNet.backManagement.entity.Certification;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.User;

@Repository
public class CertificationMapperImpl extends BaseDaoImpl<Certification, Long>
  implements CertificationMapper
{
  public static final String SQLID_PHONENUMBER = "byPhoneNumber";
  public static final String SQLID_BYUSERIDANDTERMS = "byUserIdAndTerms";
  public static final String SQLID_BYMAXUSER = "byMaxUser";

  public CertificationMapperImpl()
  {
    this.namespace = getClass().getName();
  }

@Override
public Certification selectByUserId(String user_id) {
	try
    {
      return getSqlSession().selectOne(this.namespace + "." + "selectByUserId", user_id);
    } catch (Exception e) {
      e.printStackTrace();
    }
	return null;
}

	
}