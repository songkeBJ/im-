package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.entity.Certification;
import com.sellerNet.backManagement.entity.Red;
import com.sellerNet.backManagement.entity.User;
import java.util.List;
import java.util.Map;

public abstract interface CertificationMapper extends BaseDao<Certification, Long>
{

	Certification selectByUserId(String user_id);
	
}