package com.reg;

public class FoodItem {
	String foodName, quantity, price,  totalPrice,  image;

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(String totalPrice) {
		this.totalPrice = totalPrice;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public FoodItem() {
		super();
	}

	public FoodItem(String foodName, String quantity, String price, String totalPrice, String image) {
		super();
		this.foodName = foodName;
		this.quantity = quantity;
		this.price = price;
		this.totalPrice = totalPrice;
		this.image = image;
	}


}
