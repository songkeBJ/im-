package com.sellerNet.backManagement.controller.imApp;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.sellerNet.backManagement.controller.BaseController;
import com.sellerNet.backManagement.dao.ImgsItemMapper;
import com.sellerNet.backManagement.dao.NewsBackMapper;
import com.sellerNet.backManagement.dao.NewsFocusMapper;
import com.sellerNet.backManagement.dao.VideoMapper;
import com.sellerNet.backManagement.dto.im.BackOut;
import com.sellerNet.backManagement.entity.AgentUser;
import com.sellerNet.backManagement.entity.Evaluate;
import com.sellerNet.backManagement.entity.EvaluateNewsOut;
import com.sellerNet.backManagement.entity.EvaluateParam;
import com.sellerNet.backManagement.entity.FocusItem;
import com.sellerNet.backManagement.entity.FocusNewsList;
import com.sellerNet.backManagement.entity.ImageCategory;
import com.sellerNet.backManagement.entity.ImgsItem;
import com.sellerNet.backManagement.entity.Islike;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.MyFocusList;
import com.sellerNet.backManagement.entity.NewsIndex;
import com.sellerNet.backManagement.entity.NewsIndexDetail;
import com.sellerNet.backManagement.entity.UserOne;
import com.sellerNet.backManagement.service.AppUserOneService;
import com.sellerNet.backManagement.service.AppUserService;
import com.sellerNet.backManagement.service.EvaluateService;
import com.sellerNet.backManagement.service.ExperienceService;
import com.sellerNet.backManagement.service.ImageService;
import com.sellerNet.backManagement.service.IslikeService;
import com.sellerNet.backManagement.service.ManagerUserService;
import com.sellerNet.backManagement.service.NewsBackService;
import com.sellerNet.backManagement.service.NewsFocusService;
import com.sellerNet.backManagement.service.NewsService;
import com.sellerNet.backManagement.service.SetUserShowService;
import com.sellerNet.backManagement.utils.Constant;

import net.sf.json.JSONObject;

/**
 * 资讯控制器
 */
@RestController
@RequestMapping({"api/news"})
public class NewsIndexController extends BaseController{
	
	private static final Logger LOGGER = LoggerFactory.getLogger(NewsIndexController.class);
	
	@Resource
	private ExperienceService experienceService;
	
	@Resource
	private EvaluateService evaluateService;
	
	@Resource
	private AppUserService userService;
	
	@Resource
	private AppUserOneService useroneService;
	
	@Resource
	private ImageService imageService;
	@Resource
	private VideoMapper videoService;
	
	@Resource
	private IslikeService islikeService;
	
	@Resource
	private SetUserShowService setUserShowService;
	
	@Resource
	private NewsService newsService;
	@Resource
	private NewsFocusService newsFocusService;
	@Resource
	private ManagerUserService managerUserService;
	@Resource
	private NewsBackService newsBackService;
	@Resource
	private NewsBackMapper newsBackMapper;
	@Resource
	private ImgsItemMapper imgsItemMapper;
	@Resource
	private AppUserOneService appUserOneService;
	@Resource
	private NewsFocusMapper newsFocusMapper;
	
	
	/**
	 * 获取关注用户的资讯列表
	 */
	@RequestMapping(value= "getFocusNewsList.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult  getFocusNewsList(Long id,String page){
		
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		if (page==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("页码不能为空");
			return jsonResult;
		}
		FocusNewsList focusNewsList = new FocusNewsList();
		UserOne userOne = appUserOneService.get(id.intValue());
		focusNewsList.setAvatar(userOne.getAvator());
		focusNewsList.setNickName(userOne.getNickname());
		focusNewsList.setSign(userOne.getSign());
		focusNewsList.setPhoneNumber(userOne.getPhoneNumber());
		focusNewsList.setId((long)userOne.getUser_id());
		//<editor-fold desc="step2 : 获取资讯列表>
		List<NewsIndex> newsIndexList = new ArrayList<>();
		//根据UserId查询资讯列表
		newsIndexList=newsService.getMyNewsList(id,page);
		filterVedioAndImgs(newsIndexList);
		focusNewsList.setNewsIndexList(newsIndexList);
		//<editor-fold desc="step3 : 反馈成功信息>
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("获取已关注资讯列表成功");
		jsonResult.setDataObject(focusNewsList);
		return jsonResult;
		//<editor-fold >
	}
	/**
	 * 获取首页资讯列表
	 */
	@RequestMapping(value= "getNewsListByType.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult  getNewsListByType(String type,String page,String keyword,Long userId){
		
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		if (type==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("资讯类型不能为空");
			  return jsonResult;
		}
		
		//<editor-fold desc="step2 : 获取资讯列表>
		List<NewsIndex> newsIndexList = newsService.getNewsListByType(type,page,keyword,userId);
		filterVedioAndImgs(newsIndexList);
		//<editor-fold desc="step3 : 反馈成功信息>
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("获取资讯列表成功");
		jsonResult.setDataObject(newsIndexList);
		return jsonResult;
		//<editor-fold >
	}
	/*
	 * 加工视频和图集的展示
	 */
	private void filterVedioAndImgs(List<NewsIndex> newsIndexList) {
		if(newsIndexList!=null){
			for (int i = 0; i < newsIndexList.size(); i++) {
				NewsIndex newsIndex = newsIndexList.get(i);
				if("Vedio".equals(newsIndex.getImgOrVedio())){
					newsIndex.setTitleImages(getVideoTitleImages(newsIndex.getContent()));
					newsIndex.setContent(getVideoTitleImages(newsIndex.getContent()));
				}else if("Imgs".equals(newsIndex.getImgOrVedio())){
					Map paramMap=new HashMap<>();
					paramMap.put("newsId", newsIndex.getId());
					List<ImgsItem> imgsItemList = imgsItemMapper.selectParam(paramMap);
					newsIndex.setImgsItems(imgsItemList);
				}
			}
		}
	}
	/*
	 * 解析视频url
	 */
	private String getVideoTitleImages(String content) {
		return content.split("\"")[1].replace("\\", "");
	}
	public static void main(String[] args) {
		System.out.println("\\".replace("\\", "1"));
	}
	/**
	 * 增加浏览次数
	 */
	@RequestMapping(value= "updateNewsLookTime.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult  updateNewsLookTime(Long newsId){
		
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		if (newsId==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("资讯id不能为空");
			return jsonResult;
		}
		newsService.updateNewsLookTime(newsId);
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("增加浏览次数成功");
		return jsonResult;
		//<editor-fold >
	}
	
	/**
	 * 获取资讯详情
	 */
	@RequestMapping(value= "getNewsIndexDetail.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult getNewsIndexDetail(@RequestParam(value="id",required=false) Long id,
			@RequestParam(value="userId",required=false) Long userId,
			@RequestParam(value="newsUserId",required=false) Long newsUserId
			) throws NumberFormatException, Exception{
		JsonResult jsonResult = new JsonResult<>();
		List<EvaluateNewsOut> evaluates ;
		if (id==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("资讯Id不能为空");
			  return jsonResult;
		}
		//获取资讯详情
		NewsIndexDetail newsIndexDetail = newsService.getNewsIndexDetail(id);
		filterVedioAndImgs(newsIndexDetail);
		//获取关注该资讯的用户id
		String focus=newsFocusService.getByUserIdAndFoucsId(userId, newsUserId)==null?"NO":"YES";
		newsIndexDetail.setFocus(focus);
		//加入用户评论
		try {
			evaluates  = evaluateService.getNewsEvaluates(id,ImageCategory.NEWS.name());
			if(evaluates!=null){
				for (int i = 0; i < evaluates.size(); i++) {
					EvaluateNewsOut evaluateNewsOut = evaluates.get(i);
					Map map = new HashMap<>();
					map.put("objectId", evaluateNewsOut.getEvaluateId());
					map.put("category", ImageCategory.NEWS_EVA.name());
					map.put("evaluateId", evaluateNewsOut.getEvaluateId());
					EvaluateNewsOut evaluateNewsOut2=evaluateService.getNewsEvaluatesIslikeTime(map);
					Long backTime = newsBackMapper.selectCountByEvaId(map);
					evaluateNewsOut.setIsLikeTime(evaluateNewsOut2.getIsLikeTime());
					evaluateNewsOut.setBackTime(backTime.intValue());
					if(userId!=null){
						//判断用户对该评论是否点过赞
						Islike byUserIdAndCategory = islikeService.getByUserIdAndCategoryAndEvaId(userId, ImageCategory.NEWS_EVA.name(),evaluateNewsOut.getEvaluateId());
						if(byUserIdAndCategory!=null&&byUserIdAndCategory.getIslike()){
							evaluateNewsOut.setIsLike(true);
						}else{
							evaluateNewsOut.setIsLike(false);
						}
					}
				}
			}
			newsIndexDetail.setEvaluates(evaluates);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(userId!=null){
			//判断是否对资讯详情点过赞
			Islike byUserIdAndCategory = islikeService.getByuserIdAndExprienceIdAndCategory(userId,id ,ImageCategory.NEWS_DETAIL.name());
			if(byUserIdAndCategory!=null&&byUserIdAndCategory.getIslike()){
				newsIndexDetail.setIsLike(true);
			}else{
				newsIndexDetail.setIsLike(false);
			}
		}
		jsonResult.setCode("0");
		jsonResult.setDataObject(newsIndexDetail);
		jsonResult.setErrorDescription("返回资讯详情成功!");
		return jsonResult;
}
	
	private void filterVedioAndImgs(NewsIndexDetail newsIndexDetail) {
		if("Vedio".equals(newsIndexDetail.getImgOrVedio())){
			newsIndexDetail.setTitleImages(getVideoTitleImages(newsIndexDetail.getContent()));
			newsIndexDetail.setContent(getVideoTitleImages(newsIndexDetail.getContent()));
		}else if("Imgs".equals(newsIndexDetail.getImgOrVedio())){
			Map paramMap=new HashMap<>();
			paramMap.put("newsId", newsIndexDetail.getId());
			List<ImgsItem> imgsItemList = imgsItemMapper.selectParam(paramMap);
			newsIndexDetail.setImgsItems(imgsItemList);
		}
	}
	/**
	 * 获取回复详情
	 */
	@RequestMapping(value= "getBackDetail.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult getBackDetail(@RequestParam(value="id",required=false) Long id,
			@RequestParam(value="userId",required=false) Long userId
			){
		JsonResult jsonResult = new JsonResult<>();
		if (id==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("评论Id不能为空");
			  return jsonResult;
		}
		JSONObject result=new JSONObject();
		//获取评论详情
		EvaluateNewsOut evaluateNewsOut = evaluateService.getOutByIdAndCategory(id,ImageCategory.NEWS.name());
		//获取评论点赞次数和本人是否点赞
		Map map = new HashMap<>();
		map.put("objectId", evaluateNewsOut.getEvaluateId());
		map.put("category", ImageCategory.NEWS_EVA.name());
		EvaluateNewsOut evaluateNewsOut2=evaluateService.getNewsEvaluatesIslikeTime(map);
		evaluateNewsOut.setIsLikeTime(evaluateNewsOut2.getIsLikeTime());
		if(userId!=null){
			//判断用户对该评论是否点过赞
			Islike byUserIdAndCategory = islikeService.getByUserIdAndCategoryAndEvaId(userId, ImageCategory.NEWS_EVA.name(),id);
			if(byUserIdAndCategory!=null&&byUserIdAndCategory.getIslike()){
				evaluateNewsOut.setIsLike(true);
			}else{
				evaluateNewsOut.setIsLike(false);
			}
		}
		result.put("evaluate", evaluateNewsOut);
		map.put("evaluateId", evaluateNewsOut.getEvaluateId());
		List<BackOut> backList = newsBackService.selectByEvaId(map);
		if(backList!=null&&backList.size()>0){
			for (BackOut backOut : backList) {
				//获取每个回复的点赞次数和本人是否点赞
				Map map2 = new HashMap<>();
				map2.put("objectId", backOut.getId());
				map2.put("category", ImageCategory.NEWS_BACK.name());
				EvaluateNewsOut evaluateNewsOut3=evaluateService.getNewsEvaluatesIslikeTime(map2);
				backOut.setIsLikeTime((long)evaluateNewsOut3.getIsLikeTime());
				if(userId!=null){
					//判断用户对该评论是否点过赞
					Islike byUserIdAndCategory = islikeService.getByUserIdAndCategoryAndEvaId(userId, ImageCategory.NEWS_BACK.name(),backOut.getId());
					if(byUserIdAndCategory!=null&&byUserIdAndCategory.getIslike()){
						backOut.setIsLike(true);
					}else{
						backOut.setIsLike(false);
					}
				}
			}
		}
		result.put("backList", backList);
		jsonResult.setCode("0");
		jsonResult.setDataObject(result);
		jsonResult.setErrorDescription("返回回复详情成功!");
		return jsonResult;
}
	private void buildTree2(Long id, List<EvaluateNewsOut> all) {
		List<EvaluateNewsOut> outs = evaluateService.getByParentIdAndCategory(id, ImageCategory.NEWS.name());
		if(outs!=null&&outs.size()>0){
			for (EvaluateNewsOut evaluateNewsOut : outs) {
				all.add(evaluateNewsOut);
				buildTree2(evaluateNewsOut.getId(),all);
			}
		}
	}

	/**
	 * 评论
	 */
	@RequestMapping(value= "evaulate.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult postEvaluate(@ModelAttribute("EvaluateParam") EvaluateParam param){
		
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		//<editor-fold >
		
		//<editor-fold desc="step2 : 点赞、评论或者回复>
		Evaluate evaluate = evaluateService.postEvaluate(param);
		//<editor-fold >
		//<editor-fold desc="step3 : 点赞、评论或者回复>
		jsonResult.setDataObject(evaluate);
		jsonResult.setErrorDescription("评论成功");
		return jsonResult;
		//<editor-fold >
	}
	/**
	 * 回复
	 */
	@RequestMapping(value= "back.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult back(Long fromUserId,Long toUserId,String content,Long evaluateId){
		
		JsonResult jsonResult = new JsonResult<>();
		if (fromUserId==null||toUserId==null||content==null||evaluateId==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("回复人id,被回复人id,回复内容,评论id不能为空");
			  return jsonResult;
		}
		Map map=new HashMap<>();
		map.put("fromUserId", fromUserId);
		map.put("toUserId", toUserId);
		map.put("content", content);
		map.put("evaluateId", evaluateId);
		map.put("createdTime", new Date());
		newsBackService.insert(map);
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("回复成功");
		return jsonResult;
	}
	/**
	 * 删除评论、回复
	 * @param jsonString
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value= "delEvaulate.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult delEvaulate(Long id,String category){
		JsonResult jsonResult = new JsonResult<>();
		if (id==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("评论/回复Id不能为空");
			  return jsonResult;
		}
		if (category==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("评论/回复类型不能为空");
			return jsonResult;
		}
		Map map=new HashMap<>();
		map.put("id", id);
		if(ImageCategory.NEWS_EVA.name().equals(category)){
			evaluateService.deleteNewsEVA(id);
		}else{
			map.put("category", ImageCategory.NEWS_BACK.name());
			newsBackService.deleteNewsBACK(map);
		}
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("删除评论/回复成功");
		return jsonResult;
	}
	
	/**
	 * 对资讯详情或评论或回复进行点赞(取消点赞)
	 * @param userId     :用户ID
	 * @param exprienceId:心得ID
	 * @param cancel     :是否取消点赞
	 * @return
	 */
	@RequestMapping(value= "isLike.do",method={RequestMethod.GET,RequestMethod.POST})
	public JsonResult isLike(@RequestParam(value="id",required=false) Long id,
			                 @RequestParam(value="exprienceId",required=false) Long exprienceId,
			                 @RequestParam(value="category",required=false) String category,
			                 @RequestParam(value = "cancel",required=false) Long cancel){
		
		//<editor-fold desc="step1 : 对心得进行点赞>
		JsonResult jsonResult = new JsonResult<>();
		if (id==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("用户Id不能为空");
			  return jsonResult;
		}
		if (exprienceId==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("资讯或评论Id不能为空");
			  return jsonResult;
		}
		if (category==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("点赞类型不能为空");
			return jsonResult;
		}
		if(category.equals("NEWS_DETAIL")){
			category=ImageCategory.NEWS_DETAIL.name();
		}else if(category.equals("NEWS_EVA")){
			category=ImageCategory.NEWS_EVA.name();
		}else if(category.equals("NEWS_BACK")){
			category=ImageCategory.NEWS_BACK.name();
		}
		Islike islike = islikeService.getByuserIdAndExprienceIdAndCategory(id, exprienceId,category);
		if(islike==null ){
			if(cancel==0){
				jsonResult.setErrorDescription("1");
				jsonResult.setErrorDescription("还未点过赞,无法取消");
				return jsonResult;
			}
			Islike like = new Islike();
			like.preCreate(id);
			like.setIslike(true);
			like.setExprienceId(exprienceId);
			like.setCategory(category);
			islikeService.insert(like);
			jsonResult.setErrorDescription("0");
			jsonResult.setErrorDescription("点赞成功");
		}else if(islike!=null){
			if(cancel==0){
				islike.setIslike(false);
				jsonResult.setErrorDescription("0");
				jsonResult.setErrorDescription("取消点赞成功");
			}else{
				islike.setIslike(true);
				jsonResult.setErrorDescription("0");
				jsonResult.setErrorDescription("点赞成功");
			}
			islike.preModified(id);
			islikeService.update(islike);
		}
	
		return jsonResult;
	}
	/**
	 * 关注/取消关注某会员
	 */
	@ResponseBody
	@RequestMapping(value="/updateNewsFocus.do")
	public JsonResult updateNewsFocus(@RequestParam(value = "userId",required=false) Long userId,
			@RequestParam(value = "focusId",required=false) Long focusId
			){
		JsonResult jsonResult = new JsonResult<>();
		if (userId==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("用户Id不能为空");
			  return jsonResult;
		}
		if (focusId==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("被关注人Id不能为空");
			  return jsonResult;
		}
		Map map = newsFocusService.getByUserIdAndFoucsId(userId, focusId);
		if(map==null ){
			map = new HashMap<>();
			map.put("userId", userId);
			map.put("focusId", focusId);
			newsFocusService.insert(map);
			jsonResult.setErrorDescription("关注成功");
		}else{
			newsFocusService.delete(map);
			jsonResult.setErrorDescription("取消关注成功");
		}
		return jsonResult;
	}
	
	/**
	 * 获取本人发布的资讯列表
	 */
	@ResponseBody
	@RequestMapping(value="/getMyNewsList.do")
	public JsonResult getMyNewsList(@RequestParam(value = "page",required=false) String page,
			                      		   @RequestParam(value = "userId",required=false) Long userId
			                      		   ){
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		if (page==null) {
			  jsonResult.setCode(Constant.RESUT_FAIL);
			  jsonResult.setErrorDescription("页码不能为空");
			  return jsonResult;
		}
		if (userId==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户id不能为空");
			return jsonResult;
		}
		List<NewsIndex> newsIndexList = new ArrayList<>();
		//根据UserId查询资讯列表
		newsIndexList=newsService.getMyNewsList(userId,page);
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("获取资讯列表成功");
		jsonResult.setDataObject(newsIndexList);
		return jsonResult;
	}
	/**
	 * 获取本人关注用户列表
	 */
	@ResponseBody
	@RequestMapping(value="/getFocusUserList.do")
	public JsonResult getFocusUserList(@RequestParam(value = "page",required=false) String page,
			@RequestParam(value = "userId",required=false) Long userId
			){
		//<editor-fold desc="step1 : 入参序列话成对象>
		JsonResult jsonResult = new JsonResult<>();
		if (page==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("页码不能为空");
			return jsonResult;
		}
		if (userId==null) {
			jsonResult.setCode(Constant.RESUT_FAIL);
			jsonResult.setErrorDescription("用户id不能为空");
			return jsonResult;
		}
		MyFocusList myFocusList = new MyFocusList();
		Map map=new HashMap<>();
		map.put("userId", userId);
		map.put("start", (Integer.valueOf(page)-1)*15);
		map.put("end", 15);
		List<Map> focusList = newsFocusMapper.getFocusList(map);
		if(focusList!=null&&focusList.size()>0){
			for (int i = 0; i <focusList.size(); i++) {
				Map map2 = focusList.get(i);
				Long focusId=(Long) map2.get("focusId");
				UserOne userOne = appUserOneService.get(focusId.intValue());
				FocusItem focusItem=new FocusItem();
				focusItem.setUserId((long)userOne.getUser_id());
				focusItem.setPhoneNumber(userOne.getPhoneNumber());
				focusItem.setNickName(userOne.getNickname());
				focusItem.setAvatar(userOne.getAvator());
				//获取该用户被关注的次数
				String focusCount=newsFocusMapper.getFocusCount((long)userOne.getUser_id()).toString();
				focusItem.setFocusCount(focusCount);
				//获取该用户发布的资讯数量
				focusItem.setNewsCount(Integer.toString(userOne.getNewsNum()));
				myFocusList.getFocusItems().add(focusItem);
			}
		}
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("获取本人关注用户列表成功");
		jsonResult.setDataObject(myFocusList);
		return jsonResult;
	}
	
	/**
	 * 删除资讯
	 */
	@ResponseBody
	@RequestMapping(value="/deleteNews.do")
	public JsonResult deleteNews(Long id){
		JSONObject result=new JSONObject();
		newsService.deleteNews(id);
		JsonResult jsonResult = new JsonResult<>();
		jsonResult.setCode("0");
		jsonResult.setErrorDescription("删除资讯成功");
		return jsonResult;
	}
	
	/**
	 * 获取所有资讯类型
	 */
	@ResponseBody
	@RequestMapping(value="/getAllNewsType.do")
	public JsonResult getAllNewsType(){
		JsonResult result=new JsonResult();
		List<Map> allNewsType = newsService.getAllNewsType();
		result.setCode("0");
		result.setErrorDescription("获取所有资讯类型成功");
		result.setDataObject(allNewsType);
		return result;
	}
	//<editor-fold >
		public String buildTree(List<Evaluate> evaluates,List<Evaluate> all){
			for(Evaluate evaluate:evaluates){
				Long id = evaluate.getId();
				if(evaluate.getParentId()==0L){
					//....
					all.add(evaluate);
					build(evaluate,evaluates,all);
				}
			}
			return null;
		}
		
		public void build(Evaluate evaluate,List<Evaluate> evaluates,List<Evaluate> all){
			List<Evaluate> children = getChildren(evaluate,evaluates);
			if(!children.isEmpty()){
				for(Evaluate child:children){
					Long id = child.getId();
					//....
					all.add(child);
					build(child,evaluates,all);
				}
			}
		}
		
		private List<Evaluate> getChildren(Evaluate evaluate,List<Evaluate> evaluates){
			List<Evaluate> children  = new ArrayList<>();
			Long id =  evaluate.getId();
			for (Evaluate child:evaluates) {
				if(id==child.getParentId()){
					children.add(child);
				}
			}
			return children;
		}
	
	
}
