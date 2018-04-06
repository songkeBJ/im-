package com.sellerNet.backManagement.controller;

import java.net.URISyntaxException;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.validation.BindingResult;

import com.sellerNet.backManagement.config.ErrCodeConfig;
import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.exception.BusinessException;
import com.sellerNet.backManagement.utils.URLUtil;

public abstract class BaseController
{
  private static final Logger logger = Logger.getLogger(BaseController.class);
  protected static final String REDIRECT = "redirect:";

  protected String redirect(String url)
  {
    return "redirect:" + url;
  }

  protected String redirect(String host, Map<String, String> params)
    throws URISyntaxException
  {
    return redirect(URLUtil.build(host, params));
  }

  protected <T> JsonResult<T> exceptionResult(JsonResult<T> jsonResult)
  {
    ErrCodeConfig.injectError(jsonResult, "SE1001");
    return jsonResult;
  }

  protected <T> JsonResult<T> illParamsResult(JsonResult<T> jsonResult, BindingResult result)
  {
    ErrCodeConfig.injectError(jsonResult, "SE1000");
    logger.debug(result.getAllErrors().toString());
    return jsonResult;
  }

  protected <T> JsonResult<T> invalidParamsResult(JsonResult<T> jsonResult)
  {
    ErrCodeConfig.injectError(jsonResult, "SE1007");
    return jsonResult;
  }

  protected void checkBindingResult(BindingResult result)
    throws BusinessException
  {
    if (result.hasErrors()) {
      logger.warn(String.format("入参校验未通过，[ %s ]", new Object[] { result.getAllErrors().toString() }));
      throw new BusinessException("SE1000", "");
    }
  }

  protected String exceptionPage(String[] page)
  {
    return page.length < 1 ? redirect("http://www.189.cn/500.html") : redirect(page[0]);
  }
}