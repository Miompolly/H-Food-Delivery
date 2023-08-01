package com.reg;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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
		ResultSet result=db.getUser(loguser1);
		
		String userRole=null;
		String names=null;
		  int pendingOrderCount = db.getPendingOrderCount();
		    int completedOrderCount = db.getCompletedOrderCount();
		    int ConcelledOrderCount = db.getConclledOrderCount();
		    ResultSet meResults=db.getAllMeals();
		   
		    

		if(result!=null) {
			try {
				if(result.next()) {
				userRole=result.getString("Role");
				names=result.getString("FullName");
				
				System.out.println(names);
				
				if(userRole.equals("admin")) {
					HttpSession session = request.getSession();
                    session.setAttribute("fullName", names);
                    session.setAttribute("pendingOrderCount", pendingOrderCount);
                    session.setAttribute("completedOrderCount", completedOrderCount);
                    session.setAttribute("ConcelledOrderCount", ConcelledOrderCount);
                   
                    
					response.sendRedirect("adminDashboard.jsp");
				}else {
					response.sendRedirect("userDashboard.jsp");
				}
				}
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
			}
		
		
		try {
	        while (meResults.next()) {
	            int foodId = meResults.getInt("ID");
	            String foodName = meResults.getString("FoodName");
	            String quantity = meResults.getString("Quantity");
	            String price = meResults.getString("Price");
	            String totalPrice = meResults.getString("TotalPrice");
	            String image = meResults.getString("Image");
	            
	            System.out.println(foodName);

	        }

	       
	       

	    } catch (SQLException e) {
	        e.printStackTrace();
	        System.out.println("no data get it" + e.getMessage());
	    }
		
		
		    
	}
	
	

	
	
}


