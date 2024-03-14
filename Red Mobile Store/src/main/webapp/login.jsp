<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Log in
</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:400,700">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	color: #999;
	background-image: url("image/back.jpg");
	 -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  background-size: cover;
	font-family: 'Roboto', sans-serif;
}
.form-control, .form-control:focus, .input-group-addon {
	border-color: #e1e1e1;
	border-radius: 0;
}
.signup-form {
	width: 420px;
	height:450px;
	margin: 0 auto;
	padding: 30px 0;
	margin-left: 100px !important;
}
.signup-form h2 {
	color: #636363;
	margin: 0 0 15px;
	text-align: center;
}
.signup-form .lead {
	font-size: 14px;
	margin-bottom: 30px;
	text-align: center;
}
.signup-form form {		
	border-radius: 2px;
	margin-bottom: 15px;
	background: #fff;
	border: 1px solid #f3f3f3;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}
.signup-form .form-group {
	margin-bottom: 20px;
	color:#20BFEF !important;
}
.signup-form label {
	font-weight: normal;
	font-size: 13px;
}
.signup-form .form-control {
	min-height: 38px;
	box-shadow:0px 2px 2px rgba(0, 0, 0, 0.3) !important;
	border-width: 0 0 1px 0;
}	
.signup-form .input-group-addon {
	max-width: 42px;
	text-align: center;
	background: none;
	border-bottom: 1px solid #e1e1e1;
	padding-left: 5px;
}
.signup-form .btn, .signup-form .btn:active {        
	font-size: 16px;
	font-weight: bold;
	background: #19aa8d !important;
	border-radius: 3px;
	border: none;
	min-width: 140px;
}
.signup-form .btn:hover, .signup-form .btn:focus {
	background: #179b81 !important;
}

.signup-form a {
	color: #19aa8d;
	text-decoration: none;
}	
.signup-form a:hover {
	text-decoration: underline;
}
.signup-form .fa {
	font-size: 21px;
	position: relative;
	top: 8px;
}
.signup-form .fa-paper-plane {
	font-size: 17px;
}
.signup-form .fa-check {
	color: #fff;
	left: 9px;
	top: 18px;
	font-size: 7px;
	position: absolute;
}
h1 {
  color: white;
  font-weight: 900;
  font-size: 2.5em;
  text-align:50px left;
}
h2{
font-family: "URW Chancery L", bold;
}
.signup-form .form-group .buttonn{
background-color:#20BFEF;
width:100px;
height:30px;
color:white;

text-align:center;
margin-left: 130px !important;
}
.signup-form .hh {
  text-shadow: 1px 1px grey;
}
</style> 
</head>

<body>
<button><a class="back" href="index.jsp"><i class='fa fa-arrow-left'> </i>Back to Home</a></button>
<%
  String msg=request.getParameter("msg");
  if("notexist".equals(msg))
  {
  %>
  <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Incorrect email or password<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Else Register</h1>
  <%} %>
  <%if("invalid".equals(msg))
  {%>
<h1>&nbsp;&nbsp;Something Went Wrong! Try Again !</h1>
<%} %>
<%if("loggedout".equals(msg))
  {%>
  <h1>&nbsp;&nbsp; You are successfully logged out!</h1>
<%} %>
<%if("registered".equals(msg))
{
%>
<h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Successfully Registered<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Now you can login!</h1>
<%} %> 

<div class="signup-form">	
<br>
    <form action="loginAction.jsp" method="post">
		<h2 style="color:#20BFEF;" class="hh"><b>LOG IN</b></h2>
		<p class="lead">One place for all brands of Mobiles</p>
        <div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class='fa fa-paper-plane' ></i></span>&nbsp;
				<input type="email" class="form-control" name="email" placeholder="Email Address" required>
			</div>
        </div>
		<div class="form-group">
			<div class="input-group">
				<span class="input-group-addon"><i class="fa fa-lock"></i></span>&nbsp;
				<input type="password" class="form-control" name="password" placeholder="Password" required>
			</div>
        </div>     
		<div class="form-group" >
            <button type="submit" class="buttonn" value="login" >Log in</button>
        </div>
		<!--  <input id="check" align="center" type="checkbox">
		<label for="check">        Keep me signed in</label>-->
	<div class="text-center">Not registered yet?<br>Click here to <a href="signup.jsp" style="color:#20BFEF;">Register </a>.</div>
</form>
</div>
</body>

</html>