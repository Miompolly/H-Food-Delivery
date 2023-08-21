<%@page import="javax.swing.JOptionPane"%>
<%@ page import="com.reg.DBconnection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
try {
    int userIdToDelete = Integer.parseInt(request.getParameter("id"));
    DBconnection db = new DBconnection();
    db.getCon();
    boolean deleted = db.deleteUser(userIdToDelete);
    
    if (deleted) {
        response.sendRedirect("adminDashboard.jsp?section=users"); 
    } else {
        out.println("Deletion failed. Please try again.");
    }
} catch (Exception e) {
    e.printStackTrace();
    System.out.println("Failed "+e.getMessage());
}
%>
