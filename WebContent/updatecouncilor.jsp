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
	

<title>Update Councilor</title>
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




<%

String id=request.getParameter("id");


int cid=Integer.parseInt(id.trim());

CouncilorDao cd=new CouncilorDao();

CouncilorBean cb=cd.getCouncilor(cid);


if(cb !=null){
%>

<h1>Update Councilor Details:</h1>

<form action="UpdateCouncilorSrv" method="post">


<table cellpadding="4px" cellspacing="3px">

<tr><td>Id:</td><td><input type="text" name="councilorid" value=<%=cb.getCouncilorid() %> readonly="readonly"></td></tr>

<tr><td>Name:</td><td><input type="text" name="councilorname" value=<%=cb.getCouncilorname()%>></td></tr>

<tr><td>Address:</td><td><input type="text" name="counciloraddress" value=<%=cb.getCounciloraddress()%>></td></tr>

<tr><td>Contact Number:</td><td><input type="text" style="width:22px" value="+91" readonly="readonly"><input type="text" name="councilornumber" maxlength="10" value=<%=cb.getCouncilornumber()%>></td></tr>

<tr><td>Email:</td><td><input type="email" name="counciloremail" value=<%=cb.getCounciloremail()%>></td></tr>

<tr><td>Password:</td><td><input type="password" name="councilorpass" value=<%=cb.getCouncilorpass()%>></td></tr>

<tr><td>Registered Student count:</td><td><input type="text" name="studentcount" value=<%=cd.getCount(cb.getCouncilorid())%> readonly="readonly"></td></tr>

<tr><td></td><td><input type="submit" value="Update"></td></tr>

</table>

<br><br><br>



</form>



<%}
%>
<%
}else
{
	response.sendRedirect("loginfailed.jsp");
	}}%> 

<br><br><br>
</div>



</center>


<br><br>
</body>


</html>