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
		
		String form_email=request.getParameter("form_email");
		String form_password=request.getParameter("form_password");
		
		loginUser loguser1=new loginUser(form_email,form_password);
		DBconnection db=new DBconnection();
		db.getCon();
	
		
		
		
		
		ResultSet result=db.getUser(loguser1);
		ResultSet resultE=null;
		
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
			    String	emailLog=result.getString("Email");

				/*
				 * CurrentUser curr=new CurrentUser(emailLog); resultE=db.getMyOrder(curr);
				 */
		
				
				if(userRole.equals("admin")) {
					HttpSession session = request.getSession();
                    session.setAttribute("fullName", names);
                    session.setAttribute("pendingOrderCount", pendingOrderCount);
                    session.setAttribute("completedOrderCount", completedOrderCount);
                    session.setAttribute("ConcelledOrderCount", ConcelledOrderCount);
                   
                    
					response.sendRedirect("adminDashboard.jsp");
				}else {
					HttpSession session = request.getSession();
                    session.setAttribute("fullName", names);
                    session.setAttribute("Email", emailLog);
                    System.out.println(emailLog);
					response.sendRedirect("logedUser.jsp");
				}
				}
			} catch (SQLException e) {
			
				e.printStackTrace();
			}
			}
		
		
	
		
		
		    
	}
	
	

	
	
}


