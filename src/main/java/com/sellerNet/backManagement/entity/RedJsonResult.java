package com.sellerNet.backManagement.entity;

public class RedJsonResult<T> extends Result<T>{
	
	private Red red;
	
  public Red getRed() {
		return red;
	}

	public void setRed(Red red) {
		this.red = red;
	}

private String red_state;
  
  
  public String getRed_state() {
	return red_state;
}

public void setRed_state(String red_state) {
	this.red_state = red_state;
}

public RedJsonResult(String code, String errorDescription)
  {
    super(code, errorDescription);
  }

  public RedJsonResult()
  {
  }
}