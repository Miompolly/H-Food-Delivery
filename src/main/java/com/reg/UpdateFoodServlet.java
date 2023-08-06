package com.reg;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UpdateFoodServlet
 */

@WebServlet("/UpdateFoodServlet")
public class UpdateFoodServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateFoodServlet() {
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

		String foodname=request.getParameter("foodname");
	
		 int quantity = 0;
		    try {
		        quantity = Integer.parseInt(request.getParameter("qty"));
		    } catch (NumberFormatException e) {
		      
		        e.printStackTrace(); 
		    }
		    
		    int Id = 0;
		    String IdStr = request.getParameter("Id");
		    if (IdStr != null && !IdStr.isEmpty()) {
		        try {
		        	Id = Integer.parseInt(IdStr);
		        } catch (NumberFormatException e) {
		          
		            e.printStackTrace(); 
		        }
		    }
		    
		    int qty = 0;
		    String qtyStr = request.getParameter("qty");
		    if (qtyStr != null && !qtyStr.isEmpty()) {
		        try {
		        	qty = Integer.parseInt(qtyStr);
		        } catch (NumberFormatException e) {
		          
		            e.printStackTrace(); 
		        }
		    }
		    
		    int price = 0;
		    String priceStr = request.getParameter("price");
		    if (priceStr != null && !priceStr.isEmpty()) {
		        try {
		        	price = Integer.parseInt(priceStr);
		        } catch (NumberFormatException e) {
		          
		            e.printStackTrace(); 
		        }
		    }
		    
		    int totalprice=price*qty;
		    
		
		    
		
		DBconnection db=new DBconnection();
		db.getCon();
		String rs=db.updateMealz(foodname,qty,price,totalprice,Id);;
		if(rs!=null) {
			response.sendRedirect("adminDashboard.jsp?section=products");
		}else {
			response.sendRedirect("updateUseD.jsp");
		}
		
		
	}

}
