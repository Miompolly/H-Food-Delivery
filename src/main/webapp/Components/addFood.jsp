<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container-right">
    
    
  
    <div class="orders">

<div class="container  w-75 p-3">
        <form action="foodServer" method="post" enctype="multipart/form-data">
        
         <div class="form-group">
                <h3>ADD MEALS</h3>
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
            <button type="submit" class="btn btn-primary">Add +</button>
        </form>
    </div>

    </div>
</div>

    