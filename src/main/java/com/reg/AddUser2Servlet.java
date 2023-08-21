package com.reg;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class AddUser2Servlet
 */
@WebServlet("/AddUser2Servlet")
public class AddUser2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUser2Servlet() {
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
		String fullname=request.getParameter("fullname");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		String location=request.getParameter("location");
		String password=request.getParameter("pwd");
		String role=request.getParameter("role");
		
		DBconnection db=new DBconnection();
		db.getCon();
		String rs=db.addUser2(fullname, phone, email, location, password, role);
		if(rs!=null) {
			response.sendRedirect("adminDashboard.jsp?section=users");
		}else {
			response.sendRedirect("addUsers.jsp");
		}
	}

}
