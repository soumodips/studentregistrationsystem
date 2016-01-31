<%@page import="com.bean.RegistrarBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Add Course</title>
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



<form action="AddCourseSrv" method="post">

<h1>Fill in Course details:</h1><br>

<table cellpadding="4px" cellspacing="3px">

<tr><td>Name:</td><td><input type="text" name="coursename"></td></tr>

<tr><td>Duration:</td><td><input type="number" name="courseduration"></td></tr>

<tr><td>Start date:</td><td><input type="date" name="coursestart"></td></tr>

<tr><td>End date:</td><td><input type="date" name="courseend"></td></tr>

<tr><td>Intake:</td><td><input type="number" name="courseintake"></td></tr>

<tr><td>Fee:</td><td><input type="number" name="coursefee"></td></tr>

<tr><td></td><td><input type="submit" value="Add"></td></tr>

</table>

</form>
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