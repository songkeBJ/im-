package com.sellerNet.backManagement.controller.imApp;

import com.sellerNet.backManagement.entity.JsonResult;
import com.sellerNet.backManagement.entity.Qiniu;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping({"api/qiniu"})
public class QiniuController
{
  private static final Logger LOGGER = LoggerFactory.getLogger(QiniuController.class);

  @ResponseBody
  @RequestMapping(value={"getQiniu.do"}, method={org.springframework.web.bind.annotation.RequestMethod.GET, org.springframework.web.bind.annotation.RequestMethod.POST})
  public JsonResult signUp() {
    JsonResult jsonResult = new JsonResult();
    Qiniu qiniu = new Qiniu();
    qiniu.setACCESS_KEY("-qEvZ4_XIN1jzl3tH8GUINoul1dCJ60KxSsIWcto");
    qiniu.setBUCKET("yxin");
    qiniu.setDOMAIN("http://oez2a4f3v.bkt.clouddn.com");
    qiniu.setSECRET_KEY("02oT9kNXrRteTQWEMzqQq6wmnUwPUwfB8ySlgnNa");
    jsonResult.setDataObject(qiniu);
    jsonResult.setErrorDescription("获取相关系统成功!");
    return jsonResult;
  }
}