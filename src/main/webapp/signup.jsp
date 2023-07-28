<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <title>signup</title>
    <%@include file="Components/head.jsp" %>
</head>
  <body>
<%@include file="Components/navbar.jsp" %>

<div class="container ">
<div class="card position-absolute top-50 w-50 mx-auto start-50 posistion-absolute translate-middle">
<div class="card-header text-center"> <h3>Sign Up Form</h3></div>
<div class="card-body">
<form action="Register1" method="post">
<div class="form-group">
<label>Full Names</label>
<input type="text" name="name" id="name" placeholder="Enter your Full names" required class="form-control">
<label>Phone Number</label>
<input type="number" name="phone" id="phone" placeholder="Enter your Phone Number" required class="form-control">
<label>Email</label>
<input type="email" name="email" id="email" placeholder="Enter your Email" required class="form-control">
<label>Location</label>
<input type="text" name="location" id="location" placeholder="Enter your your Location Address" required class="form-control">
<label>Password</label>
<input type="password" name="password" id="password" placeholder="**************" required class="form-control">


<button class="btn btn-primary mt-3 w-10" type="submit" name="submit">Sign Up</button>

</div>
</form>

<span>Have Account</span><a class="mx-3 text-decoration-none" href="login.jsp">Sign In </a>
</div>
</div>
</div>
 


 <%@include file="Components/footer.jsp" %>
</body>
</html>