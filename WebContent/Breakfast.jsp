<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Breakfast</title>
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
	
	<form action="profile.jsp" method="get">
	<div align="center">
		<table style="text-align: center;" border=1>
			<tr class="mybox input-field">
				<td><img src="images/b1.jpg"></td>
				<td><embed src="food_desc/b1.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="b1">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/b2.jpg"></td>
				<td><embed src="food_desc/b2.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="b2">Buy</td>
				<%	} %>
			</tr>
			
			<tr class="mybox input-field">
				<td><img src="images/b3.jpg"></td>
				<td><embed src="food_desc/b3.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="b3">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/b4.jpg"></td>
				<td><embed src="food_desc/b4.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="b4">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/b5.jpg"></td>
				<td><embed src="food_desc/b5.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="b5">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/b6.jpg"></td>
				<td><embed src="food_desc/b6.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="b6">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/b7.jpg"></td>
				<td><embed src="food_desc/b7.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="b7">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/b8.jpg"></td>
				<td><embed src="food_desc/b8.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="b8">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/b9.jpg"></td>
				<td><embed src="food_desc/b9.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="b9">Buy</td>
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