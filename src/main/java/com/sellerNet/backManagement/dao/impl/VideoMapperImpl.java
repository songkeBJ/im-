package com.sellerNet.backManagement.dao.impl;

import com.sellerNet.backManagement.dao.VideoMapper;
import com.sellerNet.backManagement.dto.VideoDto;
import com.sellerNet.backManagement.entity.Video;

import java.util.List;
import java.util.Map;
import org.springframework.stereotype.Repository;

@Repository
public class VideoMapperImpl extends BaseDaoImpl<Video, Long>
  implements VideoMapper
{
  public static final String SQLID_GETBYOBJECTID = "getByObjectId";
  public static final String SQLID_GETBYUSERID = "getByUserId";

  public VideoMapperImpl()
  {
    this.namespace = getClass().getName();
  }

  public List<VideoDto> getByObjectId(Long objectId)
  {
    try {
      return getSqlSession().selectList(getClass().getName() + "." + "getByObjectId", objectId);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

  public List<Video> getByUserId(Map param)
  {
    try
    {
      return getSqlSession().selectList(getClass().getName() + "." + "getByUserId", param);
    } catch (Exception e) {
      e.printStackTrace();
    }return null;
  }

@Override
public List<Video> getCollectionsByUserId(Map paramMap) {
	 try
	    {
	      return getSqlSession().selectList(getClass().getName() + "." + "getCollectionsByUserId", paramMap);
	    } catch (Exception e) {
	      e.printStackTrace();
	    }return null;
}
}