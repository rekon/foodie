<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Meals (Veg)</title>
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
				<td><img src="images/v1.jpg"></td>
				<td><embed src="food_desc/v1.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v1">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v2.jpg"></td>
				<td><embed src="food_desc/v2.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v2">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v3.jpg"></td>
				<td><embed src="food_desc/v3.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v3">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v4.jpg"></td>
				<td><embed src="food_desc/v4.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v4">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v5.jpg"></td>
				<td><embed src="food_desc/v5.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v5">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v6.jpg"></td>
				<td><embed src="food_desc/v6.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v6">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v7.jpg"></td>
				<td><embed src="food_desc/v7.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v7">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v8.jpg"></td>
				<td><embed src="food_desc/v8.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v8">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v9.jpg"></td>
				<td><embed src="food_desc/v9.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v9">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v10.jpg"></td>
				<td><embed src="food_desc/v10.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v10">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v11.jpg"></td>
				<td><embed src="food_desc/v11.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v11">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v12.jpg"></td>
				<td><embed src="food_desc/v12.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v12">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v13.jpg"></td>
				<td><embed src="food_desc/v13.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v13">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v14.jpg"></td>
				<td><embed src="food_desc/v14.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v14">Buy</td>
				<%	} %>
			</tr>
			<tr class="mybox input-field">
				<td><img src="images/v15.jpg"></td>
				<td><embed src="food_desc/v15.txt" width="100%"></td>
				<% 	if(hs.getAttribute("current_user")!=null) { %>
						<td><input type="checkbox" name="v15">Buy</td>
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