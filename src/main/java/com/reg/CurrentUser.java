package com.reg;

public class CurrentUser {
String currEmail;

public CurrentUser() {
	super();
}

public CurrentUser(String currEmail) {
	super();
	this.currEmail = currEmail;
}

public String getCurrEmail() {
	return currEmail;
}

public void setCurrEmail(String currEmail) {
	this.currEmail = currEmail;
}
}
