<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.reg.*"  %> 
<!DOCTYPE html>
<html>
<head>
    <title>userDashboard</title>
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
                    <a class="nav-link" href="logedUser.jsp"><img alt="" src="food_images/home-icon-silhouette.png" style="width:30px;"><span>Home</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="?section=dashboard"><img alt="" src="food_images/order.png" style="width:30px;"> <span>My Order</span></a>
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
                   
<div class="container-right">
     <div style="display:flex;gap:5rem "><h3>My Order</h3> 
     <input id="searchInput" placeholder="Type your order here" type="search" style="padding-left:1rem;width: 400px;border-radius:8px;"></div>
     
     
                <hr>
    
  
    <div class="order1">
    <table class="table" style="width:70rem;">
        <tr>
            <th>ID</th>
            <th>Food Name</th>
            <th>Price</th>
            <th style="width:15rem;">Action</th>
        </tr>
        <% try {
            DBconnection db = new DBconnection();
            db.getCon();
            CurrentUser cn=new CurrentUser();
            ResultSet rs = db.getMyOrder(cn);
            while (rs.next()) { %>
                <tr>
                    <td><%= rs.getInt("ID") %></td>
                    <td><%= rs.getString("FoodName") %></td>
                    <td><%= rs.getInt("Price") %></td>
                    <td style="display: flex;gap:1rem;">
                        <div class="meal" style="background-color: green;" href="section?edit">
                            <a href="orderFood.jsp?id=<%= rs.getInt("ID") %>">Order</a>
                        </div>
                    </td>
                </tr>
            <% }
        } catch (Exception e) {
            e.printStackTrace();
        } %>
    </table>
</div>
    
    </div>
</div>

                    </div>
            <% } else if (section.equals("orders")) { %>
                    <div class="section" id="ordersSection">
                        <h3>Orders Section</h3>
                        
                    </div>
            <% } else if (section.equals("products")) { %>
                    <div class="section" id="productsSection">
                     <%@include file="Components/meals.jsp" %>
                    
                    </div>
            <% }else if (section.equals("orderFood")) { %>
            <div class="section" id="edit">
                <h3>User edit Section</h3>
      
            </div>
    <% }
    %>
        </div>
    </div>

    <%@include file="Components/footer.jsp" %>
    
    <script>
    function filterTable() {
        var input, filter, table, tr, td, i, txtValue;
        input = document.getElementById("searchInput");
        filter = input.value.toUpperCase();
        table = document.querySelector(".order1 table");
        tr = table.getElementsByTagName("tr");

        for (i = 0; i < tr.length; i++) {
            td = tr[i].getElementsByTagName("td")[1]; // Column index 1 for Food Name
            if (td) {
                txtValue = td.textContent || td.innerText;
                if (txtValue.toUpperCase().indexOf(filter) > -1) {
                    tr[i].style.display = "";
                } else {
                    tr[i].style.display = "none";
                }
            }
        }
    }

    document.getElementById("searchInput").addEventListener("keyup", filterTable);
</script>
    
    
</body>
</html>