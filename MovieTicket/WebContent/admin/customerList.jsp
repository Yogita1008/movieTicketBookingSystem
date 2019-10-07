<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="Database.DatabaseConnection"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer List</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">

</head>
<%  
String s=request.getParameter("val");  
 
DatabaseConnection dbcon= new DatabaseConnection();
dbcon.dbconnection();
String query="SELECT customer_name, email FROM customer;";
ResultSet rs=dbcon.getResultSet(query);    
%>
<body>
<body>
<div class="heading">
<img src="../images/movie.jpg" alt="">
</div>
<form action="" method="post">
  <div class="heading">
    <h2> Customer List </h2>
  </div>
  
  
  <table  style="width:100%">
  <tr>
    <th>Customer Name</th>
    <th>Email</th>
    
        
  </tr>
  <%
  while(rs.next()){
  %>
  
  <tr>
    <td><%=rs.getString("customer_name") %></td>
    <td><%=rs.getString("email") %></td>
    
    
  </tr>
  <%} %>
</table>
<div class="container  heading" style="background-color:#f1f1f1">
   <a href="login.html"> <button type="button" id="btn">Back</button></a>
    </div>
  </form>
  <div class="footer">
  <p>On Twitter</p>
  <p>On Facebook</p>
  <p>On Instagram</p>
</div>


</body>
</html>