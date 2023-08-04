package com.reg;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/add-to-cart")
public class AddToCartServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	response.setContentType("text/html;charset=UTF-8");	
	
	try {
		PrintWriter out=response.getWriter();
		ArrayList<Cart> cartList=new ArrayList<>();
		int id=Integer.parseInt(request.getParameter("id"));
		
		
		Cart cm=new Cart();
		cm.setId(id);
		cm.setQuantity(1);
		
		HttpSession session=request.getSession();
		ArrayList<Cart> cart_list=(ArrayList<Cart>) session.getAttribute("cart-list");
	
		if(cart_list==null) {
			cartList.add(cm);
			session.setAttribute("cart-list", cartList);
			response.sendRedirect("index.jsp");
		
		
		}else {
//			 out.println(" cart list exist");
			
			cartList =cart_list;
			boolean exist=false;
			
			for(Cart c:cart_list) {
				if(c.getId()==id) {
				exist=true;
				out.println("<h2 style='color:red;text-align:center'>Meal already exist in cart.<a href='cart.jsp'>Go to cart page</h3>");
			}
				
			
			}
			if(!exist) {
				cartList.add(cm);
				response.sendRedirect("index.jsp");
			}
		}
	
		
		
	} catch (IOException e) {
		
		e.printStackTrace();
	}
	
	}

}
