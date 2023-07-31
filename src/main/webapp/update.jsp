<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <title>AdminDashboard</title>
    <%@include file="Components/head.jsp" %>
  <style type="text/css">
    label{
	padding: 5px  opx;
	
	font-weight:bold;
	font-size:20px;
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
            <label>General</label>
            <ul style="list-style:none;">
              
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp"><img alt="" src="food_images/home-icon-silhouette.png" style="width:30px;"> <span>Dashboard</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp"><img alt="" src="food_images/order.png" style="width:30px;"><span>Orders</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp"><img src="food_images/fast-food.png" style="width:30px;"><span>Meals</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp"><img src="food_images/departure.png"><span> Guest</span></a>
                </li>
            </ul>

            <label>Configure</label>
            <ul style="list-style:none;">
             
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp"><img src="food_images/group.png" style="width:30px;color:white;"><span>Users</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp"><img src="food_images/user-profile.png" style="width:30px;"><span>User Setting</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp"><img src="food_images/orders.png" style="width:30px;"><span>Order Setting</span></a>
                </li>
            </ul>

            <label>Account</label>
            <ul style="list-style:none;">
             
                <li class="nav-item">
                    <a class="nav-link" href="adminDashboard.jsp"><img src="food_images/settings.png" style="width:30px;"><span>Setting</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp"><img src="food_images/power-off.png" style="width:30px;"><span>Logout</span></a>
                </li>
            </ul>
        </div>
        <div class="rightSide">
           <div class="container-right">
   
    
  
    <div class="orders">
<div class="container  w-75 p-3">
        <form>
        
         <div class="form-group">
                <h3>Update Meals</h3>
                <hr>
               
            </div>
            <div class="form-group">
                <label for="foodName">Food Name</label>
                <input type="text" class="form-control" name="foodname" id="foodName" placeholder="Enter food name">
            </div>
            <div class="form-group">
                <label for="quantity">Quantity</label>
                <input type="number" class="form-control" name="quantity" id="quantity" placeholder="Enter quantity">
            </div>
            <div class="form-group">
                <label for="price">Price per Plate</label>
                <input type="number" class="form-control" name="price" id="price" placeholder="Enter price">
            </div>
           
            <div class="form-group">
                <label for="foodImage">Food Image</label>
                <input type="file" class="form-control-file" name="foodImage" id="foodImage">
            </div>
            <button type="submit" class="btn btn-primary">Update</button>
        </form>
    </div>
    </div>

    
</div>

           
  

    <%@include file="Components/footer.jsp" %>
</body>
</html>