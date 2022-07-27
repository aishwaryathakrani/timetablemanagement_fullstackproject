<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Batch</title>
</head>
<body style="background-color:aqua">
<h1 style ="color:green"> TIME TABLE MANAGEMENT SYSTEM </h1>
<h3 style = "color:red"> UPDATE BATCH </h3>
	<form action="updateBatch" method="get">
	  <label for="bid" style ="color:blue">Batch ID:</label><br>
	  <input type = "text" name = "bid"><br><br>
	  <label for="size" style ="color:blue">Batch Size:</label><br>
	  <input type = "text" name = "size"><br><br>
	  <label for="cid" style ="color:blue">Course ID:</label><br>
	  <input type = "text" name = "cid"><br><br>
	  <input type="submit" value="UPDATE">
	 </form>
</body>

</html>