package com.reg;

import java.io.InputStream;

public class FoodItem {
    String foodName;
    InputStream image; 
    int quantity, price, totalPrice;

    public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public InputStream getImage() {
		return image;
	}

	public void setImage(InputStream image) {
		this.image = image;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}

	public FoodItem() {
        super();
    }

    public FoodItem(String foodName, InputStream image, int quantity, int price, int totalPrice) {
        super();
        this.foodName = foodName;
        this.image = image;
        this.quantity = quantity;
        this.price = price;
        this.totalPrice = totalPrice;
    }

 
}
