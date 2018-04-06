package com.sellerNet.backManagement.dto;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

public class PageResult<T>
  implements Serializable
{
  private static final long serialVersionUID = 7345856901266800750L;
  private int count;
  private long totalElements;
  private long totalPages;
  private long page;
  private int pageSize;
  private boolean hasPrevious;
  private boolean hasNext;
  private BigDecimal userAccount;
  private List<T> content = new ArrayList();

  public int getCount()
  {
    return this.count;
  }

  public void setCount(int count) {
    this.count = count;
  }

  public long getTotalElements() {
    return this.totalElements;
  }

  public void setTotalElements(long totalElements) {
    this.totalElements = totalElements;
  }

  public long getTotalPages() {
    return this.totalPages;
  }

  public void setTotalPages(long totalPages) {
    this.totalPages = totalPages;
  }

  public long getPage() {
    return this.page;
  }

  public void setPage(long page) {
    this.page = page;
  }

  public int getPageSize() {
    return this.pageSize;
  }

  public void setPageSize(int pageSize) {
    this.pageSize = pageSize;
  }

  public boolean isHasPrevious() {
    return this.hasPrevious;
  }

  public void setHasPrevious(boolean hasPrevious) {
    this.hasPrevious = hasPrevious;
  }

  public boolean isHasNext() {
    return this.hasNext;
  }

  public void setHasNext(boolean hasNext) {
    this.hasNext = hasNext;
  }

  public BigDecimal getUserAccount() {
    return this.userAccount;
  }

  public void setUserAccount(BigDecimal userAccount) {
    this.userAccount = userAccount;
  }

  public List<T> getContent() {
    return this.content;
  }

  public void setContent(List<T> content) {
    this.content = content;
  }
}