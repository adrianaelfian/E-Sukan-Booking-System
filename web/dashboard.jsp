<%-- 
    Document   : dashboard
    Created on : May 29, 2026, 3:51:48 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <title>E-Sukan Dashboard</title>
         
         <style>
             body{
                 font-family: Arial, sans-serif;
                 background-color: #f5f7fb;
                 margin: 0;
             }
             
             .header{
                 background: #1e3a8a;
                 color: white;
                 padding: 20px 40px;
                 font-size: 32px;
                 font-weight: bold;
                 box-shadow: 0 2px 8px rgba (0,0,0,0.2);
             }
             
             .container{
                 padding: 30px
             }
             
             .card-container{
                 display: flex;
                 gap: 20px;
                 flex-wrap: wrap;
                 margin-bottom: 30px;
             }
             
             .card{
                 flex: 1;
                 min-width: 220px;
                 background: white;
                 padding: 25px;
                 border-radius: 15px;
                 box-shadow: 0px 4px 10px rgba(0,0,0,0.1);
                 transition: 0.3s;
             }
             
             .card:hover{
                  transform: translateY(-5px);
             }
             
             .card h3{
                 margin: 0;
                 color: #666;
                 font-size: 18px;
             }
             
             .card p{
                 margin-top: 15px;
                 font-size: 38px;
                 font-weight: bold;
                 color: #1e3a8a;
             }
             
             .chart-container{
                 display: flex;
                 gap: 20px;
                 flex-wrap: wrap;
             }
             
             .chart-box{
                 flex:1; 
                 min-width:450px; 
                 background:white; 
                 padding:25px; 
                 border-radius:15px; 
                 box-shadow:0 4px 10px rgba(0,0,0,0.1);
             }
             
             .chart-box h2{
                 margin-bottom: 20px;
                 color: #333;
             }
             
             canvas{
                 max-height: 350px;
             }
         </style>
    </head>
    <body>
        
        <div class="header">E-Sukan Dashboard</div>
        <div class="container">
            <div class="card-container">

        <div class="card">
            <h3>Total Bookings</h3>
            <p>120</p>
        </div>
        
        <div class="card">
            <h3>Total Facilities</h3>
            <p>8</p>
        </div>
        
         <div class="card">
            <h3>Total Equipment</h3>
            <p>56</p>
        </div>

        <div class="card">
            <h3>Available Equipment</h3>
            <p>42</p>
        </div>
                
    </div> 
            <div class="chart-container">

        <div class="chart-box">
            <h2>Peak Usage Hours</h2>
            <canvas id="usageChart"></canvas>
        </div>
        
        <div class="chart-box">
            <h2>Equipment Status</h2>
            <canvas id="equipmentChart"></canvas>
        </div>   
                
    </div>
            
</div>            
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <script>
            
            const usageCtx = document.getElementById('usageChart');

            new Chart(usageCtx, {
                type: 'line',
            data: {
                labels: ['8AM', '10AM', '12PM', '2PM', '4PM', '6PM'],
                datasets: [{
                label: 'Facility Usage',
                data: [5, 12, 18, 25, 20, 30],
                borderColor: '#2563eb',
                backgroundColor: 'rgba(37,99,235,0.2)',
                fill: true,
                tension: 0.4,
                pointBackgroundColor: '#2563eb',
                pointRadius: 5
              }]
           },
           
           options: {
               responsive:true,
               plugins:{
                   legend:{
                       display:true
                   }
               },
               
               scales:{
                   y:{
                       beginAtZero: true
                   }
               }
           }
         });
         
         const equipmentCtx = document.getElementById('equipmentChart');

            new Chart(equipmentCtx, {
                type: 'doughnut',
            data: {
                labels: ['Available', 'Damaged', 'Maintenance'],
                datasets: [{
                data: [42, 8, 6],
                backgroundColor: ['#22c55e', '#ef4444', '#f59e0b'],
                borderWidth: 2
                }]
           },
           
           options: {
               responsive:true,
               plugins:{
                   legend:{
                       position:'bottom'
                   }
               }
            }
         });
</script>
        
    </body>
</html>
