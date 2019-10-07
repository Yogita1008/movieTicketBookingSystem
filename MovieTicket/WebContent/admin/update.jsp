<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="Database.DatabaseConnection"%>
<%@ page import="java.sql.*"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Movie</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">

<%  
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


<form action="../UpdateServlet" method="get">
  <div class="heading">
    <h2> Update Movie Details </h2>
  </div>
  <div class="container">
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
    <button type="submit" id="btn">Update</button>
   <a href="updateMovie.jsp"> <button type="button" id="btn">Cancel</button></a>
    </div>
    <div class="footer">
  <p>On Twitter</p>
  <p>On Facebook</p>
  <p>On Instagram</p>
</div>
  </form>

</body>
</html>