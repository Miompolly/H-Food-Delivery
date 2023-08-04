<%@page import="javax.swing.JOptionPane"%>
<%@ page import="com.reg.DBconnection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
try {
    int foodIdToDelete = Integer.parseInt(request.getParameter("id"));
    DBconnection db = new DBconnection();
    db.getCon();
    boolean deleted = db.deleteMeal(foodIdToDelete);
    
    if (deleted) {
        response.sendRedirect("adminDashboard.jsp?section=products"); 
    } else {
        out.println("Deletion failed. Please try again.");
    }
} catch (Exception e) {
    e.printStackTrace();
    System.out.println("Failed "+e.getMessage());
}
%>
