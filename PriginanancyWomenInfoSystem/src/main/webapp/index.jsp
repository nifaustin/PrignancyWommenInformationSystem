<%@page language="java" contentType="text/html;"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Preginancy Women</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <section class="index-container">
        <h2>User Login Form</h2>
        <div class="container form-container">

            <form action="" method="post">
                <label for="">UserName</label>
                <input type="text" name="user" placeholder="UserName">
                <label for="">PassWord</label>
                <input type="password" name="pass" placeholder="PassWord">
                <button type="submit" name="loginbtn" class="btn"> SignIn </button>
                <p>
                    <a href="signup.jsp" class="btn-primary">Sign Up</a>
                    <a href="#" class="btn-primary">Forgot PassWord</a>
                    <a href="admin.jsp" class="btn-primary">Admin</a>
                </p>
            </form>

        </div>

    </section>
    
</body>
</html>
<%
if(request.getParameter("loginbtn")!=null){
String uname=request.getParameter("user");
String pass=request.getParameter("pass");
try {
	
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/women","root","");
	Statement stmt = con.createStatement();
	PreparedStatement ps = con.prepareStatement("SELECT * FROM users");
	ResultSet rs = ps.executeQuery();
	while(rs.next()) {
		String user1=rs.getString("user");
		String pass1=rs.getString("pass");
		if(uname.equals(user1)&& pass.equals(pass1)) {
			session.setAttribute("user",uname);
			response.sendRedirect("home.jsp");
			
		}
	

		}
	out.print("<script>alert('Invalid PassWord')</script>");
	

}

catch(Exception e) {
	out.print(e);
}
}
%>














