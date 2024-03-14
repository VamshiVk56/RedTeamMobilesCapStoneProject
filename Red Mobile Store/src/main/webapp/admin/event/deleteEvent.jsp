<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../../css/addNewProduct-style.css">
<link rel="stylesheet" href="../../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Delete Event</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">

</head>
<body>>
 
<div class="topnav sticky">
            <center><h2 class="red"><img src="../../image/apple_raw.png" width="28">Red Mobile Store - Delete Events<i class="fa fa-edit"></i></h2></center>
            <style>
       .red{
       font-family: "URW Chancery L", cursive;
       }
       </style>
            <h2><a href="eventHeader.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
            
            <a href="addEvent.jsp">Add Event <i class='fa fa-plus-square' style="color:green"></i></a>
            <a href="editEvent.jsp">Edit Event <i class='	fas fa-edit' style="color:blue"></i></a>
            <a href="deleteEvent.jsp">Delete Event <i class='fas fa-trash' style="color:red"></i></a>
             <a href="../../logout.jsp">Logout <i class='fas fa-share-square' style="color:red"></i></a>
          </div>
          
          <%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Event Successfully Deleted!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Event doesn't exist </h3>
<%} %>
          
<form action="deleteEventAction.jsp" method="post">
<div class="center-div">
 <h3>Enter Event ID</h3>
 <input class="input-style" type="text" name="id" required>
<hr>
</div>
 <button class="button">Delete<i class='far fa-arrow-alt-circle-right'></i></button>
</form>

</body>
<br><br><br>
</body>
</html>