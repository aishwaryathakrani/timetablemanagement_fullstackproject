<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Batch</title>
</head>
<body style="background-color:aqua">
<h1 style ="color:green"> TIME TABLE MANAGEMENT SYSTEM </h1>
<h3 style = "color:red"> DELETE BATCH </h3>

<form action="deleteBatch" method="get">
<label for="bid" style ="color:blue">Batch ID:</label><br>
<input type = "text" name = "bid"><br><br>
		<input type="submit" value="Delete">
	 </form>
</body>
</html>