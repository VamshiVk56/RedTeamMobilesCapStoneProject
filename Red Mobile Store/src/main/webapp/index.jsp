<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<html>
<head>
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
h3
{
	color: black;
	text-align: center;
}
.scroll-left {
 height: 35px;	
 overflow: hidden;
 position: relative;
 background: yellow;
 color: black;
 border: 2px solid orange;
}
.scroll-left p {
 position: absolute;
 width: 100%;
 height: 100%;
 margin: 0;
 line-height: 40px;
 text-align: center;
 /* Starting position */
 transform:translateX(100%);
 /* Apply animation to this element */
 animation: scroll-left 29s linear infinite;
}
/* Move it (define the animation) */
@keyframes scroll-left {
 0%   {
 transform: translateX(100%); 		
 }
 100% {
 transform: translateX(-100%); 
 }
}
.red{
       font-family: "URW Chancery L", cursive;
       text-align:center;
       }
</style>
<div class="topnav sticky">
            
       <h2 class="red"><img src="image/apple_raw.png" width="28">
         ReD MoBiLe StOrE
        
       </h2>
      
            <a href="index.jsp">Home <i class="fa fa-home" style="color:navy"></i></a>
           <!--  <a href="" data-bs-toggle="dropdown">Categories <i class='fa fa-code-fork' style="color:blue" ></i></a>  -->   
            <a href="login.jsp?msg=forevents">Events&Coupons <i class='far fa-calendar-alt' style="color:purple"></i></a>
            <a href="login.jsp?msg=mycart">My Cart <i class='fas fa-cart-arrow-down' style="color:green"></i></a>
            <a href="login.jsp?msg=myorders">My Orders <i class="fas fa-money-bill" style="color:grey;"></i></a>
            <!--<a href="">Accessories <i class='fa fa-paperclip ' style="color:#808080"></i></a>-->
            <a href="login.jsp?msg=details">Update Details <i class='fa fa-edit' style="color:orange"></i></a>
            <a href="signup.jsp"><u>Register </u><i class='fas fa-user-alt' style="color:brown"></i></a>
            <a href="login.jsp"><u>Login </u><i class='fas fa-user-alt' style="color:brown"></i></a>
            
            <div class="search-container">
             <form action="login.jsp?msg=search" method="post">
             <input type="text" placeholder="Search..." name="search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
            </div>
          </div>
           
</head>
<body>
    <br><br>
<div style="color: navy; text-align: center; font-size: 30px;"><b>HOME </b><i class="fa fa-home"></i></div>
<div class="scroll-left">
<p><b>Welcome to Red Mobile Store. Exclusive offers and latest models. Best prices. All brands are available here. Avail discounts before they expire. </b></p>
</div>
<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<h3 class="alert">Product successfully added to your cart!</h3>
<%} %>
<%
if("exist".equals(msg))
{
%>
<h3 class="alert">Product already exist in your cart! Quantity increased!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            
            <th scope="col">Image</th>
            <th scope="col">Add to cart <i class='fas fa-cart-arrow-down'></i></th>
          </tr>
        </thead>
        <tbody>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from products where active='Yes'");
	while(rs.next())
	{
%>
      <tr>
        
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><i class="fa fa-inr"></i> <%=rs.getString(5) %></td>
        
        <td><img src="<%=rs.getString(7) %>.jpg" alt="product image" style="width:218px;height:248px;"></td>
        <td><a href="login.jsp?">Add to Cart <i class='fas fa-cart-arrow-down'></i></a></td>
      </tr>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>

</tbody>
      </table>
 
</body>
</html>