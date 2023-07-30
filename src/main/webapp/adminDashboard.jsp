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
            <label>General</label>
            <ul style="list-style:none;">
              
                <li class="nav-item">
                    <a class="nav-link" href="?section=dashboard"><img alt="" src="food_images/home-icon-silhouette.png" style="width:30px;"> <span>Dashboard</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?section=orders"><img alt="" src="food_images/order.png" style="width:30px;"><span>Orders</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?section=products"><img src="food_images/fast-food.png" style="width:30px;"><span>Meals</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?section=guest"><img src="food_images/departure.png"><span> Guest</span></a>
                </li>
            </ul>

            <label>Configure</label>
            <ul style="list-style:none;">
             
                <li class="nav-item">
                    <a class="nav-link" href="?section=users"><img src="food_images/group.png" style="width:30px;color:white;"><span>Users</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?section=userSetting"><img src="food_images/user-profile.png" style="width:30px;"><span>User Setting</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?section=orderSetting"><img src="food_images/orders.png" style="width:30px;"><span>Order Setting</span></a>
                </li>
            </ul>

            <label>Account</label>
            <ul style="list-style:none;">
             
                <li class="nav-item">
                    <a class="nav-link" href="?section=setting"><img src="food_images/settings.png" style="width:30px;"><span>Setting</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="index.jsp"><img src="food_images/power-off.png" style="width:30px;"><span>Logout</span></a>
                </li>
            </ul>
        </div>
        <div class="rightSide">
           
       
            <% 
                String section = request.getParameter("section");
                if (section == null || section.equals("dashboard")) { %>
                    <div class="section" id="dashboardSection">
                       
                       <%@include file="Components/dashboard.jsp" %>
                    </div>
            <% } else if (section.equals("orders")) { %>
                    <div class="section" id="ordersSection">
                        <h3>Orders Section</h3>
                        
                    </div>
            <% } else if (section.equals("products")) { %>
                    <div class="section" id="productsSection">
                     <%@include file="Components/meals.jsp" %>
                    
                    </div>
            <% } else if (section.equals("guest")) { %>
                    <div class="section" id="guestSection">
                        <h3>Guest Section</h3>
                    
                    </div>
            <% } else if (section.equals("users")) { %>
                    <div class="section" id="usersSection">
                        <h3>Users Section</h3>
         
                    </div>
            <% } else if (section.equals("userSetting")) { %>
                    <div class="section" id="userSettingSection">
                        <h3>User Setting Section</h3>
              
                    </div>
            <% } else if (section.equals("orderSetting")) { %>
                    <div class="section" id="orderSettingSection">
                        <h3>Order Setting Section</h3>
                       
                    </div>
            <% } else if (section.equals("setting")) { %>
                    <div class="section" id="settingSection">
                        <h3>Setting Section</h3>
                      
                    </div>
            <% }
            else if (section.equals("edit")) { %>
            <div class="section" id="edit">
                <h3>User edit Section</h3>
      
            </div>
    <% } else if (section.equals("add")) { %>
            <div class="section" id="add">
                   <%@include file="Components/addFood.jsp" %>
               
            </div>
    <% } else if (section.equals("delete")) { %>
            <div class="section" id="delete">
                <h3>delete Section</h3>
              
            </div>
    <% }
            
            
            else { %>
                 
                    <div class="section" id="defaultSection">
                        <h3>Default Section</h3>
                   
                    </div>
            <% } %>
        </div>
    </div>

    <%@include file="Components/footer.jsp" %>
</body>
</html>