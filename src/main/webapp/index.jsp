<%@page import="com.reg.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Base64" %>

<!DOCTYPE html>
<html>
<head>
     <title>welcome</title>
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%@include file="Components/head.jsp" %>
</head>
  <body>
<%@include file="Components/navbar.jsp" %>








<div class="container">
<div class="card-header my-3">All Meals</div>

<div class="row">
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
<div class="col-md-3 my-3">

<div class="card w-100" style="width: 18rem;">
  <img class="card-img-top" 
 style="width:100%;height: 200px;"src="data:image/jpeg;base64, <%=Base64.getEncoder().encodeToString(imageData) %>" alt="<%= foodName %>"
  
  
 >
  <div class="card-body">
  
    <h5 class="card-title"><%= foodName %></h5>
  <h6 class="price">Price : Rwf <%= price %></h6>
  
  <div class="mt-3 d-flex justify-content-between">
<a href="add-to-cart?id=<%= foodId %>" class="btn btn-dark">Add to Cart</a>

      <a href="#" class="btn btn-primary">Order Now</a>
  
  </div>
 
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

</div>



 <%@include file="Components/footer.jsp" %>
 
 
<script>
    function addToCart(productId) {
        $.post("AddToCartServlet", { productId: productId }, function(data) {
            // Handle the response if needed
            alert("Item added to cart!");
        });
    }
</script>
 
</body>
</html>