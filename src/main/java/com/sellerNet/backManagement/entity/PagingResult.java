package com.sellerNet.backManagement.entity;

import java.util.ArrayList;
import java.util.List;

public class PagingResult<T>
{
  private int currentPage;
  private int totalSize;
  private List<T> resultList = new ArrayList();

  public int getCurrentPage() { return this.currentPage; }

  public void setCurrentPage(int currentPage) {
    this.currentPage = currentPage;
  }
  public int getTotalSize() {
    return this.totalSize;
  }
  public void setTotalSize(int totalSize) {
    this.totalSize = totalSize;
  }
  public List<T> getResultList() {
    return this.resultList;
  }
  public void setResultList(List<T> resultList) {
    this.resultList = resultList;
  }
}