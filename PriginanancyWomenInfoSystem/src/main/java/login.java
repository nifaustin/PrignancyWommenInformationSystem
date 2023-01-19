

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.cj.xdevapi.Statement;

public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter x=response.getWriter();
		String name=request.getParameter("user");
		String password=request.getParameter("pass");
		
		try {
			Connection con=null;
			Statement stmt=null;
			PreparedStatement ps=null;
			ResultSet rs=null;
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/women","root","");
			stmt=(Statement) con.createStatement();
			ps=(PreparedStatement) con.prepareStatement("SELECT * FROM users");
			rs=(ResultSet) ps.executeQuery();
			while(rs.next()) {
				String user1=rs.getString("user");
				String pass1=rs.getString("pass");
				if(name.equals(user1)&& password.equals(pass1)) {
					HttpSession session=request.getSession();
					session.setAttribute("username",name);
					response.sendRedirect("home.jsp");
					
				}
				else
				{
					
					x.print("login failed");
					RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
					rd.include(request, response);
				}
				}
			
		}
	
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

}
