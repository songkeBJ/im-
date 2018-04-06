package com.sellerNet.backManagement.dao.impl;

import com.sellerNet.backManagement.dao.ImageMapper;
import com.sellerNet.backManagement.dto.ImageDto;
import com.sellerNet.backManagement.entity.Image;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ImageMapperImpl extends BaseDaoImpl<Image, Long>
  implements ImageMapper
{
  public static final String SQLID_GETBYOBJECTID = "getByObjectId";
  public static final String SQLID_GETBYUSERID = "getByUserId";

  public ImageMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public List<Image> getByObjectIdAndCategory(Map paramMap)
  {
    try {
      return getSqlSession().selectList(getClass().getName() + "." + "getByObjectIdAndCategory", paramMap);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }
//  public Image getByObjectIdNews(Long objectId)
//  {
//	  try {
//		  return getSqlSession().selectOne(getClass().getName() + "." + "getByObjectIdNews", objectId);
//	  } catch (Exception e) {
//		  e.printStackTrace();
//	  }return null;
//  }

  public List<Image> getByUserIdAndCategory(Map param)
  {
    try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getByUserIdAndCategory", param);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

@Override
public List<Image> getCollectionsByUserId(Map paramMap) {
	 try
	    {
	      return getSqlSession().selectList(getClass().getName() + "." + "getCollectionsByUserId", paramMap);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}
}