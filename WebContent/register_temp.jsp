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
<title>Insert title here</title>
</head>
<body>

<%	String fname=request.getParameter("first_name");
	String lname=request.getParameter("last_name");
	String userid=request.getParameter("username");
	String pswd=request.getParameter("password");
	String email=request.getParameter("email");
	String phn=request.getParameter("phn");
	String address=request.getParameter("address");
	
	if(fname.equals("")||lname.equals("")||userid.equals("")||pswd.equals("")||email.equals("")||phn.equals("")||address.equals("")) {
		response.sendRedirect("register.jsp?flag=1");
		return ;
	}
	
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
		
		PreparedStatement ps=con.prepareStatement("select * from customer where userid=?");
		ps.setString(1, userid);
		ResultSet rs=ps.executeQuery();
		if(rs.next()) {
			response.sendRedirect("register.jsp?flag=2");
			return ;
		}
		
		ps=con.prepareStatement("insert into customer values (?,?,?,?,?,?,?)");
		ps.setString(1,fname);
		ps.setString(2,lname);
		ps.setString(3,userid);
		ps.setString(4,pswd);
		ps.setString(5,email);
		ps.setString(6,phn);
		ps.setString(7,address);
		ps.executeUpdate();
		
		response.sendRedirect("index.html");
		con.close();
		}catch(Exception e){
			System.out.println(e);
		}
	
%>
</body>
</html>