
<%@ include file = "header1.jsp" %>

<header class="jumbotron">
	
   <div id="search_background"></div>
   
</header>


<div class="row" align="center" style="padding: 50px auto;">
	<div id="box" class="col-lg-4 col-sm-6">
		<img src="icons/hotel.svg" width="60px" height="60px">
	<div><p><strong>LOWEST PRICE GUARNTEEE</strong><br> <hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">
<p>Find a better price on any online travel site, we refund you double the difference amount!</p></div>
	
</div>


<div id="box" class="col-lg-4 col-sm-6">
	<img src="icons/hotel.svg" width="60px" height="60px">
	<div><p><strong>TRUSTED BY OVER 8M+ HAPPY TRAVELLERS</strong> <br><hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">
Book with one of most trusted travel portals in India</p></div>
</div>



</div>

<div class="row" align="center" style="padding: 50px auto;">
<div id="box" class="col-lg-4 col-sm-6">
	<img src="icons/hotel.svg" width="60px" height="60px">
	<div><p><strong>750000+ VERIFIED TRAVELER REVIEWS</strong><br> <hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">
Find the hotel that best suits your needs</p></div>
</div>
<div id="box" class="col-lg-4 col-sm-6">
	<img src="icons/rockrms-brands.jpg" width="60px" height="60px">
	<div><p><strong>24X7 CUSTOMER SUPPORT</strong> <br><hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">
Round the clock support for all your hotel needs</p></div>
</div>
</div>

<br><hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:1500px;">

<div class="container">	

<div class="row text-center" style="display: flex; flex-wrap: wrap;">
	<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con =
     DriverManager.getConnection("jdbc:mysql://localhost/rooms", "root", "root");
Statement st = con.createStatement();
String sql = "select * from hotel";
ResultSet rslt = st.executeQuery(sql);
%>
	
<%
while (rslt.next()) { %>
       <div class="col-md-3 col-sm-6" id="pad">
	
        <div class="thumbnail">
        	<img src="images/bg-01.jpg" class="img-thumbnail">
        	<div class="caption">
        		<h4><%= rslt.getString("hotelName") %></h4>
        		<small class="text-muted"><%= rslt.getString("city") %> . <%= rslt.getString("location") %></small>
        		         <hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">
        		
        		<a href="BookRoom.jsp?hotlName=<%out.println(rslt.getString("hotelName"));%>&partnerName=<%out.println(rslt.getString("partnerName"));%>" class="btn btn-info">View</a>
            </div>
        </div>
         
        </div>
       
    <% } %>

</div>
</div>
<%@ include file = "footer.jsp" %>