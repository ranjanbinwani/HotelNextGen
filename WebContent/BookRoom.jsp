<%@ include file = "header1.jsp" %>

<h1>You Are Great!</h1>
<% String hotlName = request.getParameter("hotlName");
String partnerName = request.getParameter("partnerName");
%>
<h1 align=center><%= hotlName %></h1>

<div id="bookroom_background"></div>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con =
     DriverManager.getConnection("jdbc:mysql://localhost:3306/rooms", "root", "root");
Statement stmt = con.createStatement();
String sql1 = "select * from hotelrooms where hotelName = '"+hotlName+"'";
ResultSet rslt = stmt.executeQuery(sql1);
%>

<div class="row" style="display: flex; flex-wrap: wrap;">
<%  while (rslt.next()) { %>

<div class="container">
       <div class="col-md-3 col-sm-6" id="pad" style="margin: auto;">
        	<div class="caption" style="border-top: 1px solid #f8f8f8;
	border: 1px solid rgba(0,0,0,0.2); width:300px;">
     <strong>Hotel Name :   </strong>
    <td> <%=rslt.getString("hotelName") %> </td><br>
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
    <a href="ConfirmRoom.jsp?hotlName=<%out.println(rslt.getString("hotelName"));%>&roomNo=<%=rslt.getString("roomNo")%>&partnerName=<%=rslt.getString("partnerName")%>" class="btn btn-primary">Book Now</a>
        		         <hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">	
            </div>  
        </div>
        </div>
        
        <%} %>
        </div>
</body>
</html>