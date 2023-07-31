package com.reg;

import java.io.IOException;
import java.io.InputStream;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;
import jakarta.servlet.annotation.MultipartConfig; // Import the MultipartConfig annotation

@MultipartConfig // Add the MultipartConfig annotation
public class foodServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public foodServer() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String foodName = request.getParameter("foodname");
        String quantityStr = request.getParameter("quantity");
        String priceStr = request.getParameter("price");

        int quantity = 0;
        int price = 0;
        int totalPrice = 0;

        try {
            quantity = Integer.parseInt(quantityStr);
            price = Integer.parseInt(priceStr);
            totalPrice = quantity * price;
        } catch (NumberFormatException e) {
            e.printStackTrace();
            System.out.println("Error not inserted"+e.getMessage());
        }

        InputStream inputStream = null;
        Part filePart = request.getPart("foodImage"); 
        if (filePart != null) {
  
            inputStream = filePart.getInputStream();
        }

        FoodItem foodItem = new FoodItem(foodName, inputStream, quantity, price, totalPrice);
        DBconnection db = new DBconnection();
        db.getCon();
        db.addMeals(foodItem);
        response.sendRedirect("adminDashboard.jsp?section=products");
		
	}

}
