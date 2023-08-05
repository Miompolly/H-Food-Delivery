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
            <a href="logedUser.jsp">Back</a>
            
        </div>
        <div class="rightSide">
           <div class="container-right">
    
    
  
    <div class="orders">

<div class="container  w-75 p-3">
        <form action="OrderServlet" method="post">
        
         <div class="form-group">
                <h3>ORDER MEALS</h3>
                <hr>
               
            </div>
            <div class="form-group">
                <label for="foodName">Food ID</label>
                <input type="number" class="form-control" name="foodId" id="foodName"  value="<%= request.getParameter("foodId") %>" readonly>
            </div>
             <div class="form-group">
                <label for="foodName">Food Name</label>
                <input type="text" class="form-control" name="foodname" id="foodName"  value="<%= request.getParameter("foodname") %>" readonly>
            </div>
            <div class="form-group">
                <label for="price">Price </label>
                <input type="number" class="form-control" name="price" value="<%= request.getParameter("price") %>" readonly >
            </div>
            
            <div class="form-group">
                <label for="quantity">Quantity</label>
                <input type="number" class="form-control" name="quantity" id="quantity" placeholder="Enter quantity">
            </div>
            <div class="form-group">
                <label for="price">Order Email</label>
                 <input type="email" class="form-control" name="email" value="<%= request.getParameter("email") %>" readonly>


            </div>
            <div class="form-group">
                <label for="foodName">Sechdule Time</label>
                <input type="text" class="form-control" name="date" id="foodName" placeholder="dd/MM/yyyy">
            </div>
            
            <button type="submit" class="btn btn-primary">Order Now</button>
        </form>
    </div>

    </div>
</div>
       </div>
    
    
</body>
</html>