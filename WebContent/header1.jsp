<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<meta charset="ISO-8859-1">
<head>
  <title>Hotel NextGen - <%= (String)session.getAttribute("fullName") %></title>
<link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css"/>
<link rel="stylesheet" type="text/css" href="css/styles.css"/>
  <link rel="stylesheet" type="text/js" href="bootstrap/js/bootstrap.min.js"/>
  <link rel="stylesheet" type="text/css" href="fontawesome/all.min.css">
</head>
<body>
<% if(session.getAttribute("fullName") == null)
	  
response.sendRedirect("error.html");
	  %>

	<div class="navbar-header">
  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="Home.jsp">
    <img src="icons/rockrms-brands.jpg" width="30" height="30" class="d-inline-block align-top">
    Hotel NextGen
  </a>
  
 <ul class="nav navbar-nav ml-auto">
<a class="navbar-brand" href="bookingHistory.jsp">Booked Rooms</a>
 <li class="nav-item"><a class="nav-link" href="LogOut"><%= (new java.util.Date(session.getCreationTime()))%>  |  <%= (String)session.getAttribute("fullName") %> | LogOut</a></li>
 </ul>
</nav>
 </div>
  