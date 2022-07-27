<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIME TABLE MANAGEMENT</title>
</head>
<body style="background-color:aqua">
<h1 style="color:green">TIME TABLE MANAGEMENT</h1>
<h2 style="color:blue">VIEW A BATCH</h2>
<form action="viewBatch" method="get">
<label for="bid" style ="color:blue">Batch ID:</label><br>
<input type = "text" name = "bid"><br><br>
	<input type="submit" value="VIEW BATCH">
</form><br><br>
<h2 style="color:blue">VIEW ALL BATCHES</h2>
<form action="viewAllBatch" method="get">
	<input type="submit" value="VIEW ALL BATCHES">
</form>
</body>
</html>