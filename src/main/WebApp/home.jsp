<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Time Table  Management</title>
</head>
<body style="background-color:powderblue; align-items:center">
	<h1 style ="color:red;text-align:center">TIME TABLE MANAGEMENT SYSTEM</h1>
	<div style="align-content: center">
	<div style= "width: 300px;height: 175px;border: 5px solid blue;border-radius:20px;">
    <h3 style="color:green" >Course</h3>
		<ul>
			<li style ="text-decoration-color: red"><a href="addCourse.jsp"> Add Course</a></li>
			<li style ="text-decoration-color: red"><a href="viewCourse.jsp"> View Course</a></li>
			<li style ="text-decoration-color: red"><a href="updateCourse.jsp"> Update Course</a></li>
			<li style ="text-decoration-color: red"><a href="deleteCourse.jsp"> Delete Course</a></li>
		</ul>
	</div>

	<br>
	<br>
	<br>

	<div style= "width: 300px;height: 175px;border: 5px solid blue; border-radius:20px;align-items: center;">
		<h3 style="color:green">Faculty</h3>
		<ul >
			<li style ="text-decoration-color: red"><a href="addFaculty.jsp"> Add Faculty</a></li>
			<li style ="text-decoration-color: red"><a href="viewFaculty.jsp"> View Faculty</a></li>
			<li style ="text-decoration-color: red"><a href="updateFaculty.jsp"> Update Faculty</a></li>
			<li style ="text-decoration-color: red"><a href="deleteFaculty.jsp"> Delete Faculty</a>	</li>
	
		</ul>
	</div>
	
	<br>
	<br>
	<br>

	<div style= "width: 300px;height: 175x;border: 5px solid blue;border-radius:20px;align-items: center;">
		<h3 style="color:green">Batch</h3>
		<ul>
			<li style ="text-decoration-color: red"><a href="addBatch.jsp"> Add Batch</a></li>
			<li style ="text-decoration-color: red"><a href="viewBatch.jsp"> View Batch</a></li>
			<li style ="text-decoration-color: red"><a href="updateBatch.jsp"> Update Batch</a></li>
			<li style ="text-decoration-color: red"><a href="deleteBatch.jsp"> Delete Batch</a></li>
			<li style ="text-decoration-color: red"><a href="assignFaculty.jsp">Assign Faculty</a></li>
		</ul>		
</div>

	</div>
	
	

</body>

</html>