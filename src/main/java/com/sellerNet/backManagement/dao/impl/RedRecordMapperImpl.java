package com.sellerNet.backManagement.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.RedMapper;
import com.sellerNet.backManagement.dao.RedRecordMapper;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.RedRecord;
import com.sellerNet.backManagement.entity.User;

@Repository
public class RedRecordMapperImpl extends BaseDaoImpl<RedRecord, Long>
  implements RedRecordMapper
{
  public static final String SQLID_PHONENUMBER = "byPhoneNumber";
  public static final String SQLID_BYUSERIDANDTERMS = "byUserIdAndTerms";
  public static final String SQLID_BYMAXUSER = "byMaxUser";

  public RedRecordMapperImpl()
  {
    this.namespace = getClass().getName();
  }

	
}