
<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
    <%String email=session.getAttribute("email").toString(); %>
            <center>
       <h2 class="red"><img src="image/apple_raw.png" width="28">
        ReD MoBiLe StOrE
       </h2>
       </center>
       <style>
       .red{
       font-family: "URW Chancery L", cursive;
       }
       </style>
            <h2><a href=""><%out.println(email); %> <i class='fas fa-user-alt' style="color:brown"></i></a></h2>
            <a href="home.jsp">Home <i class="fa fa-home" style="color:navy"></i></a>
           <!--  <a href="" data-bs-toggle="dropdown">Categories <i class='fa fa-code-fork' style="color:blue" ></i></a>  -->   
            <a href="eventsandcoupons.jsp">Events&Coupons <i class='far fa-calendar-alt' style="color:purple"></i></a>
            <a href="myCart.jsp">My Cart <i class='fas fa-cart-arrow-down' style="color:green"></i></a>
            <a href="myOrders.jsp">My Orders <i class="fas fa-money-bill" style="color:grey;"></i></a>
            <!--<a href="">Accessories <i class='fa fa-paperclip ' style="color:#808080"></i></a>-->
            <a href="changeDetails.jsp">Update Details <i class='fa fa-edit' style="color:orange"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square' style="color:red"></i></a>
            <div class="search-container">
             <form action="searchHome.jsp" method="post">
             <input type="text" placeholder="Search..." name="search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
            </div>
          </div>
           <br>
           <!--table-->
