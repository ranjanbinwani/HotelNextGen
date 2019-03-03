<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
  <title>Hotel NextGen(Enterprise) - <%= (String)session.getAttribute("partnerName") %></title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/styles.css"/>
  <link rel="stylesheet" type="text/js" href="bootstrap/js/bootstrap.min.js"/>
  <link rel="stylesheet" type="text/css" href="localhost:8090/HotelNextGen/fontawesome/all.min.css">
</head>
<body>

<% if(session.getAttribute("partnerName") == null)
	  
response.sendRedirect("error.html");
	  %>
	<div class="navbar-header">
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="PartnerHome.jsp">
    <img src="icons/rockrms-brands.jpg" width="30" height="30" class="d-inline-block align-top">
    Hotel NextGen-Enterprise
  </a>
   
 <ul class="nav navbar-nav ml-auto">
 <a class="navbar-brand" href="bookedRooms.jsp">Booked Rooms</a>
 <li class="nav-item"><a class="nav-link" href="LogOut"><%= (String)session.getAttribute("partnerName") %> LogOut</a></li>
 </ul>
</nav>
 </div>
  
