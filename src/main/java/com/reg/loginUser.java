package com.reg;

public class loginUser {
String form_email,form_password;

public loginUser() {
	super();
}

public loginUser(String form_email, String form_password) {
	super();
	this.form_email = form_email;
	this.form_password = form_password;
}

public String getForm_email() {
	return form_email;
}

public void setForm_email(String form_email) {
	this.form_email = form_email;
}

public String getForm_password() {
	return form_password;
}

public void setForm_password(String form_password) {
	this.form_password = form_password;
}


}
