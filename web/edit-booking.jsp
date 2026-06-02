<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Booking - E-Sukan</title>
    <style>
        body { font-family: Arial; margin: 0; padding: 20px; background: #f5f5f5; }
        .container { max-width: 500px; margin: auto; background: white; padding: 25px; border-radius: 10px; }
        h1 { color: #ff9800; text-align: center; }
        label { display: block; font-weight: bold; margin-top: 15px; }
        input, select { width: 100%; padding: 8px; margin-top: 5px; border: 1px solid #ddd; border-radius: 5px; }
        button { background: #ff9800; color: white; padding: 10px 20px; border: none; border-radius: 5px; margin-top: 20px; cursor: pointer; }
        .btn-back { display: inline-block; margin-top: 15px; color: #666; text-decoration: none; }
    </style>
</head>
<body>
    <div class="container">
        <h1>✏️ Edit Booking</h1>
        <form action="EditBookingServlet" method="post">
            <label>Date:</label>
            <input type="date" name="bookingDate" value="2024-06-15">
            <label>Start Time:</label>
            <input type="time" name="startTime" value="10:00">
            <label>End Time:</label>
            <input type="time" name="endTime" value="12:00">
            <button type="submit">Update</button>
        </form>
        <a href="view-bookings.jsp" class="btn-back">← Back</a>
    </div>
</body>
</html>