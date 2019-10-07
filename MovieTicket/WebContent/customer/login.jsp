<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login successful</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">

</head>
<body>
<div class="heading">
<img src="../images/movie.jpg" alt="">
<%=session.getAttribute("username") %>

<marquee><big><b> Login Successful !!</b> </big></marquee>
</div>
<form action="" method="post">
 
  <div class="loginbtn , heading" >
   <a href="index.html"> <button type="button">Home</button></a>
   <a href="viewMovie.jsp"> <button type="button">View Available Movies</button></a>
   <a href="view.jsp"> <button type="button">View Details</button></a>
    </div>
  </form>
  <div class="footer">
  
  <p>On Twitter</p>
  <p>On Facebook</p>
  <p>On Instagram</p>
</div>
</body>
</html>