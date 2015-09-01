<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<script language="javascript">
		function redirect() {
			var x="bill.jsp"
			document.form.action=x;
			document.form.submit();
		}
	
	</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/style.css">
<title>Profile</title>
</head>
<body class="mybox">
<p style="background-color:#FF3333; width:100% ;height:50px; top:-10px ; position:fixed"></p>
	<!-- Dropdown Trigger -->
	<a class='dropdown-button btn pos_left' href='#' data-activates='dropdown1'>Menu</a>

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
	
	<br><br><br><br><br>
	<center>
	
	
	<%! int count; %>
	<%	char flag=0;
		Object sess;
		String usertable=null;
		HttpSession hs=request.getSession();
		if((sess=hs.getAttribute("current_user"))!=null)
			usertable = sess.toString();
		if(usertable==null)	usertable="No User";
		
		if(request.getParameter("user_table")==null&&request.getParameter("del")==null) {
			
			if(request.getParameter("b1")!=null||request.getParameter("b2")!=null||request.getParameter("b3")!=null||request.getParameter("b4")!=null||request.getParameter("b5")!=null||request.getParameter("b6")!=null||request.getParameter("b7")!=null||request.getParameter("b8")!=null||request.getParameter("b9")!=null) {
				flag='b';
			}
			else if(request.getParameter("s1")!=null||request.getParameter("s2")!=null||request.getParameter("s3")!=null||request.getParameter("s4")!=null||request.getParameter("s5")!=null||request.getParameter("s6")!=null||request.getParameter("s7")!=null||request.getParameter("s8")!=null||request.getParameter("s9")!=null) {
				flag='s';
			}
			else if(request.getParameter("v1")!=null||request.getParameter("v2")!=null||request.getParameter("v3")!=null||request.getParameter("v4")!=null||request.getParameter("v5")!=null||request.getParameter("v6")!=null||request.getParameter("v7")!=null||request.getParameter("v8")!=null||request.getParameter("v9")!=null||request.getParameter("v10")!=null||request.getParameter("v11")!=null||request.getParameter("v12")!=null||request.getParameter("v13")!=null||request.getParameter("v14")!=null||request.getParameter("v15")!=null) {
				flag='v';
			}
			else if(request.getParameter("nv1")!=null||request.getParameter("nv2")!=null||request.getParameter("nv3")!=null||request.getParameter("nv4")!=null||request.getParameter("nv5")!=null||request.getParameter("nv6")!=null||request.getParameter("nv7")!=null||request.getParameter("nv8")!=null||request.getParameter("nv9")!=null||request.getParameter("nv10")!=null||request.getParameter("nv11")!=null||request.getParameter("nv12")!=null||request.getParameter("nv13")!=null||request.getParameter("nv14")!=null||request.getParameter("nv15")!=null||request.getParameter("nv16")!=null||request.getParameter("nv17")!=null||request.getParameter("nv18")!=null||request.getParameter("nv19")!=null) {
				flag='n';
			}
			else if(request.getParameter("d1")!=null||request.getParameter("d2")!=null||request.getParameter("d3")!=null||request.getParameter("d4")!=null||request.getParameter("d5")!=null||request.getParameter("d6")!=null||request.getParameter("d7")!=null||request.getParameter("d8")!=null||request.getParameter("d9")!=null||request.getParameter("d10")!=null||request.getParameter("d11")!=null||request.getParameter("d12")!=null||request.getParameter("d13")!=null||request.getParameter("d14")!=null) {
				flag='d';
			}
			else if(hs.getAttribute("current_user")==null) {
				response.sendRedirect("login.jsp");
				return ;
			}
					
		}
		else {
			
			if(request.getParameter("del")==null) {
				usertable=request.getParameter("user_table");
				hs=request.getSession();
				hs.setAttribute("current_user", usertable);
			}
			
		}
		%>
		<h2> <%=usertable.substring(4) %></h2>
		<%
		try {
			
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
				PreparedStatement ps=null;
				ResultSet rs=null;
				usertable=null;
								
				hs=request.getSession();
				if(hs.getAttribute("current_user")!=null)
					usertable=hs.getAttribute("current_user").toString();
				
				if(flag!=0) {
										
					if(flag=='b') {
						String b1,b2,b3,b4,b5,b6,b7,b8,b9;
						String query="insert into "+usertable+" values (?,?,?)";
						if((b1=request.getParameter("b1"))!=null&&b1.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='B1'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((b2=request.getParameter("b2"))!=null&&b2.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='B2'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((b3=request.getParameter("b3"))!=null&&b3.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='B3'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((b4=request.getParameter("b4"))!=null&&b4.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='B4'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((b5=request.getParameter("b5"))!=null&&b5.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='B5'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((b6=request.getParameter("b6"))!=null&&b6.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='B6'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((b7=request.getParameter("b7"))!=null&&b7.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='B7'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((b8=request.getParameter("b8"))!=null&&b8.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='B8'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((b9=request.getParameter("b9"))!=null&&b9.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='B9'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						
					}
					
					
					else if(flag=='s') {
						String s1,s2,s3,s4,s5,s6,s7,s8,s9;
						String query="insert into "+usertable+" values (?,?,?)";
						if((s1=request.getParameter("s1"))!=null&&s1.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='S1'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((s2=request.getParameter("s2"))!=null&&s2.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='S2'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((s3=request.getParameter("s3"))!=null&&s3.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='S3'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((s4=request.getParameter("s4"))!=null&&s4.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='S4'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((s5=request.getParameter("s5"))!=null&&s5.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='S5'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((s6=request.getParameter("s6"))!=null&&s6.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='S6'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((s7=request.getParameter("s7"))!=null&&s7.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='S7'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((s8=request.getParameter("s8"))!=null&&s8.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='S8'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((s9=request.getParameter("s9"))!=null&&s9.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='S9'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						
					}
					
					
					
					else if(flag=='v') {
						String v1,v2,v3,v4,v5,v6,v7,v8,v9,v10,v11,v12,v13,v14,v15;
						String query="insert into "+usertable+" values (?,?,?)";
						if((v1=request.getParameter("v1"))!=null&&v1.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V1'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v2=request.getParameter("v2"))!=null&&v2.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V2'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v3=request.getParameter("v3"))!=null&&v3.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V3'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v4=request.getParameter("v4"))!=null&&v4.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V4'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v5=request.getParameter("v5"))!=null&&v5.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V5'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v6=request.getParameter("v6"))!=null&&v6.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V6'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v7=request.getParameter("v7"))!=null&&v7.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V7'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v8=request.getParameter("v8"))!=null&&v8.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V8'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v9=request.getParameter("v9"))!=null&&v9.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V9'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v10=request.getParameter("v10"))!=null&&v10.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V10'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v11=request.getParameter("v11"))!=null&&v11.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V11'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v12=request.getParameter("v12"))!=null&&v12.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V12'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v13=request.getParameter("v13"))!=null&&v13.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V13'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v14=request.getParameter("v14"))!=null&&v14.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V14'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((v15=request.getParameter("v15"))!=null&&v15.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='V15'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						
					}
					
					
					
					else if(flag=='n') {
						String n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,n17,n18,n19;
						String query="insert into "+usertable+" values (?,?,?)";
						if((n1=request.getParameter("nv1"))!=null&&n1.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV1'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n2=request.getParameter("nv2"))!=null&&n2.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV2'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n3=request.getParameter("nv3"))!=null&&n3.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV3'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n4=request.getParameter("nv4"))!=null&&n4.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV4'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n5=request.getParameter("nv5"))!=null&&n5.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV5'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n6=request.getParameter("nv6"))!=null&&n6.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV6'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n7=request.getParameter("nv7"))!=null&&n7.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV7'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n8=request.getParameter("nv8"))!=null&&n8.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV8'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n9=request.getParameter("nv9"))!=null&&n9.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV9'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n10=request.getParameter("nv10"))!=null&&n10.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV10'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n11=request.getParameter("nv11"))!=null&&n11.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV11'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n12=request.getParameter("nv12"))!=null&&n12.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV12'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n13=request.getParameter("nv13"))!=null&&n13.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV13'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n14=request.getParameter("nv14"))!=null&&n14.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV14'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n15=request.getParameter("nv15"))!=null&&n15.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV15'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n16=request.getParameter("nv16"))!=null&&n16.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV16'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n17=request.getParameter("nv17"))!=null&&n17.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV17'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n18=request.getParameter("nv18"))!=null&&n18.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV18'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setString(1,item);
							ps.setInt(2,cost);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((n19=request.getParameter("nv19"))!=null&&n19.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='NV19'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
					}
					
					
					
					else if(flag=='d') {
						String d1,d2,d3,d4,d5,d6,d7,d8,d9,d10,d11,d12,d13,d14;
						String query="insert into "+usertable+" values (?,?,?)";
						if((d1=request.getParameter("d1"))!=null&&d1.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D1'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d2=request.getParameter("d2"))!=null&&d2.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D2'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d3=request.getParameter("d3"))!=null&&d3.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D3'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d4=request.getParameter("d4"))!=null&&d4.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D4'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d5=request.getParameter("d5"))!=null&&d5.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D5'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d6=request.getParameter("d6"))!=null&&d6.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D6'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d7=request.getParameter("d7"))!=null&&d7.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D7'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d8=request.getParameter("d8"))!=null&&d8.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D8'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d9=request.getParameter("d9"))!=null&&d9.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D9'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d10=request.getParameter("d10"))!=null&&d10.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D10'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d11=request.getParameter("d11"))!=null&&d11.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D11'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d12=request.getParameter("d12"))!=null&&d12.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D12'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d13=request.getParameter("d13"))!=null&&d13.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D13'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						if((d14=request.getParameter("d14"))!=null&&d14.equals("on")) {
							ps=con.prepareStatement("select name, cost from products where id='D14'");
							rs=ps.executeQuery();
							rs.next();
							String item=rs.getString(1);
							int cost=Integer.parseInt(rs.getString(2));
							ps=con.prepareStatement(query);
							count++;
							ps.setInt(1,count);
							ps.setString(2,item);
							ps.setInt(3,cost);
							ps.executeUpdate();
						}
						
					}
			}
			ps=null;
			rs=null;
		%>
	<form name="form" method="post">
	<table  width="80%">
		<tr>
			<th style="text-align: center;"><b>Sl. No.</b></th>
			<th style="text-align: center;"><b>Item</b></th>
			<th style="text-align: center;"><b>Cost</b></th>
			<th style="text-align: center;"><b>Edit Order</b></th>
		</tr>
		<tr>
		<%	String query="select * from "+usertable;
			ps=con.prepareStatement(query);
			rs=ps.executeQuery();
			int counter=0;
			while(rs.next()) { 
				int x=rs.getInt(1);
				counter++; %>
			<td style="text-align: center;"><%=counter %></td>
			<td style="text-align: center;"><%=rs.getString(2) %></td>
			<td style="text-align: center;">Rs. <%=rs.getInt(3) %></td>
			<td style="text-align: center;"><a class="btn waves-ripple z-depth-1 " href='remove.jsp?x=<%=x%>'>Remove</a></td>
		</tr>
	<%		}
		}
		catch(Exception e) {
			System.out.println(e);
			response.sendRedirect("drop.jsp");
		}
	%>
	</table>
	</form>
	</center>
	<a class="pos_right"><input type="button" class="btn waves-ripple z-depth-1" value="Buy now" onclick="redirect()"></a>
	 
	<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  	<script type="text/javascript" src="js/materialize.min.js"></script>
</body>
</html>