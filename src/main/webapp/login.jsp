<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <title>login</title>
    <%@include file="Components/head.jsp" %>
</head>
  <body>
  
<%@include file="Components/navbar.jsp" %>
<div class="container ">
<div class="card position-absolute top-50 w-50 h-50 start-50 posistion-absolute translate-middle">
<div class="card-header text-center"> <h3>User Sign In Form</h3></div>
<div class="card-body">
<form action="Register1" method="post">
<div class="form-group">
<label>Email</label>
<input type="email" name="form_email" id="email" placeholder="Enter your Email" required class="form-control">
<label>Password</label>
<input type="password" name="form_password" id="password" placeholder="**************" required class="form-control">
<a class="my-5 text-decoration-none" href="login.jsp">Forgot Password ?</a>


</div>
<button class="btn btn-primary mt-3 w-10">Sign In</button>
</form>

<span class="my-5">Not Yet User</span><a class="mx-3 text-decoration-none" href="signup.jsp">Create Account</a>
</div>
</div>
</div>

 <%@include file="Components/footer.jsp" %>
</body>
</html>