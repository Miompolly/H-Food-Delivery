<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>AdminDashboard</title>
    <%@include file="Components/head.jsp" %>
  <style type="text/css">
    label{
	
	
	font-weight:bold;
	font-size:19px;
}
.leftSide{
padding-left:20px;
}
.leftSide ul{
margin-top:1px;
}
.leftSide li{
padding-bottom:5px;
}
.leftSide li:hover{
height: 100%;
width: 90%;
background-color: white;
margin-right: 20px;
border-radius: 8px;
color:white;
padding-right:2rem;

}
ul li a{
color:white;
font-weight:bold;
}

.leftSide a:hover{
width: 100%;
color:black;
font-weight: bold;

}
.leftSide img{
margin-right: 10px;
height: 25px;
gap:2px;
 }
.leftSide img:hover{
 
 }
    </style>
</head>
<body class="body">
    <%@include file="Components/AdmNavBar.jsp" %>
    <div class="containerAd">
        <div class="leftSide">
           
            
            <li class="nav-item">
                  <a href="adminDashboard.jsp?section=users">Back</a>
                </li>
      
  
    
        </div>
        <div class="rightSide">
           <div class="container-right">
    
    
  
    <div class="orders">

<div class="container  w-75 p-3">
        <form action="AddUser2Servlet" method="post">
        
         <div class="form-group">
                <h3>ADD USER FORM</h3>
                <hr>
               
            </div>
   
            <div class="form-group">
                <label for="foodName">Full Name</label>
                <input type="text" class="form-control" name="fullname" id="orderStatus" required>
            </div>
              <div class="form-group">
                <label for="foodName">Email</label>
                <input type="text" class="form-control" name="email" id="orderStatus" required>
            </div>
             <div class="form-group">
                <label for="foodName">Phone</label>
                <input type="text" class="form-control" name="phone" id="orderStatus" required>
            </div>
                <div class="form-group">
                <label for="foodName">Location</label>
                <input type="text" class="form-control" name="location" id="orderStatus"   required>
            </div>
                     <div class="form-group">
                <label for="foodName">Password</label>
                <input type="password" class="form-control" name="pwd" id="foodName" >
            </div>
                <div class="form-group">
                <label for="foodName">Role</label>
                <input type="text" class="form-control" name="role" id="orderStatus"   required>
            </div>
            
            <button type="submit" class="btn btn-primary my-3">Add User</button>
        </form>
    </div>

    </div>
</div>
       </div>
    
    
</body>
</html>