<%@ include file = "header1.jsp" %>
<h1>Hello</h1>
<% 
String hotlName = request.getParameter("hotlName");
String partnerName = request.getParameter("partnerName");
String roomNo = request.getParameter("roomNo");
String fullName = (String)session.getAttribute("fullName");
String mobileNo = (String)session.getAttribute("mobileNo");
application.setAttribute("hotelName", hotlName);
application.setAttribute("partnerName", partnerName);
application.setAttribute("roomNo", roomNo);
application.setAttribute("fullName", fullName);
application.setAttribute("mobileNo", mobileNo);
%>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con =
     DriverManager.getConnection("jdbc:mysql://localhost:3306/rooms", "root", "root");
Statement stmt = con.createStatement();
String sql1 = "select * from hotelrooms where hotelName = '"+hotlName+"' and roomNo = '"+roomNo+"'";
ResultSet rslt = stmt.executeQuery(sql1);
%>

<%  while (rslt.next()) { %>

<div class="container">
       <div class="col-md-3 col-sm-6" id="pad" style="margin: auto;">
        	<div class="caption" style="border-top: 1px solid #f8f8f8;
	border: 1px solid rgba(0,0,0,0.2); width:300px;">
	<hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">	
	<strong>Your Name :   </strong>
    <td> <%=fullName %> </td><br>
    <strong>Your Contact Number :   </strong>
    <td> <%=mobileNo%>  </td><br>
    <hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:300px;">	
     <strong>Hotel Name :   </strong>
    <td> <%=rslt.getString("hotelName") %> </td><br>
     <strong>Owner Name :   </strong>
    <td> <%= partnerName %> </td><br>
    <strong>RoomNo :   </strong>
    <td> <%=rslt.getString("roomNo") %>  </td><br>
    <strong>Room Size :   </strong>
    <td> <%=rslt.getString("roomSize") %> </td><br>
    <strong>Type :   </strong>
    <td> <%=rslt.getString("AC") %> </td><br>
    <strong>TV :   </strong>
    <td> <%= rslt.getString("TV") %>  </td><br>
    <strong>Complimentary Breakfast :   </strong>
    <td> <%=rslt.getString("breakfast") %>  </td><br>
    <strong>wifi :  </strong>
    <td> <%=rslt.getString("wifi") %>  </td><br>
    <strong>Price :  </strong>
    <td> <%=rslt.getString("price") %>  </td><br>
    
    <%
    application.setAttribute("roomSize", rslt.getString("roomSize"));
    application.setAttribute("AC", rslt.getString("AC"));
    application.setAttribute("TV", rslt.getString("TV"));
    application.setAttribute("breakfast", rslt.getString("breakfast"));
    application.setAttribute("wifi", rslt.getString("wifi"));
    application.setAttribute("price", rslt.getString("price"));
    %>
    
    
    <a href="BookRooms"class="btn btn-success">Confirm Booking</a>
    
    
 <hr style="border-top: 1px solid #f8f8f8;border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">	
            </div>  
        </div>
        </div>
        
        <%} %>
       

</body>
</html>