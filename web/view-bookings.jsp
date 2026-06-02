<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>My Bookings - E-Sukan</title>
    <style>
        body { font-family: Arial; margin: 0; padding: 20px; background: #f5f5f5; }
        .container { max-width: 1000px; margin: auto; background: white; padding: 25px; border-radius: 10px; }
        h1 { color: #9C27B0; text-align: center; }
        table { width: 100%; border-collapse: collapse; margin: 20px 0; }
        th, td { border: 1px solid #ddd; padding: 10px; text-align: left; }
        th { background: #9C27B0; color: white; }
        .btn-back { display: inline-block; margin-top: 15px; color: #666; text-decoration: none; }
    </style>
</head>
<body>
    <div class="container">
        <h1>📋 My Bookings</h1>
        
        <h2>Facility Bookings</h2>
        <table>
            <tr><th>ID</th><th>Facility</th><th>Date</th><th>Time</th><th>Status</th></tr>
            <tr><td>1</td><td>Badminton Court A</td><td>2024-06-15</td><td>10:00-12:00</td><td>Confirmed</td></tr>
            <tr><td>2</td><td>Futsal Court 1</td><td>2024-06-16</td><td>14:00-16:00</td><td>Pending</td></tr>
        </table>
        
        <h2>Equipment Rentals</h2>
        <table>
            <tr><th>ID</th><th>Equipment</th><th>Date</th><th>Quantity</th><th>Status</th></tr>
            <tr><td>1</td><td>Badminton Racket</td><td>2024-06-15</td><td>2</td><td>Confirmed</td></tr>
        </table>
        
        <a href="index.html" class="btn-back">← Back</a>
    </div>
</body>
</html>