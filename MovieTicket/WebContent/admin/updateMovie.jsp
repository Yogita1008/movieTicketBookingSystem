<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="Database.DatabaseConnection"%>
<%@ page import="java.sql.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">

<%  
String s=request.getParameter("val");  
 
DatabaseConnection dbcon= new DatabaseConnection();
dbcon.dbconnection();
String query="select * from movie";
ResultSet rs=dbcon.getResultSet(query);    
%>
</head>
<body>
<div class="heading">
<img src="../images/movie.jpg" alt="">
</div>
<form action="update.jsp" method="post">
  <div class="heading">
    <h2> Update Movie List </h2>
  </div>
  
  <table style="width:100%">
  <tr>
    <th>Movie Id</th>
    <th>Movie Name</th>
    <th>Show</th>
    <th>Rate </th>
    <th>Update </th>
    <th>Delete </th>
  </tr>
  
  
    <%
  while(rs.next()){
  %>
  <tr>
  
    <td><%=rs.getString("movie_id") %></td>
    <td><%=rs.getString("movie_name") %></td>
    <td><%=rs.getString("showtime") %></td>
    <td><%=rs.getString("rate") %></td>
   <td><a href="update.jsp?movieId=<%=rs.getString("movie_id") %>"> <button type="button" id="btn">Update</button></a></td>
   <td><a href="delete.jsp?movieId=<%=rs.getString("movie_id") %>"> <button type="button" id="btn">Delete</button></a></td>
  </tr>
  <%} %>
   
  
  </table>
  
  
  <div class="container  heading" style="background-color:#f1f1f1">
    <a href="login.html"><button type="button" id="btn">Back</button></a>
    </div>
  </form>
  <div class="footer">
  <p>On Twitter</p>
  <p>On Facebook</p>
  <p>On Instagram</p>
</div>

</body>
</html>