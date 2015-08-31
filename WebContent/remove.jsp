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
		HttpSession hs=request.getSession();
		String x;
		if(hs.getAttribute("current_user")!=null&&(x=request.getParameter("x"))!=null) {
			String usertable=hs.getAttribute("current_user").toString();
			int slno=Integer.parseInt(x);
			try {
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "system", "manager");
					
					String query="delete from "+usertable+" where slno="+slno;
					PreparedStatement ps=con.prepareStatement(query);
					ps.executeUpdate();
					
					response.sendRedirect("profile.jsp?del=1");
				}
				catch(Exception e) {
					System.out.println(e);
				}
			}
		
			
	
	%>

</body>
</html>