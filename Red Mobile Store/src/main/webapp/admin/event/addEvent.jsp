<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../../css/addNewProduct-style.css">
<link rel="stylesheet" href="../../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add New Event</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
</head>
<body>

<%
int id=1;
try
{
    Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select max(id) from event");
    while(rs.next())
    {
    	id=rs.getInt(1);
    	id=id+1;
    }
}
catch(Exception e)
{
   System.out.println(e);	
}
%>
<div class="topnav sticky">
            <center><h2 class="red"><img src="../../image/apple_raw.png" width="28">Red Mobile Store - Add Events<i class="fa fa-edit"></i></h2></center>
            <style>
       .red{
       font-family: "URW Chancery L", cursive;
       }
       </style>
            <h2><a href="eventHeader.jsp"><i class='fas fa-arrow-circle-left'>Back </i></a></h2>
            
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
<h3 class="alert">Event Added Successfully!</h3>
<%}%>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try Again!</h3>
<%}%>

<form action="addEventAction.jsp" method="post">
<h3 style="color: red;">Event ID: <%out.println(id); %> </h3>
<input type="hidden" name="id" value="<%out.print(id); %>">


<div class="left-div">
 <h3>Name</h3>
 <input class="input-style" type="text" name="name" placeholder="Enter Name" required>
 
<hr>
</div>

<div class="right-div">
<h3>Description</h3>
<input class="input-style" type="text" name="description" placeholder="Describe Here" required>
 
<hr>
</div>
<div class="left-div">
<h3>FROM DATE</h3>
<input class="input-style" type="datetime-local" name="fromDate" placeholder="SELECT FROM DATE" required>

<hr>
</div>

<div class="right-div">
<h3>TO DATE</h3>
<input class="input-style" type="datetime-local" name="toDate" placeholder="SELECT TO DATE" required>

<hr>
</div>

<div class="left-div">
<h3>Coupon Name</h3>
<input class="input-style" type="text" name="coupon" placeholder="Enter Coupon Name" required>

<hr>
</div>

<div class="right-div">
<h3>Select Applicable Brands (Hold Ctrl to Select Multiple Brands)</h3>
<select class="input-style" name="brand" required>
<option value="select" selected disabled hidden>Select </option>
<option value="Redmi">Redmi</option>
<option value="Apple Iphone">Apple Iphone</option>
<option value="Samsung">Samsung</option>
<option value="RealMe">RealMe</option>
<option value="Motorola">Motorola</option>
<option value="Reliance">Reliance</option>
<option value="HTC">HTC</option>
<option value="Other">Other</option>
</select>

<hr>
</div>

<div class="left-div">
<h3>Discount Value</h3>
<input class="input-style" type="number" name="discount" placeholder="Enter Discount value" required>
<hr>
</div>




<button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>