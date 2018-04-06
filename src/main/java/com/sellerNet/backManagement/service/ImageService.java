package com.sellerNet.backManagement.service;

import com.sellerNet.backManagement.dto.ImageDto;
import com.sellerNet.backManagement.dto.ImageDtoUrl;
import com.sellerNet.backManagement.entity.Image;
import java.util.List;

public abstract interface ImageService extends baseService<Image, Long>
{
  public abstract List<Image> getByObjectIdAndCategory(Long paramLong,String category);

  public abstract List<ImageDtoUrl> getByUserIdAndCategory(Long paramLong, String paramString,String category)throws NumberFormatException, Exception;
  
  public abstract List<ImageDtoUrl> getCollectionsByUserId(Long paramLong, String paramString)throws NumberFormatException, Exception;
  
 // public Image getByObjectIdNews(Long objectId);
}