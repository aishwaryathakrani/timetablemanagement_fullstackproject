<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.aish.timetable_management_system.entity.Batch"%>
<%@ page import="com.aish.timetable_management_system.entity.Faculty"%>

<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ASSIGN FACULTY</title>
</head>
<body style="background-color:aqua">
<h1 style= "color:green">TIME TABLE MANAGEMENT SYSTEM</h1>
<h3 style ="color:red">ASSIGN FACULTY</h3>
	<form action="assignFaculty" method="get">
	<label for="bid" style ="color:blue">Batch ID:</label><br>
	<input type = "text" name = "bid"><br><br>
	<label for="fid" style ="color:blue">Faculty ID:</label><br>
	<input type = "text" name = "fid"><br><br>
    
		<input type="submit" value="Assign">
	 </form>
</body>
</html>