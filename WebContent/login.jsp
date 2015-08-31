<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log in Page</title>
<link rel="stylesheet" href="css/login_style.css">
	<style>
  html { 
		background: url(images/login_bg.jpg) no-repeat center center fixed; 
		-webkit-background-size: cover;
		-moz-background-size: cover;
		-o-background-size: cover;
		background-size: cover;
	}
  </style>
</head>
<body style="font-family: sans-serif,verdana">
	<div class="login-card">
    <h1>Log in</h1><br>
  <form action="login_temp.jsp" method="post">
    <input type="text" name="user" placeholder="Username">
    <input type="password" name="pass" placeholder="Password">
    
    <%	if(request.getParameter("flag")!=null) { 
    		if(request.getParameter("flag").equals("1")) {	%>
    			<font color="red">Fill up all the fields</font>
    	<% } %>
    	<% 	if(request.getParameter("flag").equals("2")) {	%>
    			<font color="red">Invalid username/password</font>
    	<% } 
    	}%>
    <input type="submit" name="login" class="login login-submit" value="Log in">
  </form>
    
  <div class="login-help">
    <a href="register.jsp">New User? Register</a>
  </div>
</div>

<!-- <div id="error"><img src="https://dl.dropboxusercontent.com/u/23299152/Delete-icon.png" /> Your caps-lock is on.</div> -->
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js'></script>
</body>
</html>