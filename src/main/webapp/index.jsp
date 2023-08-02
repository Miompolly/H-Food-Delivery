<%@page import="com.reg.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html>
<head>
     <title>welcome</title>
    <%@include file="Components/head.jsp" %>
</head>
  <body>
<%@include file="Components/navbar.jsp" %>
<%@include file="Components/slideShow.jsp" %>

<div class="shadow-sm p-3 mb-5 bg-white rounded" style="width: 95%; margin-left: 2%; 
display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 10px;
  grid-auto-rows: minmax(100px, auto);
  padding-top: 2rem;
  padding-bottom: 2rem;
  


;">
<%
DBconnection db = new DBconnection();
db.getCon();
ResultSet meResults = db.getAllMeals();

try {
    while (meResults.next()) {
        int foodId = meResults.getInt("ID");
        String foodName = meResults.getString("FoodName");
        String quantity = meResults.getString("Quantity");
        String price = meResults.getString("Price");
        String totalPrice = meResults.getString("TotalPrice");
        java.sql.Blob blob = meResults.getBlob("Image");
        byte[] imageData = blob.getBytes(1, (int) blob.length());
%>
<div>
<div class="shadow p-3 mb-5 bg-white rounded">
<div class="foodImage">
    <h2><%= foodName %></h2>
    <img style="width: 360px;height: 300px;gap:2rem;"src="data:image/jpeg;base64, <%=Base64.getEncoder().encodeToString(imageData) %>" alt="<%= foodName %>">
   </div>
  <div class="foodImage" style="padding-top:2rem;">
   <span>Price: <%= price %> Frw</span>
   <button type="submit">Add to cart</button>
   <button type="submit">Order</button>
  </div>
    
</div>
</div>
<%
    }
} catch (SQLException e) {
    e.printStackTrace();
    System.out.println("no data get it" + e.getMessage());
}
%>

</div>



 <%@include file="Components/footer.jsp" %>
</body>
</html>