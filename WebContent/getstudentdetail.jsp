<%@page import="com.dao.CouncilorDao"%>
<%@page import="com.bean.CouncilorBean"%>
<%@page import="com.bean.StudentBean"%>
<%@page import="com.dao.StudentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Student Details</title>
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


<%String sid=request.getParameter("studentid");
int id=Integer.parseInt(sid.trim());
StudentDao dao=new StudentDao();
StudentBean sb=dao.getStudent(id);
if(sb!=null){ 
%>

<table cellpadding="1" cellspacing="5" align="center">

<tr><th>ID</th><th>Name</th><th>Gender</th><th>D.O.B</th><th>Address</th><th>Number</th><th>Email</th><th>Course</th></tr>

<tr><td><%= sb.getStudentid()%></td><td><%= sb.getStudentname()%></td><td><%= sb.getStudentgender()%></td>

<td><%= sb.getStudentdob()%></td><td><%= sb.getStudentaddress() %></td><td><%= sb.getStudentnumber()%></td><td><%= sb.getStudentemail()%></td><td><%= sb.getStudentcourse()%></td><td><a href="updatestudent.jsp?id=<%=sb.getStudentid() %>">Edit</a></td></tr>

</table>

<%} else{%>
<%response.sendRedirect("invalidid.jsp") ;%>
<%}%>
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