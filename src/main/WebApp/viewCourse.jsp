<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIME TABLE MANAGEMENT</title>
</head>
<body style ="background-color:aqua">
<h1 style="color:green">TIME TABLE MANAGEMENT</h1>
<h2 style="color:blue">VIEW COURSE</h2>
<form action="viewCourse" method="get">
<label for="cid" style ="color:blue">COURSE ID:</label><br>
<input type = "text" name = "cid"><br><br>
<input type="submit" value="VIEW COURSE">
</form><br><br>
<h2 style="color:blue">VIEW ALL COURSES</h2>
<form action="viewAllCourse" method="get">
<input type="submit" value="VIEW ALL COURSE">
</form>
</body>
</html>