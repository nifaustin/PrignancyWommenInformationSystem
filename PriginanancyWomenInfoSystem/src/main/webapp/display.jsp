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
    <nav>
        <div class="container header">
         <div class="log"> <a href="home.jsp"><img src="image/ww.png" alt="logo">  </a> </div>
          <h2 class="msg">Welcome, <% out.print(session.getAttribute("user")); %></h2>
         <ul>
             <li><a href="home.jsp">Home</a></li>
             <li><a href="display.jsp">Records</a></li>
             <li><a href="index.jsp">Logout</a></li>
         </ul>
        </div>
     </nav>
    <section class="table">
    <div class="container">
        <h2>The Records Of All Created Accounts</h2>
        <hr class="view">
        <table style="width:100%">
            <tr>
                    
                    <th>UserName</th>
                    <th>Email</th>
                    <th>Loction</th>
                    <th>PassWord</th>
                    <th colspan="2">Action</th>


            </tr>
<%

   Class.forName("com.mysql.jdbc.Driver");

   Connection con = DriverManager.getConnection("jdbc:mysql://localhost/women","root","");
   String query = "select * from users";
   Statement st = con.createStatement();

   ResultSet result =  st.executeQuery(query);
   
   while(result.next())
    {
       String userId = result.getString("userId");
%>
            
            
            <tr>
                    
                    <td><%= result.getString("user")%></td>
                    <td><%= result.getString("email")%></td>
                    <td><%= result.getString("loc")%></td>
                    <td><%= result.getString("pass")%></td>
                    <td width="9%"><a href="delete?del=<%= userId %>" onclick="return confirm('Are you sure you want to Delete this Account')"><button class="btns">Delete</button></a></td>
                    <td width="9%"><a href="update.jsp?up=<%= userId %>" onclick="return confirm('Are you sure you want to Update this Data')"><button class="btns1">Update</button></a></td>


            </tr>
<% } %>
        </table>
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
    
</body>
</html>