<%@page import="com.bean.RegistrarBean"%>
<%@page import="com.bean.CourseBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.CourseDao"%>
<%@page import="com.bean.CourseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Course List</title>
</head>
<body>
<br><br>
<% if(session!=null){ 
	RegistrarBean rb =(RegistrarBean)session.getAttribute("uname");
if(rb!=null){%>

<div id="navigation">
<a>Hi <%=rb.getRegistrarname() %></a>
<a href="registrarhome.jsp">Home</a>

<a href="updateregistrarprofile.jsp">Update profile</a>

<a href="logout.jsp">Log Out!</a>

</div>

<center>

<img alt="STUDENT REGISTRATION SYSTEM" src="logo.png" height="150" width="600"><br><br>

<div id="content">

	

		
		<h1 align="center">Registered courses:</h1>

		<%CourseDao cd=new CourseDao();
		ArrayList<CourseBean> als=cd.getAllCourse();
		%>

		<table border="1" cellpadding="1" cellspacing="1"  align="center">

		<tr><th>ID</th><th>Name</th><th>Duration</th><th>Start date</th><th>End date</th><th>Intake</th><th>Seat Available</th><th>Fee</th><th>Edit</th></tr>

		<%for(CourseBean cb: als){  %>

		<tr><td><%= cb.getCourseid()%></td><td><%= cb.getCoursename()%></td><td><%= cb.getCourseduration() %></td>

		<td><%= cb.getCoursestart()%> </td><td><%= cb.getCourseend() %></td><td><%= cb.getCourseintake()%> </td><td><%= cb.getSeatavailable()%></td><td><%= cb.getCoursefee() %></td><td><a href="updatecourse.jsp?id=<%=cb.getCourseid() %> ">Edit</a></td></tr>
		
		<%} %>

		</table>

		<%} else {
		
		
		response.sendRedirect("invalidcid.jsp");
		
		}
	}%>
	
	
	<br><br><br>
</div>



</center>


<br><br>
</body>


</html>