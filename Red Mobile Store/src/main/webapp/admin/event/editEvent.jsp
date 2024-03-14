<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../../css/addNewProduct-style.css">
<link rel="stylesheet" href="../../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Edit Event</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
</head>
<div class="topnav sticky">
            <center><h2 class="red"><img src="../../image/apple_raw.png" width="28">Red Mobile Store - Edit Events<i class="fa fa-edit"></i></h2></center>
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
<h3 class="alert">Event Successfully Updated!</h3>
<%} %>
<% 
if("wrong".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try again!</h3>
<%} %>
          <form action="editEvent.jsp" method="post">
<div class="center-div">
 <h3>Enter Event id to edit</h3>
 <input class="input-style" type="number" name="id" required>
<hr>
</div>
 <button class="button">Click to Edit<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
          
<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	   Statement st=con.createStatement();
	   ResultSet rs=st.executeQuery("select * from event where id='"+id+"'");
	   while(rs.next())
	{
%>
<form action="editEventAction.jsp" method="post">
<input type="hidden" name="id" value="<% out.println(id);%>">
<div class="left-div">
 <h3>Enter Name</h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(2) %>" required>
<hr>
</div>

<div class="right-div">
 <h3>Enter Description</h3>
<input class="input-style" type="text" name="description" value="<%=rs.getString(3) %>" required>
<hr>
</div>

<div class="left-div">
<h3>FROM DATE</h3>
<input class="input-style" type="datetime-local" name="fromDate" placeholder="SELECT FROM DATE" value="<%=rs.getString(4) %>" required>

<hr>
</div>

<div class="right-div">
<h3>TO DATE</h3>
<input class="input-style" type="datetime-local" name="toDate" placeholder="SELECT TO DATE" value="<%=rs.getString(5) %>" required>

<hr>
</div>

<div class="left-div">
<h3>Coupon Name</h3>
<input class="input-style" type="text" name="coupon" placeholder="Enter Coupon Name" value="<%=rs.getString(6) %>" required>

<hr>
</div>

<div class="right-div">
<h3>Select Applicable Brands (Hold Ctrl to Select Multiple Brands)</h3>
<select class="input-style" name="brand" required>
<option value="<%=rs.getString(7) %>" selected hidden><%=rs.getString(7) %> </option>
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
<input class="input-style" type="number" name="discount" placeholder="Enter Discount value" value="<%=rs.getString(8) %>" required>
<hr>
</div>


 <button class="button">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<%
}
}
catch(Exception e)
{
System.out.println(e);
}%>
</body>
<br><br><br>
</body>
</html>