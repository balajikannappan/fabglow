<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/navbar.jsp" %>
     <%@ include file="/WEB-INF/views/shopbarnav.jsp" %>
<html>
<head>
<title>Login</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">

  

<style>
<%@ include file="/WEB-INF/assets/css/login.css" %>
<%@ include file="/WEB-INF/assets/css/shopnav.css" %>
  <%@ include file="/WEB-INF/assets/css/navbarstyle.css" %>

</style></head>
<body>

<div class="img-container">



</div>
<p id="signinbox"><b>SIGN IN TO FABGLOW</b></p>

<div class="form-container">
<form>
<span><label for="username">Username or Email ID:</label></span><br>
<input type="text" name="username" id="username" placeholder="enter here" required autofocus><br>
<span><label for="password">Password :</label><a href="#"> Forgot Password?</a></span><br>
<input type="password" name="pwd" id="password" required><br>
<input type="submit" value="LOGIN"><br>



</form></div>
<div class="newuser">
<center>
<p id="nu">New User? <a href="#"> Create an account</a></p>
</center>
</div>
<hr id="hr-style1">
<footer>
  <center><a href="#">Terms</a> | <a href="#">Privacy</a> | <a href="#">Security</a><br> &copy All right Reserved <a href="#" style="text">fabglow.com</a></center>
</footer>
</body>
</html>