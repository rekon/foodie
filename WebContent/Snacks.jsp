<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Snacks & Beverages</title>
	<link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>
 	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body>
	<%	HttpSession hs=request.getSession(); %>
	<% 	if(hs.getAttribute("current_user")!=null) { %>
			<a class="waves-effect waves-yellow btn pos_left" href="profile.jsp">My Profile</a>
	<%	} %>
	<p style="background-color:#FF3333; width:100% ;height:50px; top:-10px ; position:fixed"></p>
	<!-- Dropdown Trigger -->
	<a class='dropdown-button btn pos_right' href='#' data-activates='dropdown1'>Menu</a>

	<!-- Dropdown Structure -->
	<ul id='dropdown1' class='dropdown-content' >
		<li><a href="Breakfast.jsp">Breakfast</a></li>
		<li class="divider"></li>
		<li><a href="Snacks.jsp">Snacks &<br>Beverages</a></li>
		<li class="divider"></li>
		<li><a href="Meals_veg.jsp">Meals (Veg)</a></li>
		<li class="divider"></li>
		<li><a href="Meals_non_veg.jsp">Meals (Non-Veg)</a></li>
		<li class="divider"></li>
		<li><a href="Desserts.jsp">Desserts &<br>Ice-Creams</a></li>
		<li class="divider"></li>
	</ul>
	<br>
	<br>
	<br>
	<form action="profile.jsp">
	<div align="center"  >
		<table style="text-align: center;">
			<tr class="mybox input-field">
				<td><img src="images/s1.jpg"></td>
				<td><embed src="food_desc/s1.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="s1">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/s2.jpg"></td>
				<td><embed src="food_desc/s2.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="s2">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/s3.jpg"></td>
				<td><embed src="food_desc/s3.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="s3">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/s4.jpg"></td>
				<td><embed src="food_desc/s4.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="s4">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/s5.jpg"></td>
				<td><embed src="food_desc/s5.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="s5">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/s6.jpg"></td>
				<td><embed src="food_desc/s6.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="s6">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/s7.jpg"></td>
				<td><embed src="food_desc/s7.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="s7">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/s8.jpg"></td>
				<td><embed src="food_desc/s8.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="s8">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/s9.jpg"></td>
				<td><embed src="food_desc/s9.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="s9">Buy</td>
				<%	} %>
			</tr>
			
		</table>
	</div>
	<br>
	<% 	if(hs.getAttribute("current_user")!=null) { %>
			<p align="center"><input class="btn waves-ripple z-depth-1" type="submit" value="Add"></p>
	<%	} %>
	</form>
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  	<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>