<%@page import="com.dao.RegistrarDao"%>
<%@page import="com.bean.RegistrarBean"%>
<%@page import="com.bean.CouncilorBean"%>
<%@page import="com.dao.CouncilorDao"%>
<%@page import="com.bean.CourseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Registrar::Update</title>
</head>
<body>
<br><br>

<% if(session!=null){ 
	RegistrarBean rb=(RegistrarBean)session.getAttribute("uname");
	RegistrarDao rd=new RegistrarDao();
	
if(rb!=null){%>
<div id="navigation">

<a>Hi <%=rb.getRegistrarname() %></a>
<a href="registrarhome.jsp">Home</a>

<a href="updateregistrarprofile.jsp"> Update profile </a>

<a href="logout.jsp">Log Out!</a>

</div>

<center>

<img alt="STUDENT REGISTRATION SYSTEM" src="logo.png" height="150" width="600"><br><br>

<div id="content">


<h1>Update Registrar Details:</h1>

<form action="UpdateRegistrarProfileSrv" method="post">


<table cellpadding="4px" cellspacing="3px">



<tr><td>Name:</td><td><input type="text" name="registrarname" value=<%=rb.getRegistrarname()%>></td></tr>


<tr><td>Contact Number:</td><td><input type="text" style="width:22px" value="+91" readonly="readonly"><input type="text" name="registrarnumber" maxlength="10" value=<%=rb.getRegistrarnumber()%>></td></tr>

<tr><td>Username:</td><td><input type="text" name="registrarusername" value=<%=rb.getRegistrarusername()%> readonly="readonly"></td></tr>

<tr><td>Password:</td><td><input type="password" name="registrarpassword" value=<%=rb.getRegistrarpassword()%> ></td></tr>



<tr><td></td><td><input type="submit" value="Update"></td></tr>

</table>

<br><br><br>



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