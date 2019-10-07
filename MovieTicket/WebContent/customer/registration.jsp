<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" type="text/css" href="../css/style.css">

</head>
<body>
<div class="heading">
<img src="../images/movie.jpg" alt="">
</div>
<form name="AddForm" action="../registrationServlet" onsubmit="return Validation()" method="get">
  <div class="heading">
    <h2> Register Here  </h2>
  </div>
  <div class="container">
    <label for="id"><b>Customer Name</b></label>
    <input type="text" placeholder="Name" name="name" >

    <label for="name"><b>Email</b></label>
    <input type="text" placeholder="Email" name="email" >
    
    <label for="unsme"><b>Set Username</b></label>
    <input type="text" placeholder="Username" name="uname" >
    
    <label for="psw"><b>Set Password</b></label>
    <input type="text" placeholder="Password"  name="psw">
</div>

 <div class="container  heading" style="background-color:#f1f1f1">
    <button type="submit" id="btn">Register</button>
<!--     <input type="submit" value= "Add">
 -->    <a href="index.html"><button type="button" id="btn">Cancel</button></a>
    </div>
     <div class="footer">
  <p>On Twitter</p>
  <p>On Facebook</p>
  <p>On Instagram</p>
</div>
  </form>
</body>
</html>