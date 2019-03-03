<%@ include file = "header1.jsp" %>

<%
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
%>



<div class="container" style="padding-top: 40px;">
       <div class="col-md-3 col-sm-6" id="pad" style="margin: auto;">
        	<div class="caption" style="border-top: 1px solid #f8f8f8;
	border: 1px solid rgba(0,0,0,0.2); width:300px;">
	<hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">	
	<span style="text-align: center;" class="badge badge-info">Reciept</span><br>
	<strong>Your Name :   </strong>
    <td> <%=fullName %> </td><br>
    <strong>Your Contact Number :   </strong>
    <td> <%=mobileNo%>  </td><br>
    <hr style="border-top: 1px solid #f8f8f8;
	border-bottom: 1px solid rgba(0,0,0,0.2); width:300px;">	
     <strong>Hotel Name :   </strong>
    <td> <%=hotelName %> </td><br>
     <strong>Owner Name :   </strong>
    <td> <%= partnerName %> </td><br>
    <strong>RoomNo :   </strong>
    <td> <%=roomNo%>  </td><br>
    <strong>Room Size :   </strong>
    <td> <%=roomSize %> </td><br>
    <strong>Type :   </strong>
    <td> <%=AC %> </td><br>
    <strong>TV :   </strong>
    <td> <%= TV %>  </td><br>
    <strong>Complimentary Breakfast :   </strong>
    <td> <%=breakfast %>  </td><br>
    <strong>wifi :  </strong>
    <td> <%=wifi %>  </td><br>
    <strong>Price :  </strong>
    <td> <%=price %>  </td><br>
    
    <span style="text-align: center;" class="badge badge-success">Booking Confirmed</span>
    
    
    
 <hr style="border-top: 1px solid #f8f8f8;border-bottom: 1px solid rgba(0,0,0,0.2); width:50px;">	
            </div><br>  
             <a href="Home.jsp"class="btn btn-info">View More Hotels</a>
        </div>
        </div>
        
       
       
<%@ include file = "footer.jsp" %>