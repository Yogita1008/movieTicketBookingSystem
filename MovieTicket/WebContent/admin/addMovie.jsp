<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="Database.DatabaseConnection"%>
<%@ page import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Movie</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">
<script type="text/javascript">
function Validation()
{
	var id = document.forms["AddForm"]["movieId"]; 
	var name = document.forms["AddForm"]["movieName"]; 
	var showtime = document.forms["AddForm"]["showTime"]; 
	var rate = document.forms["AddForm"]["rate"]; 
	
	if (id.value == "")                                  
    { 
        window.alert("Please enter movie ID."); 
        id.focus(); 
        return false; 
    } 
	if (name.value == "")                                  
    { 
        window.alert("Please enter movie name."); 
        name.focus(); 
        return false; 
    } 
	if (showtime.value == "")                                  
    { 
        window.alert("Please enter movie show time."); 
        showtime.focus(); 
        return false; 
    } 
	if (rate.value == "")                                  
    { 
        window.alert("Please enter movie ticket rate."); 
        rate.focus(); 
        return false; 
    } 
	}

</script>

</head>


<body>
<div class="heading">
<img src="../images/movie.jpg" alt="">
</div>
<form name="AddForm" action="../InsertServlet" onsubmit="return Validation()" method="get">
  <div class="heading">
    <h2> Add New Movies </h2>
  </div>
  <div class="container">
    <label for="id"><b>Movie ID</b></label>
    <input type="text" placeholder="Enter Movie ID" name="movieId" >

    <label for="name"><b>Movie Name</b></label>
    <input type="text" placeholder="Enter Movie Name" name="movieName" >
    
    <label for="show"><b>Show Time</b></label>
    <input type="text" placeholder="Enter Show Time" name="showTime" >
    
    <label for="rate"><b>Ticket Rate</b></label>
    <input type="text" placeholder="Enter Ticket Rate" 
    onkeypress="if ( isNaN( String.fromCharCode(event.keyCode) )) return false;" name="rate">
</div>

 <div class="container  heading" style="background-color:#f1f1f1">
    <button type="submit" id="btn">Add Movie</button>
<!--     <input type="submit" value= "Add">
 -->    <a href="login.html"><button type="button" id="btn">Cancel</button></a>
    </div>
  </form>
  <div class="footer">
  
  <p>On Twitter</p>
  <p>On Facebook</p>
  <p>On Instagram</p>
</div>
</body>
</html>