package com.reg;

public class User {
 String fullname,phone,email,location,password,role;
 

public User() {
	super();
}

public User(String fullname, String phone, String email, String location, String password, String role) {
	super();
	this.fullname = fullname;
	this.phone = phone;
	this.email = email;
	this.location = location;
	this.password = password;
	this.role = role;
}

public String getFullname() {
	return fullname;
}

public void setFullname(String fullname) {
	this.fullname = fullname;
}

public String getPhone() {
	return phone;
}

public void setPhone(String phone) {
	this.phone = phone;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getLocation() {
	return location;
}

public void setLocation(String location) {
	this.location = location;
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}
	
	
}
