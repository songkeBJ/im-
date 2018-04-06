package com.sellerNet.backManagement.exception;

import com.sellerNet.backManagement.config.ErrCodeConfig;
import com.sellerNet.backManagement.utils.StringUtil;

public class BusinessException extends Exception
{
  private static final long serialVersionUID = -7875638417065665771L;
  private String code;

  public BusinessException()
  {
  }

  public BusinessException(String code, String message)
  {
    super(StringUtil.ternaryAorB(message, ErrCodeConfig.getErrorMesByCode(code)));
    this.code = code;
  }

  public BusinessException(String message) {
    super(message);
  }

  public BusinessException(String message, Throwable cause) {
    super(message, cause);
  }

  public BusinessException(Throwable cause) {
    super(cause);
  }

  public BusinessException(String message, Throwable cause, boolean enableSuppression, boolean writableStackTrace) {
    super();
  }

  public String getCode() {
    return this.code;
  }

  public void setCode(String code) {
    this.code = code;
  }
}