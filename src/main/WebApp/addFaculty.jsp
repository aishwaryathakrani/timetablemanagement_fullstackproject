<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Faculty</title>
</head>
<body>
<body style ="background-color:aqua">
<h1 style ="color:green"> TIME TABLE MANAGEMENT SYSTEM </h1>
<h3 style = "color:red"> ADD FACULTY </h3>

	<form action="addFaculty" method="get">
	  <label for="fid" style ="color:blue">Faculty ID:</label><br>
	  <input type = "text" name = "fid"><br><br>
	  <label for="fname" style ="color:blue">Faculty Name:</label><br>
	  <input type = "text" name = "fname"><br><br>
	  <label for="specialization" style ="color:blue">Specialization</label><br>
	  <input type = "text" name = "specialization"><br><br>

		<input type="submit" value="Add">
	 </form>
</body>
</html>