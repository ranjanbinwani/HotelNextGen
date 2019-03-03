package ranjan;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/AddRoom")
public class AddRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Statement st;
	private Connection con;
       
   @Override
public void init() throws ServletException {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rooms", "root", "root");
		st = con.createStatement();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String partnerName= (String)session.getAttribute("partnerName");
		String hotelName= request.getParameter("hotelName");
		System.out.println(hotelName);
		String roomNo = request.getParameter("roomNo");
		String roomSize = request.getParameter("roomSize");
		String AC = request.getParameter("roomType");
		String TV = request.getParameter("tv");
		String breakfast = request.getParameter("breakfast");
		String wifi = request.getParameter("wifi");
		String price = request.getParameter("price");
		String sql = "insert into hotelrooms values('"+partnerName+"','"+hotelName+"','"+roomNo+"','"+roomSize+"','"+AC+"','"+TV+"','"+breakfast+"','"+wifi+"','"+price+"')";
		try {
			st.executeUpdate(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("PartnerHome.jsp").forward(request, response);;
	}
	
	@Override
	public void destroy() {
		
		try {
			con.close();
			st.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
