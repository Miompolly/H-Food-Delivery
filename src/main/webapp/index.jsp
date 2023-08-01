<%@page import="com.reg.DBconnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
     <title>welcome</title>
    <%@include file="Components/head.jsp" %>
</head>
  <body>
<%@include file="Components/navbar.jsp" %>
<center>
<h3 style="margin-top:2rem;">Welcome To Home Food Delivery Service Company</h3></center>
<div style="display:flex;padding-top:2rem;">

<div class="" style="width: 50%; margin-left: 2%;">
<img src="food_images/trady2.jpg" width="100%;">
</div>
<div class="" style="width: 50%; margin-left: 2%;">


<p>

Home Food Delivery Service Company. 
is a leading and innovative food delivery 
service that brings the convenience of 
restaurant-quality meals right to customers' needs.
</p>

<p>Committed to excellence, Home Food Delivery  Service Company. 
prioritizes food quality, taste, and hygiene. 
Partnering with top-rated restaurants and chefs,
 the company maintains strict quality control standards 
 to ensure every meal meets high culinary standards. </p>
 
<p>Sign up for Free or Sign In to order</p>
 <a href="signup.jsp"><button class="meal">SignUp</button></a>
</div>
</div>

 <%@include file="Components/footer.jsp" %>
</body>
</html>