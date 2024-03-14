<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../../footer.jsp" %>
<html>
<head>
<title>Delete Coupon</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<link rel="stylesheet" href="../../css/addNewProduct-style.css">
<link rel="stylesheet" href="../../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>


</head>
<body>>
 
<div class="topnav sticky">
            <center><h2 class="red"><img src="../../image/apple_raw.png" width="28">Red Mobile Store - Delete Coupons<i class="fa fa-edit"></i></h2></center>
            <style>
       .red{
       font-family: "URW Chancery L", cursive;
       }
       </style>
            <h2><a href="couponHeader.jsp"><i class='fas fa-arrow-circle-left'>Back</i></a></h2>
            
             <a href="addCoupon.jsp"> Add Coupon <i class='fa fa-plus-square' style="color:green"></i></a>
            <a href="editCoupon.jsp"> Edit Coupon <i class='fas fa-edit' style="color:blue"></i></a>
            <a href="deleteCoupon.jsp"> Delete Coupon <i class='fas fa-trash' style="color:red"></i></a>
             <a href="../../logout.jsp">Logout <i class='fas fa-share-square' style="color:red"></i></a>
          </div>
          
          <%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Coupon Successfully Deleted!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Event doesn't exist </h3>
<%} %>
          
<form action="deleteCouponAction.jsp" method="post">
<div class="center-div">
 <h3>Enter Coupon ID</h3>
 <input class="input-style" type="text" name="id" required>
<hr>
</div>
 <button class="button">Delete<i class='far fa-arrow-alt-circle-right'></i></button>
</form>

</body>
<br><br><br>
</body>
</html>