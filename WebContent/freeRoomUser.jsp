<%@ include file = "header1.jsp" %>
<div class="jumbotron"></div>

<h1><%=request.getParameter("hotelName") %></h1>
<h1><%=request.getParameter("roomNo") %></h1>

<%
String hotelName = request.getParameter("hotelName");
String roomNo = request.getParameter("roomNo");
%>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con =
     DriverManager.getConnection("jdbc:mysql://localhost:3306/rooms", "root", "root");
Statement stmt = con.createStatement();
String sql = "select * from booked_rooms where hotelName= '"+hotelName+"' and roomNo= '"+roomNo+"'";
ResultSet rslt = stmt.executeQuery(sql);
  while (rslt.next()) { 
	String partnerName = rslt.getString("partnerName");
	String roomSize = rslt.getString("roomSize");
	String AC = rslt.getString("AC");
	String TV = rslt.getString("TV");
	String breakfast = rslt.getString("breakfast");
	String wifi = rslt.getString("wifi");
	String price = rslt.getString("price");
	Statement stmt1 = con.createStatement();
	Statement stmt2 = con.createStatement();
	 String sql1 = "insert into hotelrooms values('"+partnerName+"','"+hotelName+"','"+roomNo+"','"+roomSize+"','"+AC+"','"+TV+"','"+breakfast+"','"+wifi+"','"+price+"')";
	  String sql2 = "delete from booked_rooms where hotelName='"+hotelName+"' and roomNo='"+roomNo+"'";
	  stmt1.executeUpdate(sql1);
	  stmt2.executeUpdate(sql2);
}
 

%>
<h2>Room Number: <%= roomNo %> of <%= hotelName %> is Now Free and is Available On the Website</h2>


<%@ include file = "footer.jsp" %>