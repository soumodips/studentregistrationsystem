<%@page import="com.dao.CouncilorDao"%>
<%@page import="com.bean.CouncilorBean"%>
<%@page import="com.bean.CourseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Profile Updated</title>
</head>
<body>
<br><br>

<% if(session!=null){ 
	CouncilorBean cb=(CouncilorBean)session.getAttribute("uname");
	CouncilorDao cd=new CouncilorDao();
	
if(cb!=null){%>
<div id="navigation">

<a>Hi <%=cb.getCouncilorname() %></a>
<a href="councilorhome.jsp">Home</a>

<a href="updateprofile.jsp"> Update profile </a>

<a href="logout.jsp">Log Out!</a>

</div>

<center>

<img alt="STUDENT REGISTRATION SYSTEM" src="logo.png" height="150" width="600"><br><br>

<div id="content">


<h1>Profile updated</h1>


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