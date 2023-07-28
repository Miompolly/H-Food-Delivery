package com.reg;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Register1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Register1() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fullname=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String location=request.getParameter("location");
		String password=request.getParameter("password");
		String form_email=request.getParameter("form_email");
		String form_password=request.getParameter("form_password");
		String role="user";
		User user1=new User(fullname,phone,email,location,password,role);
		loginUser loguser1=new loginUser(form_email,form_password);
		DBconnection db=new DBconnection();
		db.getCon();
		
		db.addUser(user1);
		db.getUser(loguser1);
	}

}