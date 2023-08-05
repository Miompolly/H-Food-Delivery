package com.reg;

public class UpdateMeal {
int foodId;
String Foodname;
int price;

public UpdateMeal() {
	super();
}
public UpdateMeal(int foodId, String foodname, int price) {
	super();
	this.foodId = foodId;
	Foodname = foodname;
	this.price = price;
}
public int getFoodId() {
	return foodId;
}
public void setFoodId(int foodId) {
	this.foodId = foodId;
}
public String getFoodname() {
	return Foodname;
}
public void setFoodname(String foodname) {
	Foodname = foodname;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
	
	
}
