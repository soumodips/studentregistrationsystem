<%@page import="com.bean.RegistrarBean"%>
<%@page import="com.bean.CourseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Course Added</title>
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



<%
CourseBean cb=(CourseBean)session.getAttribute("cb");

if(request.getParameter("x").equals("yes"))
{
	%>
	<h1>Course added successfully</h1>
	
	<p>Course Id is <%=cb.getCourseid()%> for the course <%= cb.getCoursename() %> <br><a href="addcourse.jsp">Want to add more course? Click!</a></p>

<% } else
	{
	%>
	
	<h1>Failed to add course.</h1>
	
<% }%>
<%}else
{
	response.sendRedirect("loginfailed.jsp");
	}}%> 

<br><br><br>
</div>



</center>


<br><br>
</body>


</html>