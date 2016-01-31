<%-- <%@ page language="java"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>

<body>
 --%>
 <%@page import="com.bean.RegistrarBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Registrar::Home</title>
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


<h1>Welcome Registrar</h1>
<table>
<tr><td>
<table style="width:500px" cellpadding="2px" cellspacing="2px">

<tr><td><a href="addcouncilor.jsp">Add Councillor</a></td></tr>

<tr><td><a href=addcourse.jsp>Add New Course</a></td></tr>

<tr><td><a href="getAllCouncilor.jsp">View/Edit all Councilor Details</a></td></tr>

<tr><td><a href="getallcourse.jsp">View/Edit all Course Details</a></td></tr>

<tr><td><a href="entercouncilorid.jsp">Get/Edit particular councillor detail</a></td></tr>

</table>
</td>
<td>

		<b><%=rb.getRegistrarname() %>'s Profile :</b><br>
		<table cellpadding="4px" cellspacing="3px">
		
		<tr><td>Name</td><td>:<%=rb.getRegistrarname()%></td></tr>
		
		<tr><td>User Name:</td><td>:<%=rb.getRegistrarusername()%></td></tr>
		
		<tr><td>Contact Number</td><td>:+91-<%=rb.getRegistrarnumber()%></td></tr>
		
		</table>



</td>
</tr>
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