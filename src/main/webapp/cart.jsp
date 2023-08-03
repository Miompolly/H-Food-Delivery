<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
     <title>carts</title>
    <%@include file="Components/head.jsp" %>
    
    <style>
    .table tbody td{
    vertical-align: middle;

    }
    .btn-incre .btn-decre{
    background-color:blue;
    }
    
    </style>
</head>
  <body>
<%@include file="Components/navbar.jsp" %>

<div class="container">
<div class="d-flex py-3">
<h3>Total Price: Rwf 5200</h3><a class="mx-3 btn btn-primary" href="#">Check Out</a>
</div>
<table class="table table-loght">
<thead>
<tr>
<th>Name</th>
<th>Price</th>
<th>Order Now</th>
<th>Cancel</th>


</tr></thead>
<tbody>
<tr>
</tr>
<td>Cheese</td>
<td>Frw 5000</td>
<td>
<form action="" method="post" class="form-inline">
<input type="hidden" name="id" value="1" class="form-input">
<div class="form-group d-flex justify-content-between">
<a class="btn btn-sm btn-incre " style="box-shadow:none;font-size:25px;"><i class="fas fa-plus-square"></i></a>

<input type="text" type="quantity" class="form-control w-50" value="1" readonly> 
<a class="btn btn-sm btn-decre " style="box-shadow:none;font-size:25px;"><i class="fas fa-minus-square"></i></a>
</div>


</form>
</td>
<td>
<a href="#" class="btn btn-sm btn-danger">Remove</a>
</td>


</tbody>
</table>



</div>



 <%@include file="Components/footer.jsp" %>
</body>
</html>