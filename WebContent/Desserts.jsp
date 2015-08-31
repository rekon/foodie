<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Desserts & Ice-Creams</title>
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
	<div align="center" >
		<table style="text-align: center;" border=1>
			<tr class="mybox input-field">
				<td><img src="images/d1.jpg"></td>
				<td><embed src="food_desc/d1.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d1">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d2.jpg"></td>
				<td><embed src="food_desc/d2.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d2">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d3.jpg"></td>
				<td><embed src="food_desc/d3.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d3">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d4.jpg"></td>
				<td><embed src="food_desc/d4.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d4">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d5.jpg"></td>
				<td><embed src="food_desc/d5.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d5">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d6.jpg"></td>
				<td><embed src="food_desc/d6.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d6">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d7.jpg"></td>
				<td><embed src="food_desc/d7.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d7">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d8.jpg"></td>
				<td><embed src="food_desc/d8.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d8">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d9.jpg"></td>
				<td><embed src="food_desc/d9.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d9">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d10.jpg"></td>
				<td><embed src="food_desc/d10.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d10">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d11.jpg"></td>
				<td><embed src="food_desc/d11.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d11">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d12.jpg"></td>
				<td><embed src="food_desc/d12.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d12">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d13.jpg"></td>
				<td><embed src="food_desc/d13.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d13">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/d14.jpg"></td>
				<td><embed src="food_desc/d14.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="d14">Buy</td>
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