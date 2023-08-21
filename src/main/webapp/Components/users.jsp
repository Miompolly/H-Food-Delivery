<%@page import="com.reg.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>

<div class="container-right" style="padding: 1rem;">
    <div class="meal"><a href="addUsers.jsp">Add User</a></div>
    
  
    <div class="order1">

        <table class="table" style="width:70rem;">
            <tr  >
                <th >UserID</th>
                <th >FullName</th>
                 <th >Email</th>
                 <th >Phone</th>
                 <th >Location</th>
                <th >User Role</th>
                 <th style="width:15rem;">Action</th>
            </tr>

            <%
            try {
            	DBconnection db=new DBconnection();
            	db.getCon();
            	ResultSet  rs=db.getAllUsers();
          
            	while(rs.next()){
            	 %>
          	   <tr>
          	   <td ><%= rs.getInt("ID") %></td>
					<td style="width: 200px;"><%= rs.getString("FullName") %></td>
					<td ><%= rs.getString("Email") %></td>	
					<td ><%= rs.getString("Phone") %></td>
					<td ><%= rs.getString("Location") %></td>	
					<td ><%= rs.getString("Role") %></td>	
					<td style="display: flex;gap:1rem;" >
					  <div class="meal" style="background-color: green;" href="section?edit">   
					       
                  <a href="updateUser.jsp?id=<%= rs.getInt("ID") %>&fullname=<%= rs.getString("FullName") %>&email=<%= rs.getString("Email") %>&phone=<%= rs.getString("Phone") %>&location=<%= rs.getString("Location") %>&role=<%= rs.getString("Role") %>">Edit</a>
                    </div>  
                    <div class="meal" style="background-color: red;">
                    <a href="deleteUsers.jsp?id=<%= rs.getInt("ID") %>">Delete</a>
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

