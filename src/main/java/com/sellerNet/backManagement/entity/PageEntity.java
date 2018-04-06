package com.sellerNet.backManagement.entity;

import java.util.Map;

public class PageEntity
{
  private Integer page;
  private Integer size;
  private Map params;
  private String orderColumn;
  private String orderTurn = "ASC";

  public PageEntity(Integer page, Integer size)
  {
    this.page = page;
    this.size = size;
  }
  public Integer getPage() {
    return this.page;
  }
  public void setPage(Integer page) {
    this.page = page;
  }
  public Integer getSize() {
    return this.size;
  }
  public void setSize(Integer size) {
    this.size = size;
  }
  public Map getParams() {
    return this.params;
  }
  public void setParams(Map params) {
    this.params = params;
  }
  public String getOrderColumn() {
    return this.orderColumn;
  }
  public void setOrderColumn(String orderColumn) {
    this.orderColumn = orderColumn;
  }
  public String getOrderTurn() {
    return this.orderTurn;
  }
  public void setOrderTurn(String orderTurn) {
    this.orderTurn = orderTurn;
  }
}