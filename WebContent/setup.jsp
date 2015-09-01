<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%
	try {
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
				
		PreparedStatement ps=con.prepareStatement("create table products (id varchar2(40), name varchar2(40), cost number)");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('B1', 'Burrito', '100')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('B2', 'Chicken Burger', '110')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('B3', 'Egg Burger', '90')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('B4', 'Hotdog', '150')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('B5', 'Russian Salad Sandwich', '40')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('B6', 'Veg Sandwich', '50')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('B7', 'Cheese Sandwich', '80')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('B8', 'Chicken Sandwich', '90')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('B9', 'Veg Burger', '70')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('S1', 'Chicken Pakora', '100')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('S2', 'Chicken Fry', '120')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('S3', 'Chicken Lollipop', '120')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('S4', 'Fish Finger', '150')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('S5', 'French Fries', '100')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('S6', 'Mutton Fry', '120')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('S7', 'Paneer Pakora', '80')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('S8', 'Pav Bhaji', '70')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('S9', 'Vegetable Pakora', '80')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V1', 'Aloo Posto', '60')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V2', 'Aloo Dum', '80')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V3', 'Chanar Dalna', '80')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V4', 'Chholar Dal', '80')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V5', 'Dal Makhani', '130')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V6', 'Dhokar Dalna', '120')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V7', 'Palak Paneer', '100')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V8', 'Paneer Butter Masala', '100')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V9', 'Peas Pulao', '100')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V10', 'Plain Rice', '90')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V11', 'Shukto', '80')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V12', 'Aloo Posto Bhaja', '50')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V13', 'Veg Pulao', '100')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V14', 'Vegetable Salad', '60')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('V15', 'Veg Fried Rice', '120')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV1', 'Chicken Biriyani', '240')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV2', 'Mutton Biriyani', '280')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV3', 'Chicken Fried Rice', '195')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV4', 'Mutton Fried Rice', '210')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV5', 'Chicken Kasha', '150')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV6', 'Chicken Curry', '145')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV7', 'Chicken Bharta', '140')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV8', 'Chicken Rezala', '160')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV9', 'Chicken Tandoori', '150')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV10', 'Chicken Tikka', '140')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV11', 'Mutton Kasha', '160')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV12', 'Mutton Korma', '180')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV13', 'Mutton Rogan Josh', '200')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV14', 'Mutton Curry', '150')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV15', 'Rui Posto', '120')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV16', 'Doi Ilish', '160')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV17', 'Fish Rezala', '120')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV18', 'Fish Curry', '100')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('NV19', 'Ilish Paturi', '180')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D1', 'Chhanar Payesh', '160')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D2', 'Chocolate Cake', '120')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D3', 'Gajar Halwa', '140')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D4', 'Gulab Jamun', '60')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D5', 'Jilipi', '50')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D6', 'Kamolavog', '60')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D7', 'Kulfi', '80')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D8', 'Laddu', '40')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D9', 'Misti Doi', '50')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D10', 'Mixed Raita', '100')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D11', 'Rasgulla', '60')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D12', 'Ras Malai', '90')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D13', 'Sandesh', '60')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("insert into products values ('D14', 'Soan Papdi', '60')");
		ps.executeUpdate();
		
		ps=con.prepareStatement("create table customer (fname varchar2(40), lname varchar2(40), userid varchar2(40), pswd varchar2(40), email varchar2(40), phn varchar2(40), address varchar2(40))");
		ps.executeUpdate();
		
		ps.close();
		con.close();
		
	}
	catch(Exception e) {
		System.out.println(e);
		
	}
	finally {
		response.sendRedirect("index.html");
	}
%>

</body>
</html>