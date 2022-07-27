<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Course</title>
</head>
<body>
<h1 style ="color:green"> TIME TABLE MANAGEMENT SYSTEM </h1>

<h3 style ="color:red"> DELETE COURSE</h3>
<form action="deleteCourse" method="get">
label for="cid" style ="color:blue">COURSE ID:</label><br>
<input type = "text" name = "cid"><br><br>

<input type="submit" value="Delete">
	 </form>
</body>
</html>