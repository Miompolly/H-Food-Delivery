<%@page import="com.reg.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<div class="container-right">
    <div class="meal"><a href="?section=add">Add +</a></div>
    <div class="orders">

        <table class="table">
            <tr  >
                <th >No</th>
                <th >Food Name</th>
                <th >Quantity</th>
                <th >Price</th>
                <th >Total Price</th>

                <th>Action</th>
            </tr>

            <%
            try {
            	DBconnection db=new DBconnection();
            	db.getCon();
            	ResultSet  rs=db.getAllMeals();
            	while(rs.next()){
            	 %>
          	   <tr>
          	   <td ><%= rs.getInt("ID") %></td>
					<td ><%= rs.getString("FoodName") %></td>
					<td ><%= rs.getString("Quantity") %></td>
					<td ><%= rs.getString("Price") %></td>
					<td "><%= rs.getString("TotalPrice") %></td>

					<td ">
					            
                    <button class="meal" href="?section=edit" style="background-color: green;">Edit</button>
                    <button class="meal" style="background-color: red;">Delete</button>
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

