<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Course</title>
</head>
<body style ="background-color:aqua">
<h1 style ="color:green"> TIME TABLE MANAGEMENT SYSTEM </h1>
<h3 style = "color:red"> ADD COURSE </h3>
	<br>
	<form action="addCourse" method="get">
	  <label for="cid" style ="color:blue">COURSE ID:</label><br>
	  <input type = "text" name = "cid"><br><br>
	  <label for="coursename" style ="color:blue">Course Name:</label><br>
	  <input type = "text" name = "coursename"><br><br>
	  <label for="coursefees" style ="color:blue">Course Fees:</label><br>
	  <input type = "text" name = "coursefees"><br><br>

		<input type="submit" value="Add">
	 </form>
</body>
</html>