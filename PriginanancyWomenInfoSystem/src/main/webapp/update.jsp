<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <nav>
        <div class="container header">
         <div class="log"> <a href="home.jsp"><img src="image/ww.png" alt="logo">  </a> </div>
         <ul>
             <li><a href="home.jsp">Home</a></li>
             <li><a href="display.jsp">UserDashBoard</a></li>
             <li><a href="index.jsp">Logout</a></li>
         </ul>
        </div>
     </nav>
    <section class="index-container">
        <h2>Update Form</h2>
        <div class="container form-container">
<form action="" method="post">
<% 
String up=request.getParameter("up");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/women","root","");
Statement stm=conn.createStatement();
String sql="select * from users where userId='"+up+"'";
ResultSet rs=stm.executeQuery(sql);
while(rs.next()){
%>
                <label for="">UserName</label>
                <input type="text" name="username" placeholder="username" value="<%=rs.getString("user") %>">
                <label for="">Email</label>
                <input type="email" name="email" placeholder="Email" value="<%=rs.getString("email") %>">
                <label for="">Location</label>
                <input type="text" name="loc" placeholder="Location" value="<%=rs.getString("loc") %>">
                <label for="">PassWord</label>
                <input type="password" name="pass" placeholder="PassWord" value="<%=rs.getString("pass") %>">
                 <%} %>
                <button type="submit" name="signup" class="btn">Save UpDate</button>
               
            </form>
        </div>

    </section>
        <section class="footer">
        <div class="container footer-el">
            <div class="right-footer">
                <h3>Address</h3>
                <p>Rwanda</p>
                <p>Kn-540</p>
            </div>
            <div class="imgz">
                <a href="home.html"><img src="image/log2.png" alt="logo">  </a> 
            </div>
            <div class="left-footer">
                <h2>Links</h2>
            <div class="links">
                <a href="home.jsp">Home</a>
                <a href="display.jsp">UserDashBoard</a>
                <a href="index.jsp">Logout</a>
            </div>
            
            </div>
        </div>
        <p>&copy;copy writed by Group II</p>
    </section>
            <%
            String updat=request.getParameter("userId");
            String use=request.getParameter("username");
            String emaill=request.getParameter("email");
            String location=request.getParameter("loc");
            String password=request.getParameter("pass");
            if(use!=null && emaill!=null &&location!=null &&password!=null){
            	
            	try{
            		Class.forName("com.mysql.jdbc.Driver");
            		Connection con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/women","root","");
            		PreparedStatement ps=con.prepareStatement("update users set user=?,email=?,loc=?,pass=? where userId=?");
            		ps.setString(1, use);
            		ps.setString(2, emaill);
            		ps.setString(3, location);
            		ps.setString(4, password);
            		ps.setString(5, up);
            		int y=ps.executeUpdate();
            		if(y==1){
            			response.sendRedirect("display.jsp");
            		}
            		
            	}
            	catch(Exception e){
            		e.printStackTrace();
            	}
            }
            
            %>
            
            
</body>
</html>