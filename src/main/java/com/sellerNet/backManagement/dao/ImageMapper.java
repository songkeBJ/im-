package com.sellerNet.backManagement.dao;

import com.sellerNet.backManagement.dto.ImageDto;
import com.sellerNet.backManagement.entity.Image;
import java.util.List;
import java.util.Map;

public abstract interface ImageMapper extends BaseDao<Image, Long>
{
  public abstract List<Image> getByObjectIdAndCategory(Map paramMap);

  public abstract List<Image> getByUserIdAndCategory(Map paramMap);
  
  public abstract List<Image> getCollectionsByUserId(Map paramMap);
  
 // public Image getByObjectIdNews(Long objectId);
}