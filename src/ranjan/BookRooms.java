package ranjan;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BookRooms")
public class BookRooms extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection con;
	private Statement st;
	
	  @Override
	  public void init() throws ServletException {
	  	try {
	  		Class.forName("com.mysql.cj.jdbc.Driver");
	  		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/rooms", "root", "root");
	  		st = con.createStatement();
	  	} catch (ClassNotFoundException e) {
	  		e.printStackTrace();
	  	} catch (SQLException e) {
	  		e.printStackTrace();
	  	}
	  }
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		ServletContext application = getServletContext();
		String fullName = (String)application.getAttribute("fullName");
		String mobileNo = (String)application.getAttribute("mobileNo");
		String hotelName = (String)application.getAttribute("hotelName");
		String partnerName = (String)application.getAttribute("partnerName");
		String roomNo = (String)application.getAttribute("roomNo");
		String roomSize = (String)application.getAttribute("roomSize");
		String AC = (String)application.getAttribute("AC");
		String TV = (String)application.getAttribute("TV");
		String breakfast = (String)application.getAttribute("breakfast");
		String wifi = (String)application.getAttribute("wifi");
		String price = (String)application.getAttribute("price");
		try {
			String sql = "insert into booked_rooms values('"+fullName+"','"+mobileNo+"','"+partnerName+"','"+hotelName+"','"+roomNo+"','"+roomSize+"','"+AC+"','"+TV+"','"+breakfast+"','"+wifi+"','"+price+"')";
			String sql1 = "delete from hotelrooms where hotelName='"+hotelName+"' and roomNo='"+roomNo+"'";
			st.executeUpdate(sql);
			st.executeUpdate(sql1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
request.getRequestDispatcher("reciept.jsp").include(request, response);
}
	
}
