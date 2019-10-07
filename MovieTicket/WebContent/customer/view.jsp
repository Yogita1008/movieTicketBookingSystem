<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Database.DatabaseConnection"%>
<%@ page import="java.sql.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">


<%String name= (String)session.getAttribute("username"); %>
</head>
<body>
<div class="heading">
<img src="../images/movie.jpg" alt="">
</div>
<form action="viewDetails.jsp" method="post">
  <div class="heading">
    <h2> Insert Name To View Details </h2>
  </div>
  <div class="container">
    <label for="name"><b>Customer Name</b></label>
    <input type="text" placeholder="Name" name="name" value="<%=name %>" >
  </div>
  <div class="container  heading" style="background-color:#f1f1f1">
<%--    <button type="button" id="btn"><a href="viewDetails.jsp?movieId=<%=rs.getString("movie_id") %>">Submit</a></button>
 --%>
    <a href="viewDetails.jsp?name=<%=name %>"><button type="button" id="btn">Submit</button></a>
 
     <a href="login.jsp"><button type="button" id="btn">Cancel</button></a>
    </div>
     <div class="footer">
  <p>On Twitter</p>
  <p>On Facebook</p>
  <p>On Instagram</p>
</div>
  </form>
</body>
</html>