<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../../css/addNewProduct-style.css">
<link rel="stylesheet" href="../../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Delete Product</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<style>
.red{
       text-align:center;
       font-family: "URW Chancery L", cursive;
     }
</style>
</head>
<body>
<div class="topnav sticky">
         <h2 class="red"><img src="../../image/apple_raw.png" width="28">Red Mobile Store - Delete Products<i class="fa fa-edit"></i></h2>    
            <h2><a href="productHeader.jsp"><i class='fas fa-arrow-circle-left'>Back </i></a></h2>
            <a href="addNewProduct.jsp">Add Product <i class='fa fa-plus-square' style="color:green"></i></a>
            <a href="editProduct.jsp">Edit product <i class='	fas fa-edit' style="color:blue"></i></a>
            <a href="delete.jsp">Delete Product <i class='fas fa-trash' style="color:red"></i></a>
            <a href="../../logout.jsp">Logout <i class='fas fa-share-square' style="color:red"></i></a>
          </div>
          <%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Product Successfully Deleted!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Product doesn't exist </h3>
<%} %>
<form action="deleteAction.jsp" method="post">
<div class="center-div">
 <h3>*Enter product id to delete</h3>
 <input class="input-style" type="text" name="id" required>
<hr>
</div>
 <button class="button" value="submit">Delete<i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<br><br><br>
</body>
</html>