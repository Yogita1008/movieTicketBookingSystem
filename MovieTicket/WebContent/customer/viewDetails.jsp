<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="Database.DatabaseConnection"%>
<%@ page import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Details</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">

<%  
String s=request.getParameter("val");  
 String id="", movieName= "", show="", rate= "";
String Cname = request.getParameter("name");
System.out.println(Cname);

 
DatabaseConnection dbcon= new DatabaseConnection();
dbcon.dbconnection();
String query="select * from book_tickets where customer_name= '"+Cname+"'";
System.out.println(query);
ResultSet rs = dbcon.getResultSet(query);   

 
%>
</head>
<body>
<div class="heading">
<img src="../images/movie.jpg" alt="">
</div>
<form action="" method="post">
  <div class="heading">
    <h2> Booked Tickets </h2>
  </div>
  
  
  <table  style="width:100%">
  <tr>
    <th>Customer Name</th>
    <th>Movie ID</th>
    <th>Movie Name</th>
    <th>Show </th>
    <th>Rate </th>
        
  </tr>
  <%
  while(rs.next()){
  %>
  
  <tr>
    <td><%=rs.getString("customer_name") %></td>
    <td><%=rs.getString("movie_id") %></td>
    <td><%=rs.getString("movie_name") %></td>
    <td><%=rs.getString("show_time") %></td>
    <td><%=rs.getString("rate") %></td>
    
  </tr>
   <%} %>
</table>
<div class="container  heading" style="background-color:#f1f1f1">
   <a href="view.jsp"> <button type="button" id="btn">Back</button></a>
    </div>
  </form>
  <div class="footer">
  <p>On Twitter</p>
  <p>On Facebook</p>
  <p>On Instagram</p>
</div>



</body>
</html>