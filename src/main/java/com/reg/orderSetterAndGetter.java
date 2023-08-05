package com.reg;

import java.sql.Date;

public class orderSetterAndGetter {

	
	int price;	
	int quantity;
	int TotalPrice	;
	int FoodID	;
	String FoodName	;
	String orderEmail	;
	String Order_status	;
	String Schedule_time ;
	public orderSetterAndGetter() {
		super();
	}
	public orderSetterAndGetter(int price, int quantity, int totalPrice, int foodID, String foodName, String orderEmail,
			String order_status, String schedule_time) {
		super();
		this.price = price;
		this.quantity = quantity;
		TotalPrice = totalPrice;
		FoodID = foodID;
		FoodName = foodName;
		this.orderEmail = orderEmail;
		Order_status = order_status;
		Schedule_time = schedule_time;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotalPrice() {
		return TotalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		TotalPrice = totalPrice;
	}
	public int getFoodID() {
		return FoodID;
	}
	public void setFoodID(int foodID) {
		FoodID = foodID;
	}
	public String getFoodName() {
		return FoodName;
	}
	public void setFoodName(String foodName) {
		FoodName = foodName;
	}
	public String getOrderEmail() {
		return orderEmail;
	}
	public void setOrderEmail(String orderEmail) {
		this.orderEmail = orderEmail;
	}
	public String getOrder_status() {
		return Order_status;
	}
	public void setOrder_status(String order_status) {
		Order_status = order_status;
	}
	public String getSchedule_time() {
		return Schedule_time;
	}
	public void setSchedule_time(String schedule_time) {
		Schedule_time = schedule_time;
	}
	
}
