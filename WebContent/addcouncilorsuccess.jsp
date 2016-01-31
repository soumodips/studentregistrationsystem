<%@page import="com.bean.RegistrarBean"%>
<%@page import="com.bean.CouncilorBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Councilor Added</title>
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


<h1>Councilor added succesfully</h1>

<%CouncilorBean cb=(CouncilorBean)session.getAttribute("cb"); 
%>

<p>Username for <%=cb.getCouncilorname() %> is <%=cb.getCounciloremail() %>  password is  <%=cb.getCouncilorpass() %> and councilor id is <%=cb.getCouncilorid() %>.</p>

<a href="addcouncilor.jsp">Add more councilors? Click!</a>

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