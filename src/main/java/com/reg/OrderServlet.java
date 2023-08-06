package com.reg;

import java.io.IOException;
import java.sql.Date;
import java.text.ParseException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OrderServlet
 */
@WebServlet("/OrderServlet")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		  int foodId = 0;
		    String foodIdStr = request.getParameter("foodId");
		    if (foodIdStr != null && !foodIdStr.isEmpty()) {
		        try {
		            foodId = Integer.parseInt(foodIdStr);
		        } catch (NumberFormatException e) {
		           
		            e.printStackTrace(); 
		        }
		    }
		
		    String foodName = request.getParameter("foodname");
		    
		    if (foodName == null || foodName.isEmpty()) {
		       
		        return; 
		    }
	    
	    int price = 0;
	    try {
	        price = Integer.parseInt(request.getParameter("price"));
	    } catch (NumberFormatException e) {
	      
	        e.printStackTrace(); 
	    }
	    
	    int quantity = 0;
	    try {
	        quantity = Integer.parseInt(request.getParameter("quantity"));
	    } catch (NumberFormatException e) {
	      
	        e.printStackTrace(); 
	    }

	    String email = request.getParameter("email");
	    String scheduleTimeStr = request.getParameter("date");
	    String orderStatus = "Pending";
	    
	    int totalprice = price * quantity;
	

	    orderSetterAndGetter order = new orderSetterAndGetter(price, quantity, totalprice,foodId, foodName, email, orderStatus, scheduleTimeStr);
	    DBconnection db = new DBconnection();
	    db.getCon();
	    String res = db.insertOrder(order);
	    if(res!=null) {
	    	response.sendRedirect("logedUser.jsp");
	    }else {
	    	response.sendRedirect("orderForm.jsp");
	    }
	}
	
	

}
