package com.sellerNet.backManagement.service.im;

import com.sellerNet.backManagement.entity.im.ImNews;
import com.sellerNet.backManagement.service.baseService;
import java.util.List;

public abstract interface ImNewsService extends baseService<ImNews, Long>
{
  public abstract List<ImNews> selectNewsByGroupId(Long paramLong, String paramString);
}