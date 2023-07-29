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
<div>
    <canvas id="orderLineChart" width="400" height="200"></canvas>
</div>

    </div>
    
    <script>
    // Sample data (replace with your actual data)
    const dates = ["2023-07-01", "2023-07-02", "2023-07-03", ...];
    const completedOrders = [5, 8, 10, ...];
    const pendingOrders = [3, 6, 7, ...];
    const cancelledOrders = [1, 2, 3, ...];

    // Get the canvas element
    const ctx = document.getElementById('orderLineChart').getContext('2d');

    // Create the line chart
    const lineChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: dates,
            datasets: [
                {
                    label: 'Completed Orders',
                    data: completedOrders,
                    borderColor: 'green',
                    fill: false
                },
                {
                    label: 'Pending Orders',
                    data: pendingOrders,
                    borderColor: 'blue',
                    fill: false
                },
                {
                    label: 'Cancelled Orders',
                    data: cancelledOrders,
                    borderColor: 'red',
                    fill: false
                }
            ]
        },
        options: {
            responsive: true,
            scales: {
                x: {
                    type: 'time',
                    time: {
                        unit: 'day'
                    }
                },
                y: {
                    beginAtZero: true
                }
            }
        }
    });
</script>
    
 
          