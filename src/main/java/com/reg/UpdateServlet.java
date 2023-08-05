package com.reg;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/updateMeal")
public class UpdateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String foodIdParam = request.getParameter("id");
        String foodName = request.getParameter("foodname");
        int price = Integer.parseInt(request.getParameter("price"));
        DBconnection db = new DBconnection();
         db.getCon();
			/* UpdateMeal updatemeal=new UpdateMeal(foodIdParam,foodName,price); */

                response.sendRedirect("adminDashboard.jsp"); 
          
        }
    }

