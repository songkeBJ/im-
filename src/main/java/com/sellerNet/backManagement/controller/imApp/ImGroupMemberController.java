package com.sellerNet.backManagement.controller.imApp;

import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dto.ImageDtoUrl;
import com.sellerNet.backManagement.dto.im.ImGroupMemberDTO;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.User;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.entity.im.ImFriend;
import com.sellerNet.backManagement.entity.im.ImGroup;
import com.sellerNet.backManagement.entity.im.ImGroupMember;
import com.sellerNet.backManagement.entity.im.ImGroupRole;
import com.sellerNet.backManagement.openapi.sdk.demo.Groupemplate;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.ImageService;
import com.sellerNet.backManagement.service.im.ImFriendService;
import com.sellerNet.backManagement.service.im.ImGroupMemberService;
import com.sellerNet.backManagement.service.im.ImGroupService;
import com.sellerNet.backManagement.utils.JsonUtils;
import com.sellerNet.backManagement.utils.NumberUtil;
import com.sellerNet.backManagement.utils.QRCodeCommon;

/**
 * 群组成员控制器
 * 
 * 1、查询群组成员详细资料
 * 2、我加入的群聊
 * 3、解散群组
 * 4、对朋友圈进行点赞
 * 5、朋友圈更新背景图片
 * 
 */
@RestController
@RequestMapping({"api/im/groups/members"})
public class ImGroupMemberController extends BaseController{
	
	/**
	 * 上传路径
	 */
	private File uploadPath;
	
	@SuppressWarnings("unused")
	private static final Logger LOGGER = LoggerFactory.getLogger(ImGroupMemberController.class);

	@Resource
	ImGroupService imGroupService;
  
	@Resource
	ImGroupMemberService imGroupMemberService;
  
	@Resource
	ImageService imageService;
  
	@Resource
	ImFriendService imFriendService;
	
	@Resource
	AppUserService userService;
	
	@Resource
	AppUserOneService userOneService;

	@Resource
	private Groupemplate groupemplate;

	/**
   	* 查询群组成员详细资料
   	*
   	* @param groupId : 群组id
   	* @param userId  : 用户id
   	* @return
   	*/
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = "/detail.do", method = {RequestMethod.GET,RequestMethod.POST})
	public JsonResult getGroupMemberDetail(@RequestParam(value="id",required=false) Long id,
		                                   @RequestParam(value="groupId",required=false) Long groupId,
                                           @RequestParam(value="userId",required=false) Long userId) {
		JsonResult jsonResult = new JsonResult();
		if(groupId == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("群组Id不能为空");
			return jsonResult;
	    }
	    if(userId == null){
	    	jsonResult.setCode("1");
	    	jsonResult.setErrorDescription("用户Id不能为空");
	    	return jsonResult;
	    }
	    ImGroupMemberDTO imGroupMemberDTO = imGroupMemberService.getGroupMemberDetail(groupId, userId);
	    @SuppressWarnings("unused")
		List<String> imList = new ArrayList<>();
	    try{
	    	List<ImageDtoUrl> imageDtoUrls = imageService.getByUserIdAndCategory(imGroupMemberDTO.getGroupMemberId(), "1",ImageCategory.EXPERIENCE.name());
	    	if(imageDtoUrls!=null && imageDtoUrls.size()>0){
	    		imGroupMemberDTO.setImages(imageDtoUrls.get(0).getImages());
	    	}
	    }catch (NumberFormatException e) {
			e.printStackTrace();
	    } catch (Exception e) {
			e.printStackTrace();
	    }
	 
	    ImFriend alexist = imFriendService.findByUserIdAndFriendId(id,userId);
	    if(alexist!=null){
	    	imGroupMemberDTO.setIsfriend(1);
	    }
	    jsonResult.setDataObject(imGroupMemberDTO);
	    jsonResult.setErrorDescription("获取群组成员详情成功");
	    return jsonResult;
	}
  
	/**
   	* 修改群组冲的成员昵称
   	*
   	* @param userId  : 用户ID
   	* @param groupId : 群组ID
   	* @param nickname: 昵称
   	* @return
   	*/
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/updateNickName.do", method ={RequestMethod.GET,RequestMethod.POST})
	public JsonResult updateNickName(@RequestParam(value="userId") Long userId,
                                   	 @RequestParam(value="groupId") Long groupId,
                                     @RequestParam(value="nickname") String nickname) {
	  JsonResult jsonResult = new JsonResult();
	  if (groupId == null){
	      jsonResult.setCode("1");
	      jsonResult.setErrorDescription("群组Id不能为空");
	      return jsonResult;
	  }
	  if (userId == null){
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("用户Id不能为空");
		  return jsonResult;
	  } 
	  if (nickname == null){
		  jsonResult.setCode("1");
		  jsonResult.setErrorDescription("昵称不能为空");
		  return jsonResult;
	  }
	  ImGroupMemberDTO imGroupMemberDTO = imGroupMemberService.getGroupMemberDetail(groupId, userId);
	  ImGroupMember imGroupMember =   imGroupMemberService.get(imGroupMemberDTO.getGroupMemberId());
	  imGroupMember.setNameInGroup(nickname);
	  imGroupMemberService.update(imGroupMember);
	  jsonResult.setErrorDescription("修改群昵称成功");
	  return jsonResult;
	}
  
	/**
   	* 设置是否显示群昵称
   	*
   	* @param userId    :用户ID
   	* @param groupId   :群组ID
   	* @param isNickname:是否显示群组昵称
   	* @return
   	*/
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/setUpNickName.do", method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult setUpNickName(@RequestParam(value="userId") Long userId,
		                            @RequestParam(value="groupId") Long groupId,
		                            @RequestParam(value="isNickname") Boolean isNickname) {
		JsonResult jsonResult = new JsonResult();
		if(groupId == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("群组Id不能为空");
			return jsonResult;
		}
		if(userId == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		} 
		if(isNickname == null) {
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("是否显示不能为空");
			return jsonResult;
		} 
		ImGroupMemberDTO imGroupMemberDTO = imGroupMemberService.getGroupMemberDetail(groupId, userId);
		ImGroupMember imGroupMember =   imGroupMemberService.get(imGroupMemberDTO.getGroupMemberId());
		imGroupMember.setIsEnabled(isNickname);
		imGroupMemberService.update(imGroupMember);
		jsonResult.setErrorDescription("设置成功");
		return jsonResult;
	}
	
	
	/**
	 * 帮派管理--设置副帮主、堂主
	 * @param id      : 用户Id
	 * @param groupId : 群组ID
	 * @param type    : 设置类型（1，是帮主 2、是副帮主3、是堂主）
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping(value = "/setUpPost.do", method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult setUpPost(@RequestParam(value="id") Long id,
								@RequestParam(value="groupId") Long groupId,
								@RequestParam(value="type") String type){
		JsonResult jsonResult = new JsonResult();
		if(groupId == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("群组Id不能为空");
			return jsonResult;
		}
		if(id == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		} 
		if(type == null) {
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("设置职位类型不能为空");
			return jsonResult;
		} 
		ImGroupMember imGroupMember = imGroupMemberService.findByUserIdAndGroupId(id, groupId);
		//设置用户职称
		UserOne userOne = userOneService.get(Integer.parseInt(id.toString()));
		User user = userService.byPhoneNumber(userOne.getPhoneNumber());
		user.setIsbang(type);
		if(type.equals("2")){//副帮主
			imGroupMember.setRole(ImGroupRole.DEPUTYLEADER.name());//设置副帮主
			imGroupMember.setTitle("副帮主");
			
		}else if(type.equals("3")){//堂主
			imGroupMember.setRole(ImGroupRole.TANG.name());//设置副帮主
			imGroupMember.setTitle("堂主");
		}
		imGroupMemberService.update(imGroupMember);
		userService.update(user);
		jsonResult.setErrorDescription("设置成员职位成功");
		return jsonResult;
	}
	
	/**
	 * 加载成员列表信息
	 * @param groupId
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = "/getAllMembers.do", method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult getAllMembers(@RequestParam(value="groupId",required=false) Long groupId){
		JsonResult jsonResult = new JsonResult();
		if(groupId == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("群组Id不能为空");
			return jsonResult;
		}
		List<ImGroupMemberDTO> groupMembers = imGroupMemberService.findAllMembersDTO(groupId);
		jsonResult.setErrorDescription("获取群组成员成功");
		jsonResult.setDataObject(groupMembers);
		return jsonResult;
	}
	
	/**
	 * 群组列表查询功能
	 * @param id     :用户Id
	 * @param groupId:群组id
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = "/searchMembers.do", method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult searchMembers(@RequestParam(value="id",required=false) Long id,
								    @RequestParam(value="groupId",required=false) Long groupId){
		JsonResult jsonResult = new JsonResult();
		if(id == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("用户ID不能为空");
			return jsonResult;
		}
		if(groupId == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("群组Id不能为空");
			return jsonResult;
		}
		ImGroupMember imGroupMember = imGroupMemberService.findByUserIdAndGroupId(id, groupId);
		jsonResult.setDataObject(imGroupMember);
		jsonResult.setErrorDescription("查询数据成功");
		return jsonResult;
	}
	
	
	/**
	 * 新建堂口
	 * @param id  :用户Id
	 * @param name:堂口名称
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unused" })
	@RequestMapping(value = "/createTangs.do", method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult createTangs(@RequestParam(value="id",required=false) Long id,
								  @RequestParam(value="name",required=false) String name,
								  HttpServletRequest request){
		JsonResult jsonResult = new JsonResult();
		if(id == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		}
		if(name == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("堂口名称不能为空");
			return jsonResult;
		}
		UserOne user = userOneService.get(Integer.parseInt(id.toString()));
		//创建堂口群组
		ImGroup imGroup = new ImGroup();
		imGroup.setCapacity(500);
		imGroup.setName(name);
		imGroup.setIntroduction("未设置");
		imGroup.preCreate(id);
	    imGroup.setIsbang("2");
	    String chatGroupId = this.groupemplate.createGroup(name, user.getPhoneNumber());
	    imGroup.setChatGroupId(chatGroupId);
	    imGroup.setDisplayName("1");
	    imGroup.setMessageNo("1");
	    imGroup.setTopmessage("0");
	    imGroup.setSaveMail("1");
	    imGroupService.insert(imGroup);
	   //创建群组二维码开始
	    Map map = new HashMap();
	    map.put("type","groupType");
	    map.put("groupId", imGroup.getId());
	    String jsonString = JsonUtils.toJson(map);
	    //在系统启动的时候，就开始初始化，在初始化时，检查上传图片的文件夹和存放临时文件的文件夹是否存在，如果不存在，就创建
	    //获取根目录对应的真实物理路径  
	    uploadPath = new File(request.getSession().getServletContext().getRealPath("images"));
	    System.out.println("uploadPath=====" + uploadPath);  
	    //如果目录不存在  
	    if (!uploadPath.exists()) {  
	        //创建目录  
	        uploadPath.mkdir();  
	    }  
	    String timestr = String.valueOf(new Date().getTime());
	    QRCodeCommon.createQRCode(jsonString, uploadPath.toString()+"/"+timestr+".png");
	    imGroup.setQrcode("images/"+timestr+".png");
	    imGroupService.update(imGroup);
	    jsonResult.setErrorDescription("创建堂口成功");
		return jsonResult;
	}
	
	/**
	 * 堂口列表
	 * @param id     :用户Id
	 * @param groupId:群组id
	 * @return
	 */
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@RequestMapping(value = "/getTangs.do", method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult getTangs(@RequestParam(value="id",required=false) Long id){
		JsonResult jsonResult = new JsonResult();
		if(id == null){
			jsonResult.setCode("1");
			jsonResult.setErrorDescription("用户Id不能为空");
			return jsonResult;
		}
		//搜索堂口列表
		Map map = new HashMap<>();
		map.put("userId", id);
		map.put("isbang", "2");
		List<ImGroup> imGroups = imGroupService.selectParam(map);
		jsonResult.setDataObject(imGroups);
		jsonResult.setErrorDescription("获取堂口列表成功");
		return jsonResult;
	}
  
  
}