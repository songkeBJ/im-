package com.sellerNet.backManagement.entity;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.util.List;

import com.sellerNet.backManagement.utils.URLUtil;

public class UserRelation  extends BasePojo implements Serializable{

	private static final long serialVersionUID = 2027783536686793710L;

	private Integer userId;
    
    private Integer beUserId;

    private Integer type; //1刪除 2拉黑

    private String images; //凭证图片
    
    private String reason;//拉黑理由
    
    private String otherReason; //其他理由

    private Integer status; //0未处理  1已处理
    
    private List<String> imageList;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getBeUserId() {
		return beUserId;
	}

	public void setBeUserId(Integer beUserId) {
		this.beUserId = beUserId;
	}

	public Integer getType() {
		return type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

	public String getImages() {
		return images;
	}

	public void setImages(String images) {
		this.images = images;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		boolean flag =URLUtil.isChineseChar(reason);
		if(!flag){
			try {
				reason =new String(reason.getBytes("iso8859-1"),"UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		this.reason = reason;
	}

	public String getOtherReason() {
		return otherReason;
	}

	public void setOtherReason(String otherReason) {
		this.otherReason = otherReason;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public List<String> getImageList() {
		return imageList;
	}

	public void setImageList(List<String> imageList) {
		this.imageList = imageList;
	}

}