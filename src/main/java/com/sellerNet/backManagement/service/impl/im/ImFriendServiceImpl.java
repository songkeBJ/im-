package com.sellerNet.backManagement.service.impl.im;

import com.sellerNet.backManagement.dao.BaseDao;
import com.sellerNet.backManagement.dao.ImFriendMapper;
import com.sellerNet.backManagement.dao.LableForUserMapper;
import com.sellerNet.backManagement.dao.LableMapper;
import com.sellerNet.backManagement.dao.PhoneNumberMapper;
import com.sellerNet.backManagement.dto.ImageDtoUrl;
import com.sellerNet.backManagement.dto.im.ImUserDTO;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Lable;
import com.sellerNet.backManagement.entity.LableForUser;
import com.sellerNet.backManagement.entity.PhoneNumber;
import com.sellerNet.backManagement.entity.im.ImFriend;
import com.sellerNet.backManagement.entity.im.ImFriendsGroup;
import com.sellerNet.backManagement.service.ImageService;
import com.sellerNet.backManagement.service.im.ImFriendService;
import com.sellerNet.backManagement.service.impl.BaseServiceImpl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ImFriendServiceImpl extends BaseServiceImpl<ImFriend, Long> implements ImFriendService{
  private static final Logger LOGGER = LoggerFactory.getLogger(ImFriendServiceImpl.class);

  @Resource
  private ImFriendMapper imFriendMapper;
  
//  @Resource
//  private LableMapper LableMapper;
  @Resource
  private LableForUserMapper lableForUserMapper;
  
  @Resource
  private PhoneNumberMapper phoneNumberMapper;
  
  @Resource
  private ImageService imageService;

  public List<ImUserDTO> findFriendsForUser(Long userId) throws NumberFormatException, Exception{
    
	  List<ImUserDTO> friends = this.imFriendMapper.getByUserId(userId);
	  for (int i = 0; i < friends.size(); i++) {
		  ImUserDTO userDTO =  friends.get(i);
		  Map map = new HashMap();
//		  map.put("userId", userDTO.getId());
//		  List<Lable> lables = LableMapper.selectParam(map);
//		  Lable lable = null;
//		  if(lables.size()>0){
//			  lable = lables.get(0);
//			  userDTO.setLableName(lable.getName());
//		  }
//		  Map map2 = new HashMap<>();
//		  map.put("userId", userDTO.getId());
//		  List<PhoneNumber> paramMap = phoneNumberMapper.selectParam(map2);
//		  List<String> strs = new ArrayList<>();
//		  if(paramMap.size()>0){
//			  for (int j = 0; j < paramMap.size(); j++) {
//				  userDTO.getPhoneNumbers().add(paramMap.get(j).getPhoneNumber());
//			  }
//		  }
		  List<ImageDtoUrl> imageDtoUrls = imageService.getByUserIdAndCategory(userDTO.getId(),"1",ImageCategory.EXPERIENCE.name());
		  if(imageDtoUrls.size()>0 ){
			  for (int j = 0; j < imageDtoUrls.size(); j++) {
				  ImageDtoUrl imageDtoUrl = imageDtoUrls.get(j);
				  if(imageDtoUrl.getImages().length()>0){
					  String imageString = imageDtoUrl.getImages().substring(1, imageDtoUrl.getImages().length()-1);
					  if(!imageString.contains(",")){
						  userDTO.getImages().add(imageString);
					  }else if(imageString.contains(",")){
						  String[] strings = imageString.split(",");
						  for(String str:strings){
							  userDTO.getImages().add(str);
						  }
						  
					  }
				  }
				  
			}
		  }
	  }
    
    return friends;
  }

  public void addFriend(Long userId, Long friendId, Long friendsGroupId)
  {
    ImFriend exist = this.imFriendMapper.getByUserIdAndfriendId(userId, friendId);

    addFriendRelation(userId, friendId);
  }

  public JsonResult addFriendIfNotFriend(Long userId, Long friendId, String remark, String lableName)
  {
    JsonResult jsonResult = new JsonResult();
    ImFriend exist = this.imFriendMapper.getByUserIdAndfriendId(userId, friendId);
    if (exist != null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("对方已经是你的好友不能重复添加!");
      LOGGER.warn("User {} and user {} already is friend", userId, friendId);
      return jsonResult;
    }
    addFriendRelation(userId, friendId, remark, lableName);
    return jsonResult;
  }

  public ImFriend findByUserIdAndFriendId(Long userId, Long friendId)
  {
    return this.imFriendMapper.getByUserIdAndfriendId(userId, friendId);
  }

  public JsonResult deleteFriend(Long userId, Long friendId)
  {
    JsonResult jsonResult = new JsonResult();
    ImFriend relation = this.imFriendMapper.getByUserIdAndfriendId(userId, friendId);
    if (relation == null) {
      jsonResult.setCode("1");
      jsonResult.setErrorDescription("对方还不是您的好友!不能进行该操作!");
      return jsonResult;
    }
    this.imFriendMapper.delete(relation.getId());
    return jsonResult;
  }

  public void delete(Long id, Long deletedBy) {
    ImFriend friend = (ImFriend)this.imFriendMapper.get(id);
    friend.getCreator().equals(deletedBy);

    super.delete(id);
  }
  @Override
  @Transactional
  public void addFriendRelation(Long userId, Long friendId) {
	  ImFriend friend = new ImFriend(userId, friendId);
	  friend.preCreate(userId);
	  this.imFriendMapper.insert(friend);
  }
  @Override
  @Transactional
  public void addFriendRelation(Long userId, Long friendId,String remark,String lableName) {
	//先添加好友标签获得标签id
//	LableForUser lableForUser = new LableForUser();
//	lableForUser.setLabelName(lableName);
//	lableForUser.setUserId((int)friendId.longValue());
//	lableForUser.setFromUserId((int)userId.longValue());
//	lableForUserMapper.insert(lableForUser);
//	long lableId = lableForUser.getId();
    ImFriend friend = new ImFriend(userId, friendId);
    //friend中添加备注和标签id
    friend.setRemark(remark);
    friend.setDescribe(StringUtils.isBlank(lableName)?"":lableName);
    friend.preCreate(userId);
    this.imFriendMapper.insert(friend);
  }
  public static void main(String[] args) {
	Long i = 10000000L;
	System.out.println((int)i.longValue());
}
  private ImFriendsGroup getFriendsGroup(Long userId, Long friendsGroupId)
  {
    return null;
  }

  protected BaseDao<ImFriend, Long> getDao()
  {
    return this.imFriendMapper;
  }

  public List<ImFriend> getByUserIdOrfriendId(Long userId, String terms)
  {
    List imFriends = this.imFriendMapper.getByUserIdOrfriendId(userId);
    ImFriend localImFriend;
    for (Iterator localIterator = imFriends.iterator(); localIterator.hasNext(); localImFriend = (ImFriend)localIterator.next());
    return null;
  }

  public void moveFriendToGroup(Long userId, Long friendsGroupId, Long friendId)
  {
  }

}