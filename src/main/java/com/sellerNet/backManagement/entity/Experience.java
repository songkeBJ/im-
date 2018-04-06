package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * @author 新的实体类（相当于微信的朋友圈）
 *
 */
public class Experience extends BasePojo implements Serializable{

	/**
	 * 序列话
	 */
	private static final long serialVersionUID = -5105134050314803371L;

	
	/**
	 * 发布人
	 */
	private String nickName;
	/**
	 * 发布头像
	 */
	private String avator;
	/**
	 * 心得内容（包括表情包）
	 */
	private String content;
	
	/**
	 * 提醒人集合
	 */
	private String reminds;
	
	/**
	 * 地区ID
	 */
	private String districtId;
	
	/**
	 * 发布的心得图片
	 */
	private String images ;
	/**
	 * 发布的心得视频
	 */
	private String videos ;
	
	public String getVideos() {
		return videos;
	}

	public void setVideos(String videos) {
		this.videos = videos;
	}

	/**
	 * 评论内容
	 */
	private List<EvaluateOut> evaluates= new ArrayList<>();
	
	/**
     * 点赞人集合
     */
	private List<IslikeDto2> islikes = new ArrayList<>();
	//private List<Islike> islikes = new ArrayList<>();

	public void setIslikes(List<IslikeDto2> islikes) {
		this.islikes = islikes;
	}

	public List<IslikeDto2> getIslikes() {
		return islikes;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public List<EvaluateOut> getEvaluates() {
		return evaluates;
	}

	public void setEvaluates(List<EvaluateOut> evaluates) {
		this.evaluates = evaluates;
	}

	public String getReminds() {
		return reminds;
	}

	public void setReminds(String reminds) {
		this.reminds = reminds;
	}


	public String getDistrictId() {
		return districtId;
	}

	public void setDistrictId(String districtId) {
		this.districtId = districtId;
	}

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getAvator() {
		return avator;
	}

	public void setAvator(String avator) {
		this.avator = avator;
	}



	
	

	
}
