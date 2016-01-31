<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
history.pushState(null, null, 'logput.jsp');
window.addEventListener('popstate', function(event)
{
	history.pushState(null, null, 'logout.jsp');
	});
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
<link rel="stylesheet" href="main.css" type="text/css" />
	

<title>Logged Out</title>
</head>
<body>
<br><br>
<div id="navigation">



<a href="index.jsp">Log In!</a>

</div>

<center>

<img alt="STUDENT REGISTRATION SYSTEM" src="logo.png" height="150" width="600"><br><br>

<div id="content">


<% session.removeAttribute("uname");
session.invalidate();%>

<h1>You are successfully Logged out!!</h1>


<br><br><br>

</div>



</center>


<br><br>
</body>


</html>