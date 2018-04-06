package com.sellerNet.backManagement.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sellerNet.backManagement.dao.AppUserMapper;
import com.sellerNet.backManagement.dao.AppUserOneMapper;
import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.ImageMapper;
import com.sellerNet.backManagement.dto.ImageDto;
import com.sellerNet.backManagement.dto.ImageDtoUrl;
import com.sellerNet.backManagement.entity.Image;
import com.sellerNet.backManagement.service.ImageService;
import com.sellerNet.backManagement.utils.NumberUtil;

@Service
@Transactional
public class ImageServiceImpl extends BaseServiceImpl<Image, Long>
  implements ImageService
{
  private static final Logger LOGGER = LoggerFactory.getLogger(ImageServiceImpl.class);

  @Resource
  private ImageMapper imageMapper;
  
  @Resource
  private AppUserMapper userMapper;
  
  @Resource
  private AppUserOneMapper useroneMapper;

  protected BaseDao<Image, Long> getDao() { return this.imageMapper; }

  public List<Image> getByObjectIdAndCategory(Long objectId,String category)
  {
	  Map map = new HashMap<>();
	  map.put("objectId", objectId);
	  map.put("category", category);
    return this.imageMapper.getByObjectIdAndCategory(map);
  }

  @Override
	public List<ImageDtoUrl> getByUserIdAndCategory(Long userId, String page,String category) throws NumberFormatException, Exception {
		List<ImageDtoUrl> imageDtoUrls = new ArrayList<ImageDtoUrl>();
		Map map = new HashMap<>();
		map.put("start", NumberUtil.countOffset(Integer.valueOf(page)));
	    map.put("end", 15);
	    map.put("userId", userId);
	    map.put("category", category);
	    List<Image> images = imageMapper.getByUserIdAndCategory(map);
	    for (int i = 0; i < images.size(); i++) {
	    	ImageDtoUrl imageDtoUrl = new ImageDtoUrl();
	    	imageDtoUrl.setCreateTime(images.get(i).getCreatedTime());
			imageDtoUrl.setImages(images.get(i).getUrl());
			imageDtoUrl.setAvatar(useroneMapper.get(Integer.parseInt(images.get(i).getCreator().toString())).getAvator());
			imageDtoUrl.setUsername(useroneMapper.get(Integer.parseInt(images.get(i).getCreator().toString())).getUsername());
	    	imageDtoUrls.add(imageDtoUrl);
		}
		return imageDtoUrls;
	}

@Override
public List<ImageDtoUrl> getCollectionsByUserId(Long userId,String page) throws NumberFormatException, Exception {
	List<ImageDtoUrl> imageDtoUrls = new ArrayList<ImageDtoUrl>();
	Map map = new HashMap<>();
	map.put("start", NumberUtil.countOffset(Integer.valueOf(page)));
    map.put("end", 15);
    map.put("userId", userId);
    List<Image> images = imageMapper.getCollectionsByUserId(map);
    for (int i = 0; i < images.size(); i++) {
    	ImageDtoUrl imageDtoUrl = new ImageDtoUrl();
    	imageDtoUrl.setCreateTime(images.get(i).getCreatedTime());
		imageDtoUrl.setImages(images.get(i).getUrl());
		imageDtoUrl.setAvatar(images.get(i).getAvatar());
		imageDtoUrl.setUsername(images.get(i).getUsername());
		imageDtoUrl.setType(images.get(i).getCategory());
		imageDtoUrl.setId(images.get(i).getId());
    	imageDtoUrls.add(imageDtoUrl);
	}
	return imageDtoUrls;
}

//@Override
//public Image getByObjectIdNews(Long objectId) {
//	return imageMapper.getByObjectIdNews(objectId);
//}
}