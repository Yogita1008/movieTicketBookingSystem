<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="Database.DatabaseConnection"%>
<%@ page import="java.sql.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Booking</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<%String cname= (String)session.getAttribute("username"); %>

<%  
String bal= (String)session.getAttribute("balance");
String name ="" ,show ="" ,rate ="";
String m1=request.getParameter("movieId");
DatabaseConnection dbcon= new DatabaseConnection();
dbcon.dbconnection();
String query="select * from movie where movie_id ='" + m1+"'";
ResultSet rs=dbcon.getResultSet(query);
while(rs.next())
{
	name=rs.getString("movie_name");
	show=rs.getString("showtime");

	rate=rs.getString("rate");

}
%>

</head>
<body>
<div class="heading">
<img src="../images/movie.jpg" alt="">
</div>


<form action="../bookServlet" method="get">
  <div class="heading">
    <h2> Book Ticket</h2>
  </div>
  <div> <%=bal%> </div>
  <input type="hidden" name="balance" value="<%=bal%>">
  <div class="container">
  <label for="id"><b>Customer Name</b></label>
  <input type="text" placeholder="Enter Customer name" name="name"  value="<%=cname %>" required>
  
    <label for="id"><b>Movie ID</b></label>
    <input type="text" placeholder="Enter Movie ID" name="movieId" value="<%=m1 %>" required>


    <label for="name"><b>Movie Name</b></label>
    <input type="text" placeholder="Enter Movie Name" name="movieName" value="<%=name %>" required>
    
    <label for="show"><b>Show Time</b></label>
    <input type="text" placeholder="Enter Show Time" name="show" value="<%=show %>" required>
    
    <label for="rate"><b>Ticket Rate</b></label>
    <input type="text" placeholder="Enter Ticket Rate"
    onkeypress="if ( isNaN( String.fromCharCode(event.keyCode) )) return false;" name="rate" value="<%=rate %>"  required>
</div>

 <div class="container  heading" style="background-color:#f1f1f1">
    <button type="submit" id="btn">Book</button>
   <a href="viewMovie.jsp"> <button type="button" id="btn">Back</button></a>
    </div>
    <div class="footer">
  <p>On Twitter</p>
  <p>On Facebook</p>
  <p>On Instagram</p>
</div>
  </form>

</body>
</html>