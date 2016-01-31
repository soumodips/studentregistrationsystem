<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Welcome To Student Registration System</title>
</head>
<body>
<br><br>
<div id="navigation">


<a>Hi, Guest</a>
<a href="index.jsp">Home</a>



</div>

<center>
<img alt="STUDENT REGISTRATION SYSTEM" src="logo.png" height="150" width="600"><br><br>
<div id="content">

<h1>Welcome</h1>

<form action="ValidateSrv" method="post">

<table cellpadding="4px" cellspacing="3px"><tr><td>

UserName:</td><td><input type="text" name="uname"></td></tr> <tr> 

<td>Password:</td><td><input type="password" name="pass"></td></tr>

<tr><td>

Login As:</td><td><select name="loginas"> 

<option value="Registrar">Registrar</option>

<option value="Councilor">Councilor</option>

</select></td></tr>

<tr><td></td><td>

<input type="submit" value="Login">

</td></tr></table>

</form>


<%

String un=request.getParameter("un");
if(un != null){
	
%>

<h3>Invalid Username or Password</h3>

<%} %>

<br><br><br>

</div>



</center>


<br><br>
</body>


</html>