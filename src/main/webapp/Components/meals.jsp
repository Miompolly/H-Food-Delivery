<%@page import="com.reg.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<div class="container-right">
    <div class="meal"><a href="?section=add">Add +</a></div>
    
  
    <div class="order1">

        <table class="table" style="width:70rem;">
            <tr  >
                <th >No</th>
                <th >Food Name</th>
                <th >Quantity</th>
                <th >Price</th>
                <th >Total Price</th>

                <th style="width:15rem;">Action</th>
            </tr>

            <%
            try {
            	DBconnection db=new DBconnection();
            	db.getCon();
            	ResultSet  rs=db.getAllMeals();
            	byte[] imageData = null;
            	while(rs.next()){
            	 %>
          	   <tr>
          	   <td ><%= rs.getInt("ID") %></td>
					<td ><%= rs.getString("FoodName") %></td>
					<td ><%= rs.getInt("Quantity") %></td>
					<td ><%= rs.getInt("Price") %></td>
					<td "><%= rs.getInt("TotalPrice") %></td>

					<td style="display: flex;gap:1rem;" >
					  <div class="meal" style="background-color: green;" href="section?edit">   
					       
                  <a href="update.jsp?id=<%= rs.getInt("ID") %>">Edit</a>
                    </div>  
                    <div class="meal" style="background-color: red;">
                    <a href="deleteFood.jsp?id=<%= rs.getInt("ID") %>">Delete</a>
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

