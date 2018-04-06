package com.sellerNet.backManagement.service;

import java.util.Locale;
import javax.annotation.Resource;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Service;

@Service
public class MessageService
{

  @Resource
  private MessageSource messageSource;

  public String getText(String code)
  {
    return this.messageSource.getMessage(code, null, Locale.US);
  }

  public String getText(String code, Object[] args) {
    return this.messageSource.getMessage(code, args, Locale.US);
  }
}