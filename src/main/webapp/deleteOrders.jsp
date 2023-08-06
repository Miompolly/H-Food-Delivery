<%@page import="javax.swing.JOptionPane"%>
<%@ page import="com.reg.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<%
try {
    int orderIdToDelete = Integer.parseInt(request.getParameter("OrderId"));
	DBconnection db=new DBconnection();
    db.getCon();
    boolean deleted = db.deleteOrder(orderIdToDelete);
    
    if (deleted) {
    	JOptionPane.showMessageDialog(null, "Order has removed");
        response.sendRedirect("adminDashboard.jsp?section=orders"); 
    }else {
    	JOptionPane.showMessageDialog(null, "Order has failed to remove");
    }
} catch (Exception e) {
    e.printStackTrace();
    System.out.println("Failed "+e.getMessage());
}
 %>