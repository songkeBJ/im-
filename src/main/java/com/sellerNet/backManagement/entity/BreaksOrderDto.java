package com.sellerNet.backManagement.entity;

import java.util.List;

public class BreaksOrderDto {
   private List<BreaksOrder> alreadyOrders;
   private List<BreaksOrder> noPayOrders;
   public List<BreaksOrder> getAlreadyOrders() {
	   return alreadyOrders;
   }
   public void setAlreadyOrders(List<BreaksOrder> alreadyOrders) {
	   this.alreadyOrders = alreadyOrders;
   }
   public List<BreaksOrder> getNoPayOrders() {
	   return noPayOrders;
   }
   public void setNoPayOrders(List<BreaksOrder> noPayOrders) {
	   this.noPayOrders = noPayOrders;
   }
}