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
<h2 style="color:blue">VIEW FACULTY</h2>
<form action="viewFaculty" method="get">
<label for="fid" style ="color:blue">Faculty ID:</label><br>
<input type = "text" name = "fid"><br><br>
<input type="submit" value="VIEW FACULTY">
</form><br><br>
<h2 style="color:blue">VIEW ALL FACULTIES</h2>
<form action="viewAllFaculty" method="get">
<input type="submit" value="VIEW ALL FACULTIES">
</form>
</body>
</html>