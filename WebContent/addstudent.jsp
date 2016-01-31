<%@page import="com.dao.CouncilorDao"%>
<%@page import="com.bean.CouncilorBean"%>
<%@page import="com.bean.CourseBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.dao.CourseDao"%>
<%@page import="com.bean.CourseBean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Add Student</title>
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
<br>


<h1>Fill in Student details:</h1>

<form action="AddStudentSrv" method="post">

<table cellpadding="4px" cellspacing="3px">
<tr>
<td>Name:</td><td><input type="text" name="studentname"></td></tr>
<tr>
<td>Gender:</td><td><select name="studentgender">
<option value="male">male</option>
<option value="female">female</option>
</select></td></tr>
<tr>
<td>D.O.B:</td><td><input type="date" name="studentdob"></td></tr>

<tr>
<td>Address:</td><td><input type="text" name="studentaddress"></td></tr>

<tr><td>Contact number:</td><td><input type="text" style="width:22px" value="+91" readonly="readonly"><input type="text" name="studentnumber" maxlength="10"></td></tr>

<tr><td>Email:</td><td><input type="email" name="studentemail"></td></tr>

<tr><td>Course:</td><td><select name="studentcourse">

<% CourseDao crsdao=new CourseDao();
ArrayList<CourseBean> als=crsdao.getAllCourse();
 for(CourseBean crsbean:als)
{
%>


<option value="<%=crsbean.getCoursename() %>"><%=crsbean.getCoursename() %></option>

<% }%>

</select></td></tr>

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


</html>