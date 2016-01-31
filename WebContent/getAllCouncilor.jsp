<%@page import="com.bean.RegistrarBean"%>
<%@page import="com.bean.CouncilorBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.CouncilorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Registered Councilors</title>
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



<h1 align="center">Registered councilors:</h1>

<%CouncilorDao cd=new CouncilorDao();
ArrayList<CouncilorBean> als=cd.getAllCouncilor();
%>

<table border="1" cellpadding="1" cellspacing="1" align="center" >

<tr><th>ID</th><th>Name</th><th>Address</th><th>Contact number</th><th>Email</th><th>Password</th><th>Students Registered</th><th>Edit</th></tr>

<%for(CouncilorBean cb: als){  %>

<tr><td><%= cb.getCouncilorid()%></td><td><%= cb.getCouncilorname()%></td><td><%= cb.getCounciloraddress()%></td>

<td><%= cb.getCouncilornumber()%></td><td><%= cb.getCounciloremail()%></td><td><%= cb.getCouncilorpass()%></td><td><%=cd.getCount(cb.getCouncilorid())%></td><td><a href="updatecouncilor.jsp?id=<%=cb.getCouncilorid() %>">Edit</a></td></tr>

<%} %>

</table>

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