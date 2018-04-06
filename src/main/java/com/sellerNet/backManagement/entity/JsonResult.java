package com.sellerNet.backManagement.entity;

public class JsonResult<T> extends Result<T>{
	
  public JsonResult(String code, String errorDescription)
  {
    super(code, errorDescription);
  }

  public JsonResult()
  {
  }
}