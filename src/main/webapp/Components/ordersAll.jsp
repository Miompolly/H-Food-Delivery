<%@page import="com.reg.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<%! 
    public String formatTimestamp(String timestampString) {
        try {
            SimpleDateFormat sourceFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            SimpleDateFormat targetFormat = new SimpleDateFormat("MMM dd, yyyy hh:mm a");
            
            Date parsedDate = sourceFormat.parse(timestampString);
            return targetFormat.format(parsedDate);
        } catch (Exception e) {
            e.printStackTrace();
            return "Invalid Timestamp";
        }
    }
%>


<div class="container-right">
    
    
  
    <div class="order1">

        <table class="table" style="width:70rem;">
            <tr  >
                <th >OrderID</th>
                <th >FoodID</th>
                <th >Quantity</th>
                <th >TotalPrice</th>
                <th >Email</th>
                <th >Status</th>

                <th >ScheduleTime</th>

                <th style="width:15rem;">Action</th>
            </tr>

            <%
            try {
            	DBconnection db=new DBconnection();
            	db.getCon();
            	ResultSet  rs=db.getAllOrders();
            
            	while(rs.next()){
            	 %>
          	   <tr>
          	   <td ><%= rs.getInt("OrderId") %></td>
					<td ><%= rs.getInt("FoodID") %></td>
					<td ><%= rs.getInt("quantity") %></td>
					<td ><%= rs.getInt("TotalPrice") %></td>
					<td ><%= rs.getString("orderEmail") %></td>
					<td ><%= rs.getString("Order_Status") %></td>
					<td ><%= rs.getString("SChedule_time") %></td>
					

					<td style="display: flex;gap:1rem;" >
					  <div class="meal" style="background-color: green;" href="section?edit">   
					       
                  <a href="editOrders.jsp?OrderId=<%= rs.getInt("OrderId") %>&Order_Status=<%= rs.getString("Order_Status") %>">Edit</a>
                    </div>  
                    <div class="meal" style="background-color: red;">
                    <a href="deleteOrders.jsp?OrderId=<%= rs.getInt("OrderId") %>">Delete</a>
                    </div>
                </td>

          	   </tr>
            <% }
          
                }catch(Exception e){
                	e.printStackTrace();
                }
            
            
               
            %>
        </table>

    </div>
</div>

