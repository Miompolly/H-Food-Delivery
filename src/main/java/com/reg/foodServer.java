package com.reg;

import java.io.IOException;
import java.io.InputStream;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.cj.jdbc.Blob;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig; // Import the MultipartConfig annotation
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

@MultipartConfig(maxFileSize = 1500000)// Add the MultipartConfig annotation
public class foodServer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public foodServer() {
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
        
//        ResultSet meResults=db.getAllMeals();
//        
//        try {
//	        while (meResults.next()) {
//	            int foodId = meResults.getInt("ID");
//	            String foodName1 = meResults.getString("FoodName");
//	            int quantity1 = meResults.getInt("Quantity");
//	            int price1 = meResults.getInt("Price");
//	            int totalPrice1 = meResults.getInt("TotalPrice");
//	            java.sql.Blob blob = meResults.getBlob("Image");
//	            
//	            System.out.println(foodName1);
//	            
//	            if (blob != null) {
//                    InputStream inputStream1 = blob.getBinaryStream();
//                    byte[] imageData = inputStream1.readAllBytes();
//                    foodItem.setImage(imageData);
//                }
//
//	        }
//
//	       
//	       
//
//	    } catch (SQLException e) {
//	        e.printStackTrace();
//	        System.out.println("no data get it" + e.getMessage());
//	    }
		
	}

}
