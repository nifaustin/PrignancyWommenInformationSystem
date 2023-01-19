
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
@WebServlet("/delete")

public class delete extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter x=response.getWriter();
		String del=request.getParameter("del");
		String delete=del;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/women","root","");
			PreparedStatement ps=(PreparedStatement) conn.prepareStatement("DELETE FROM users WHERE userId=?");
			ps.setString(1, delete);
			int y=ps.executeUpdate();
			if(y!=0) {
				response.sendRedirect("display.jsp");
			}
			}
		catch(Exception e) {
			e.printStackTrace();
		}
			
	}
	


}
