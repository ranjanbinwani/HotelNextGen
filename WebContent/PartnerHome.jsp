
<%@ include file = "header2.jsp" %>
<body>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con =
     DriverManager.getConnection("jdbc:mysql://localhost:3306/rooms", "root", "root");
Statement st = con.createStatement();
String sql = "select * from hotel where partnerName='"+(String)session.getAttribute("partnerName")+"'";
ResultSet rs = st.executeQuery(sql);
%>
<h2 align="center">We are Glad that you have Chosen Us</h2><br>
<h2 align="center">Let's Get Started Mr. <%= (String)session.getAttribute("partnerName") %></h2>

<div class="container">
<div class="row"  style="padding-top: 150px;">
<div class="col-sm-9 col-md-6 col-lg-8">

<div class="container">	
<div class="row text-center" style="display: flex; flex-wrap: wrap;">
<%  while (rs.next()) { %>
       <div class="col-md-3 col-sm-6" id="pad">
	
        <div class="thumbnail">

        	<img src="images/bg-01.jpg" class="img-thumbnail">
        	<div class="caption">
        		<h4><%= rs.getString("hotelName") %></h4>
        		<small class="text-muted"><%= rs.getString("city") %> . <%= rs.getString("location") %></small>
        		<br><a href="Rooms.jsp?hName=<%out.println(rs.getString("hotelName"));%>" class="btn btn-primary">Add Rooms</a>
            </div>
        </div>
        </div>
    <% } %>

</div>
</div>

</div>


<div class="col-sm-3 col-md-6 col-lg-4">
<h1 align="center" style="padding-bottom: 50px;">Add a New Hotel</h1>
<form method="post" action="HotelRegister">
  <div class="form-group">
    <label for="exampleFormControlInput1">Hotel Name</label>
    <input type="text" class="form-control"  placeholder="Hotel Name" name="hotelName">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput2">City</label>
    <input type="text" class="form-control"  placeholder="City" name="city">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput3">Location</label>
    <input type="text" class="form-control"  placeholder="Location" name="location">
  </div>
  <div class="form-group">
    <label for="exampleFormControlInput4">Description</label>
    <input type="text" class="form-control"  placeholder="Description" name="description">
  </div>
  <div class="form-group">
    <label for="exampleFormControlFile1">Upload Hotel Picture(.jpg)</label>
    <input type="file" class="form-control-file" id="exampleFormControlFile1" accept="image/jpg">
  </div>
  <button type="submit" class="btn btn-primary btn-lg">Add Hotel</button>
</form>
</div>
</div>
</div>
</body>





<%@ include file = "footer.jsp" %>