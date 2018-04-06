package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.dto.VideoDto;
import com.sellerNet.backManagement.entity.Video;

import java.util.List;
import java.util.Map;

public abstract interface VideoMapper extends BaseDao<Video, Long>
{
  public abstract List<VideoDto> getByObjectId(Long paramLong);

  public abstract List<Video> getByUserId(Map paramMap);
  
  public abstract List<Video> getCollectionsByUserId(Map paramMap);
}