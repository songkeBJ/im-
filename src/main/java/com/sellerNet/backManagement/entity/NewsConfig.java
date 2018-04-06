package com.sellerNet.backManagement.entity;

public class NewsConfig extends BasePojo{
	private int lookEnd;
	private int lookTime;
	public int getLookEnd() {
		return lookEnd;
	}
	public void setLookEnd(int lookEnd) {
		this.lookEnd = lookEnd;
	}
	public int getLookTime() {
		return lookTime;
	}
	public void setLookTime(int lookTime) {
		this.lookTime = lookTime;
	}
}
