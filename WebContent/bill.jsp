<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bill</title>
<link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body class="mybox">
	<center><div style="color: #3949ab"><h2>FOODIE</h2></div>
	<h6>Now order your food online</h6>
	<br>
	<br>
	<br>
	<br>
	
	
	<%
		HttpSession hs=request.getSession();
		if(hs.getAttribute("current_user")!=null) {
			String usertable=hs.getAttribute("current_user").toString();
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
				String query="select * from "+usertable;
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs=ps.executeQuery();
				PreparedStatement ps2=con.prepareStatement("select fname,address from customer where userid = ?");
				ps2.setString(1, usertable.substring(4));
				ResultSet rs2=ps2.executeQuery();
				rs2.next();
				double total=0.0, tax=0.0, net_total=0.0,pay=0.0;
		%>		
				<h4>Invoice</h4></center>
				<br>
				<br>
				<p align="center">
					Thank You <%=rs2.getString(1) %> for ordering!!<br>Your order will be delivered to <%=rs2.getString(2) %> within 60mins :)
				</p>
				<br>
				<table  width="80%">
				<tr>
					<th style="text-align: center;"><b>Sl. No.</b></th>
					<th style="text-align: center;"><b>Item</b></th>
					<th style="text-align: center;"><b>Cost</b></th>
				</tr>
				<tr>
			<%	int count=0;
				while(rs.next()) {
					count++;
					total+=rs.getInt(3); %>
					<td style="text-align: center;"><%=count %></td>
					<td style="text-align: center;"><%=rs.getString(2) %></td>
					<td style="text-align: center;">Rs. <%=rs.getInt(3) %></td>
				</tr>
			<%	}	%>
				<tr>
					<td style="text-align: right;" width="75%">Total</td>
					<td style="text-align: right;">Rs. <%=String.format("%.2f", total) %></td>
				</tr>
				<tr>
				<%	tax=0.145*total;  %>
					<td style="text-align: right;" width="75%">VAT @14.5%</td>
					<td style="text-align: right;"><%=String.format("%.2f", tax) %></td>
				</tr>
				</tr>
				<tr>
				<%	net_total=total+tax;  %>
					<td style="text-align: right;" width="75%">Net Total</td>
					<td style="text-align: right;">Rs. <%=String.format("%.2f",net_total) %></td>
				</tr>
				<tr>
				<%	if(net_total-(int)net_total>0) {
						pay=(int)net_total+1;
					}
					else {
						pay=net_total;
					}	
				%>
					<td style="text-align: right;" width="75%">Please Pay</td>
					<td style="text-align: right;"><b>Rs. <%=String.format("%.2f", pay) %></b></td>
				</tr>
				</table>
			<%	query="drop table "+usertable;
				ps=con.prepareStatement(query);
				ps.executeUpdate();
				hs.removeAttribute("current_user");
				con.close();
			}
			catch(Exception e) {
				System.out.println(e);
			}
		}
			%>
			<a class="waves-effect waves-yellow btn pos_left" href="index.html">VISIT AGAIN</a>
			
		
</body>
</html>