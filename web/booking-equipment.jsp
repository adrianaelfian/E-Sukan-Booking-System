<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Equipment - E-Sukan</title>
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
        <h1>🏸 Book Equipment</h1>
        <form action="BookingServlet" method="post">
            <label>Select Equipment:</label>
            <select name="equipmentId" required>
                <option value="">-- Select --</option>
                <option value="1">Badminton Racket</option>
                <option value="2">Shuttlecock (Tube)</option>
                <option value="3">Futsal Ball</option>
                <option value="4">Basketball</option>
            </select>
            <label>Quantity:</label>
            <input type="number" name="quantity" min="1" max="10" value="1">
            <label>Rental Date:</label>
            <input type="date" name="rentalDate" required>
            <button type="submit">Confirm Rental</button>
        </form>
        <a href="index.html" class="btn-back">← Back</a>
    </div>
</body>
</html>