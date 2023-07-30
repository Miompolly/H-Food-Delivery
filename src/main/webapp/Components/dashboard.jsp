<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  
    <div class="container-right">
    <label>Orders</label>
   <div class="orders">
   <div class="order completed">
   
   <div class="completedOrder" >
   <span> Completed</span> <i class="fa-solid fa-circle-check"></i>
   </div>
   <div class="total">
   <span>Total : </span>
   <span>
       	    <c:if test="${not empty completedOrderCount}">
        <p> ${completedOrderCount}</p>
    </c:if></span>
   
 
   </div>
   
   </div>
   <div class="order pending">
   
    <div class="pendingOrder">
   <span> Pending</span> <i class="fa-solid fa-spinner"></i>
   </div>
   <div class="total">
   
   <span>Total : </span>
   <span><c:if test="${not empty pendingOrderCount}">
        <p> ${pendingOrderCount}</p>
    </c:if></span>
   
   </div>
     	    
   </div>
   <div class="order concelled">
    <div class="concelleddOrder">
   <span> Concelled</span> <i class="fa-solid fa-xmark"></i>
   </div>
   <div class="total">
    <span>Total : </span>
    <span>
       <c:if test="${not empty ConcelledOrderCount}">
        <p> ${ConcelledOrderCount}</p>
    </c:if>
    
    </span>
    </div>
   </div>
   

   </div>
<div class="driverFood" style="display:flex; margin-top:1.3rem; border-radius:8px;gap:1rem;" >

<div class="driver"> <img src="food_images/unnamed-1-42-768x480.jpg" style="width:66vh;height:40vh;border-radius:8px;"></div>
<div class="driver"><img src="food_images/unnamed-1-41.jpg" style="width:66vh;height:40vh;border-radius:8px;"></div>
</div>

    </div>
    
   
    
 
          