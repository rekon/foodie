<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>
	<link type="text/css" rel="stylesheet" href="css/style.css">
<title>Registration Page</title>
</head>
<body>
		<div class="row">
  <form name="regform" class="col s12" align=center action="register_temp.jsp" method="post">
    <div class="row">
      
	  <div class="input-field col s6">
        <input name="first_name" type="text" >
        <label for="first_name">First Name</label>
      </div>
	    
      <div class="input-field col s6">
        <input name="last_name" type="text" >
        <label for="last_name">Last Name</label>
      </div>
    
	</div>
	
	
    <div class="row">
    
		<div class="input-field col s12">
			<input name="username" type="text" >
			<label for="username">Username</label>
		</div>
	</div>
    
	
	<div class="row">
      <div class="input-field col s12">
        <input name="password" type="password" >
        <label for="password">Password</label>
      </div>
    </div>
    
	
	<div class="row">
      <div class="input-field col s12">
        <input name="email" type="email" >
        <label for="email">Email</label>
      </div>
    </div>
    
    <div class="row">
      <div class="input-field col s12">
        <input name="phn" type="text" >
        <label for="phn">Phone Number</label>
      </div>
    </div>
    
    <div class="row">
      <div class="input-field col s12">
        <input name="address" type="text" >
        <label for="address">Delivery Address</label>
      </div>
    </div>
	
	<%	if(request.getParameter("flag")!=null) {
			if(request.getParameter("flag").equals("1")) {	%>
			<font color="red">Fill up all the fields</font>
		<% } %>
		<% 	if(request.getParameter("flag").equals("2")) {	%>
    			<font color="red">Username already exists.<br/>Please select a different username.</font>
    	<% } 
    	}%>
    <div>
	<input type="submit" class="btn waves-ripple z-depth-1" value="Register">
	</div>
  </form>
</div>
<!-- jQuery is required by Materialize to function -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>