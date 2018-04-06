package com.sellerNet.backManagement.entity;


/**
 * @author root
 * 标签
 *
 */
public class LableDto {
	
	private Long lableId;
	private String name;
	private int lableCounts;
	public Long getLableId() {
		return lableId;
	}
	public void setLableId(Long lableId) {
		this.lableId = lableId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getLableCounts() {
		return lableCounts;
	}
	public void setLableCounts(int lableCounts) {
		this.lableCounts = lableCounts;
	}
  
}