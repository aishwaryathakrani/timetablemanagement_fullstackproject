<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="com.aish.timetable_management_system.entity.Course"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIME TABLE MANAGEMENT</title>
</head>
<body style ="background-color:aqua">
<h1 style="color:green">TIME TABLE MANAGEMENT</h1>
<h2 style="color:blue">VIEW A COURSE</h2>
	<%
	String mode = (String) request.getAttribute("mode");
	if (mode.equals("single")) 
	{
		boolean flag = (Boolean) request.getAttribute("flag");
		if (flag) 
		{
			Course c = (Course) request.getAttribute("result");
			out.println("<table border=1px><tr><th>ID</th><th>COURSE NAME</th><th>COURSE FEES</th></tr>");
			out.println("<tr><td>" + c.getCid() + "</td><td>" + c.getCoursename()+ "</td><td>" +c.getCoursefees()+ "</td></tr></table>");
		} else 
		{
			out.println("<h1> " + (String) request.getAttribute("result") + "</h1>");
		}
	} 
	else if (mode.equals("list")) 
	{
		ArrayList<Course> clist = (ArrayList<Course>) request.getAttribute("result");
		out.println("<table border=1px><tr><th>ID</th><th>COURSE NAME</th><th>COURSE FEES</th></tr>");
		for(Course c :clist)
		{
			out.println("<tr><td>" + c.getCid() + "</td><td>" + c.getCoursename()+ "</td><td>" +c.getCoursefees()+ "</td></tr>");
		}
		out.println("</table>");
	}
	%>
	<h1>${result}</h1>
</body>
</html>