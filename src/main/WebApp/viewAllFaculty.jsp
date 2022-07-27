<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ page import="com.aish.timetable_management_system.entity.Faculty"%>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>TIME TABLE MANAGEMENT</title>
</head>
<body style="background-color:aqua">
<h1 style="color:green">TIME TABLE MANAGEMENT</h1>
<h2 style="color:blue">VIEW  FACULTY</h2>
	<%
	String mode = (String) request.getAttribute("mode");
	if (mode.equals("single")) {
		boolean flag = (Boolean) request.getAttribute("flag");
		if (flag) {
			Faculty f = (Faculty) request.getAttribute("result");
			out.println("<table border=1px><tr><th>ID</th><th>FACULTY NAME</th><th>SPECIALIZATION</th></tr>");
			out.println("<tr><td>" + f.getFid() + "</td><td>" + f.getFname()+ "</td><td>" +f.getSpecialization()+ "</td></tr></table>");
		} else {
			out.println("<h1> " + (String) request.getAttribute("result") + "</h1>");
		}
	} else if (mode.equals("list")) {
		ArrayList<Faculty> flist = (ArrayList<Faculty>) request.getAttribute("result");
		out.println("<table border=1px><tr><th>ID</th><th>FACULTY NAME</th><th>SPECIALIZATION</th></tr>");
		for(Faculty f :flist)
		{
			out.println("<tr><td>" + f.getFid() + "</td><td>" + f.getFname()+ "</td><td>" + f.getSpecialization()+ "</td></tr>");
		}
		out.println("</table>");
	}
	%>
	<h1>${result}</h1>
</body>
</html>