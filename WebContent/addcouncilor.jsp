<%@page import="com.bean.RegistrarBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Add Councilor</title>
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
<br>

<form action="AddCouncilorSrv" method="post">

<h1>Fill in Councillor details:</h1><br>

<table cellpadding="4px" cellspacing="3px">

<tr><td>Name:</td><td><input type="text" name="councilorname"></td></tr>

<tr><td>Address:</td><td><input type="text" name="counciloraddress"></td></tr>

<tr><td>Contact number:</td><td><input type="text" style="width:22px"  value="+91" readonly="readonly"><input type="text" name="councilornumber" maxlength="10"></td></tr>

<tr><td>Email:</td><td><input type="email" name="counciloremail"></td></tr>

<tr><td>Password:</td><td><input type="password" name="councilorpass"></td></tr>

<tr><td></td><td><input type="submit" value="Register"></td></tr>

</table>
</form>

<%}else
{
	response.sendRedirect("loginfailed.jsp");
	}}

String un=request.getParameter("un");
if(un != null){
	
%>

<h3>E-mail already registered!</h3>

<%} %>
<br><br><br>
</div>



</center>


<br><br>
</body>
