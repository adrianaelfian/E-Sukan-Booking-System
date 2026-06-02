<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Facility - E-Sukan</title>
    <style>
        body { font-family: Arial; margin: 0; padding: 20px; background: #f5f5f5; }
        .container { max-width: 500px; margin: auto; background: white; padding: 25px; border-radius: 10px; }
        h1 { color: #2196F3; text-align: center; }
        label { display: block; font-weight: bold; margin-top: 15px; }
        input, select { width: 100%; padding: 8px; margin-top: 5px; border: 1px solid #ddd; border-radius: 5px; }
        button { background: #2196F3; color: white; padding: 10px 20px; border: none; border-radius: 5px; margin-top: 20px; cursor: pointer; }
        .btn-back { display: inline-block; margin-top: 15px; color: #666; text-decoration: none; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🏟️ Book a Facility</h1>
        <form action="BookingServlet" method="post">
            <label>Select Facility:</label>
            <select name="facilityId" required>
                <option value="">-- Select --</option>
                <option value="1">Badminton Court A</option>
                <option value="2">Badminton Court B</option>
                <option value="3">Futsal Court 1</option>
                <option value="4">Basketball Court</option>
            </select>
            <label>Date:</label>
            <input type="date" name="bookingDate" required>
            <label>Start Time:</label>
            <input type="time" name="startTime" required>
            <label>End Time:</label>
            <input type="time" name="endTime" required>
            <button type="submit">Confirm Booking</button>
        </form>
        <a href="index.html" class="btn-back">← Back</a>
    </div>
</body>
</html>