package com.reg;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class updateOrdersStatus
 */

@WebServlet("/updateOrdersStatus")
public class updateOrdersStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateOrdersStatus() {
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

	    int OrderId = 0;
	    String OrderIdStr = request.getParameter("orderId");
	    if (OrderIdStr != null && !OrderIdStr.isEmpty()) {
	        try {
	        	OrderId = Integer.parseInt(OrderIdStr);
	        } catch (NumberFormatException e) {
	          
	            e.printStackTrace(); 
	        }
	    }
	    
	    String orderStatus=request.getParameter("orderStatus");
	    DBconnection db=new DBconnection();
	    db.getCon();
	    String rs=db.updateStatus(OrderId, orderStatus);
	    if(rs!=null) {
	    	response.sendRedirect("adminDashboard.jsp?section=orders");
	    }
		
	}

}
