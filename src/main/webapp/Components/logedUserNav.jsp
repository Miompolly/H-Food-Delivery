<%@page import="javax.swing.JOptionPane"%>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
<div class="container">
  <div class="container-fluid">
    <a class="navbar-brand" href="index.jsp"><span class="fs-3 ">H-Food</span><img src="./food_images/salad.png" ><span class="fs-3">Delivery
    </span></a>
 </div>
 <div class="input-group w-50">
  <input type="text" id="mealFilter" class="form-control"placeholder="Search your meal here" aria-label="meal">
</div>
    <div class="collapse navbar-collapse " id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
    
<!--            <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="cart.jsp">cart</a>
        </li> -->
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="myOrder.jsp">MyOrder</a>
        </li>
     
         <li class="nav-item" style="display:none;">
              <c:if test="${not empty fullName}">
        
        
    </c:if>
        
          </li>
      
          <li class="nav-item">
          <a class="nav-link" href="index.jsp">Logout</a>
          
          </li>
       
   <li class="nav-item">
          <a class="nav-link" href="index.jsp">

          </a>
          
          </li>
       
      </ul>
      
    </div>
 
  </div>
</nav>
