<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Student ID</title>
</head>
<body>
<br><br>
<div id="navigation">

<a href="councilorhome.jsp">Home</a>

<a href="logout.jsp">Log Out!</a>

</div>

<center>

<img alt="STUDENT REGISTRATION SYSTEM" src="logo.png" height="150" width="600"><br><br>

<div id="content">

<% if(session!=null){ 
	Object obj=session.getAttribute("uname");
if(obj!=null){%>

<form action="getstudentdetail.jsp" method="post">

<table cellpadding="4px" cellspacing="3px">

<tr><td>Student Id:</td><td><input type="text" name="studentid"></td></tr>

<tr><td></td><td><input type="submit" value="Get details"></td></tr>

<%}else
{
	response.sendRedirect("loginfailed.jsp");

}}%> 
</table>
</form>
<br><br><br>
</div>



</center>


<br><br>
</body>


</html>