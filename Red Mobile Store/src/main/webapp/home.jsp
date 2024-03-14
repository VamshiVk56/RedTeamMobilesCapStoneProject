<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
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

</style>
</head>
<body>
<div style="color: navy; text-align: center; font-size: 30px;"><b>HOME </b><i class="fa fa-home"></i></div>

<div class="scroll-left">
<p><b>Welcome to Red Mobile Store. Exclusive offers and latest models. Best prices. All brands are available here. Avail discounts before they expire. </b></p>
</div>
<%
String msg=request.getParameter("msg");
if("added".equals(msg))
{
%>
<h3 class="alert">Product successfully  added to your cart!</h3>
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
<%
if("placed".equals(msg))
{
%>
<h3 class="alert">Your Order Placed Successfully!</h3>
<%} %>
<%
if("access".equals(msg))
{
%>
<h3 class="alert">Logged in!&nbsp;&nbsp;Now you have access to all features!</h3>
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
        
        <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>&category=<%=rs.getString(4) %>">Add to Cart <i class='fas fa-cart-arrow-down'></i></a></td>
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