
    const dates = ["2023-07-01", "2023-07-02", "2023-07-03"];
    const completedOrders = [5, 8, 10];
    const pendingOrders = [3, 6, 7];
    const cancelledOrders = [1, 2, 3];

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


