package com.sellerNet.backManagement.entity;

import java.io.Serializable;

public abstract class Result<T>
  implements Serializable
{
  private String code = "0";
  private String errorDescription;
  private T dataObject;

  public Result(String code, String errorDescription)
  {
    this.code = code;
    this.errorDescription = errorDescription;
  }

  public Result()
  {
  }

  public String getCode()
  {
    return this.code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public String getErrorDescription()
  {
    return this.errorDescription;
  }

  public void setErrorDescription(String errorDescription) {
    this.errorDescription = errorDescription;
  }

  public T getDataObject()
  {
    return this.dataObject;
  }

  public void setDataObject(T dataObject) {
    this.dataObject = dataObject;
  }
}