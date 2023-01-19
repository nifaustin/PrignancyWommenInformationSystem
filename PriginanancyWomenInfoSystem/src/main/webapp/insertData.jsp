<%@page language="java" contentType="text/html;"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Women</title>
</head>
<body>
<%
if(request.getParameter("signup")!=null){
String userId = null;
String user = request.getParameter("user");
String email = request.getParameter("email");
String loc = request.getParameter("loc");
String pass = request.getParameter("pass");
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/women","root","");
	PreparedStatement ps = conn.prepareStatement("INSERT INTO users VALUES(?,?,?,?,?)");
	ps.setString(1, userId);
	ps.setString(2, user);
	ps.setString(3, email);
	ps.setString(4, loc);
	ps.setString(5, pass);
	
	int setCount = ps.executeUpdate();
	if(setCount > 0){
		out.print("Your Account have Created Successfull!!");

	}
	else{
		out.print("failed");
		
	}
}
catch(Exception e){
	e.printStackTrace();
}
%>

<script> alert("Your Account have Created Successfull!!");window.location.href='index.jsp'; </script>


<%} %>



</body>
</html>