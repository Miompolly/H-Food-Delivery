<nav class="navbar navbar-expand-lg bg-body-tertiary">
<div class="container">
  <div class="container-fluid text-align-left">
    <a class="navbar-brand" href="adminDashboard.jsp"><span class="fs-3 ">H-Food</span><img src="./food_images/salad.png" ><span class="fs-3">Delivery
    </span></a>
 </div>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="not.jsp"><img alt="" src="./food_images/notification (1).png" style="width:30px;"></a>
        </li>
     <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="not.jsp"><img alt="" src="./food_images/chatting.png" style="width:30px;"></a>
        </li>
    
        <li class="nav-item">
          <a class="nav-link" href="cart.jsp"><img src="food_images/logo.png" width=30 ></a>
        </li>
   
        <li class="nav-item justify-content-center align-items-center " style="width: 100px;padding-top:0.5rem;">
       
              <c:if test="${not empty fullName}">
        <p> ${fullName}</p>
    </c:if>
          
     
        </li>
       
      </ul>
      
    </div>
 
  </div>
</nav>