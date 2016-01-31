<%@page import="com.dao.CouncilorDao"%>
<%@page import="com.bean.CouncilorBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Councilor::Home</title>
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


<h1>Welcome Councilor</h1>
<table>
<tr><td>


<table style="width:500px" cellpadding="2px" cellspacing="2px">

<tr><td><a href="addstudent.jsp">Add Students</a></td></tr>

<tr><td><a href="getallstudent.jsp">View/Edit All Students' Details</a></td></tr>

<tr><td><a href="enterstudentid.jsp">View/Edit Particular Student Details</a></td></tr>

</table>


</td><td></td><td>
</td>
<td></td><td></td>
<td>
		<b><%=cb.getCouncilorname()%>'s Profile :</b><br>
		<table cellpadding="4px" cellspacing="3px">
		
		<tr><td>Id</td><td>:<%=cb.getCouncilorid() %></td></tr>
		
		<tr><td>Name:</td><td>:<%=cb.getCouncilorname()%></td></tr>
		
		<tr><td>Address</td><td>:<%=cb.getCounciloraddress()%></td></tr>
		
		<tr><td>Contact Number</td><td>:+91-<%=cb.getCouncilornumber()%></td></tr>
		
		<tr><td>Email</td><td>:<%=cb.getCounciloremail()%></td></tr>
		
		<tr><td>Registered Student count</td><td>:<%=cd.getCount(cb.getCouncilorid())%></td></tr>
		
		
		</table>


</td>
</tr>
</table>

<%}else
{
	response.sendRedirect("loginfailed.jsp");
	}}
	%> 


<br><br><br>

</div>



</center>


<br><br>

</body>


</html>