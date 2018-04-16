<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Signup</title>
<meta charset="utf-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="shortcut icon" type="image/x-icon" href="<c:url value="/assets/images/icon.png" />" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
body {
	background: linear-gradient(90deg, #e8e8e8, white);
}

#signinbox {
	display: block;
	text-align: center;
	font-family: segoe ui;
	font-size: 1.8vw;
	width: 35vw;
	margin-left: auto;
	margin-right: auto;
	margin-top: 5vh;
}

.form-container {
	height: 500px;
	width: 40vw;
	border: 1px solid #d1d1d1;
	border-radius: 7px;
	margin-top: 10px;
	margin-left: auto;
	margin-right: auto;
	background: white;
}

span {
	font-family: segoe ui;
	margin: 3vw;
	line-height: 2.5;
}

input {
	margin: 0vw 0 1vw 2vw;
	padding: 12px 12px;
	width: 36vw;
	border-radius: 8px;
	border: 1px solid #d1d1d1;
	transition: border 0.5s ease-out;
}

input:focus {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

input[type=submit] {
	background: linear-gradient(to bottom, #000000, #282424);
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin-top: 3vh;
	cursor: pointer;
}

#hr-style1 {
	border: 0;
	height: 1px;
	background-image: linear-gradient(to right, rgba(0, 0, 0, 0),
		rgba(0, 0, 0, 0.75), rgba(0, 0, 0, 0));
}

.newuser {
	height: 40px;
	width: 40vw;
	border: 1px solid #d1d1d1;
	border-radius: 7px;
	margin-top: 10px;
	margin-left: auto;
	margin-right: auto;
	background: white;
}

#nu {
	margin-top: 8px
}
</style>
</head>
<body>

	<div class="img-container"></div>
	<p id="signinbox">
		<b>CREATE NEW ACCOUNT</b>
	</p>

	<div class="form-container">
		<form>
			<span><label for="username">Username or Email ID:</label></span><br>
			<input type="text" name="username" id="username"
				placeholder="enter here" required autofocus><br> <span><label
				for="Email ID">Email ID:</label></span><br> <input type="text"
				name="emailid" id="emailid" placeholder="abc@somedomain.com"
				required><br> <span><label for="password">Password
					:</label></span><br> <input type="password" name="pwd" id="password" required><br>
			<span><label for="confirm password">Confirm Password :</label></span><br>
			<input type="password" name="cpwd" id="cpassword" required><br>
			<input type="submit" value="SIGN UP"><br>



		</form>
	</div>
	<div class="newuser">
		<center>
			<p id="nu">
				Already have an account? <a href="#">Login here</a>
			</p>
		</center>


	</div>
	<hr id="hr-style1">
	<footer>
	<center>
		<a href="#">Terms</a> | <a href="#">Privacy</a> | <a href="#">Security</a><br>
		&copy All right Reserved <a href="#" style="">fabglow.com</a>
	</center>
	</footer>

</body>
</html>