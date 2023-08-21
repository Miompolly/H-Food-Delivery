package com.reg;

public class Cart {
int id;
String name;
int price;
String image;
int quantity;
  
public Cart() {
	super();
}
public Cart(int id, String name, int price, String image, int quantity) {
	super();
	this.id = id;
	this.name = name;
	this.price = price;
	this.image = image;
	this.quantity = quantity;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public int getPrice() {
	return price;
}
public void setPrice(int i) {
	this.price = i;
}
public String getImage() {
	return image;
}
public void setImage(String image) {
	this.image = image;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}

}
