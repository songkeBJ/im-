package com.sellerNet.backManagement.dto.im;

import java.io.Serializable;
import java.util.Map;
import jersey.repackaged.com.google.common.collect.Maps;

public class JsonMessage
  implements Serializable
{
  private Map<String, Object> data;

  public JsonMessage()
  {
    this.data = Maps.newHashMap();
  }

  public static JsonMessage create() {
    return new JsonMessage();
  }

  public JsonMessage add(String key, Object val) {
    this.data.put(key, val);
    return this;
  }
}