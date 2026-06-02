<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Cancel Booking - E-Sukan</title>
    <style>
        body { font-family: Arial; margin: 0; padding: 20px; background: #f5f5f5; }
        .container { max-width: 450px; margin: auto; background: white; padding: 25px; border-radius: 10px; text-align: center; }
        h1 { color: #f44336; }
        .warning { font-size: 50px; margin: 20px 0; }
        .btn-delete { background: #f44336; color: white; padding: 10px 25px; border: none; border-radius: 5px; cursor: pointer; }
        .btn-cancel { background: #666; color: white; padding: 10px 25px; text-decoration: none; border-radius: 5px; margin-left: 10px; }
    </style>
</head>
<body>
    <div class="container">
        <h1>🗑️ Cancel Booking</h1>
        <div class="warning">⚠️</div>
        <p>Are you sure?</p>
        <form action="DeleteBookingServlet" method="post" style="display: inline;">
            <button type="submit" class="btn-delete">Yes, Cancel</button>
        </form>
        <a href="view-bookings.jsp" class="btn-cancel">No, Go Back</a>
    </div>
</body>
</html>