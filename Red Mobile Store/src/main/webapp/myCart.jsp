<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Cart</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<style>
h3
{
	color: yellow;
	text-align: center;
}
.homee{
text-color:black;
}
</style>

<button><a class="back" href="home.jsp"><i class='fa fa-arrow-left'> Back to home page</i></a></button>
</head>
<body>
<div style="color: blue; text-align: center; font-size: 30px;"><b>My Cart </b><i class='fas fa-cart-arrow-down'></i></div>
<%
String msg=request.getParameter("msg");
if("notPossible".equals(msg))
{
%>
<h3 class="alert">There is only one Quantity! So click on remove!</h3>
<%} %>
<% 
if("inc".equals(msg))
{
%>
<h3 class="alert">Quantity  Increased Successfully!</h3>
<%} %>
<%
if("dec".equals(msg))
{
%>
<h3 class="alert">Quantity  Decreased Successfully!</h3>
<%} %>
<%
if("removed".equals(msg))
{
%>
<h3 class="alert">Product Successfully Removed!</h3>
<%} %>
<table>
<thead>
<%
int total=0;
int sno=0;
int z=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
	while(rs1.next())
	{
		total=rs1.getInt(1);
	}
%>
        </thead>
        <thead>
          <tr>
          
          <th scope="col">S.No</th>
            
            <th scope="col">Product Name</th>
            
            <th scope="col">Brand</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col">Remove <i class='fas fa-trash-alt'></i></th>
            
          </tr>
        </thead>
        <tbody>
        <%
        ResultSet rs=st.executeQuery("select * from products inner join cart on products.id=cart.product_id and cart.email='"+email+"'and cart.address is NULL");
        while(rs.next())
        {
        	z=1;
        %>
          <tr>
          <%sno=sno+1; %>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(4) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(5) %> </td>
            <td><a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=dec"><i class='fas fa-minus-circle'></i></a> <%=rs.getString(10) %> <a href="incDecQuantityAction.jsp?id=<%=rs.getString(1)%>&quantity=inc"><i class='fas fa-plus-circle'></i></a></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(12) %> </td>
            <td><a href="removeFromCart.jsp?id=<%=rs.getString(1)%>">Remove <i class='fas fa-trash-alt'></i></a></td>
          </tr>   
<%} %>
        </tbody>
        <thead>
      <tr>
          <th></th><th></th>
            <th></th><th></th><th></th><th scope="col" style="background-color: yellow;">Grand Total: <br><i class="fa fa-inr"></i> <%out.println(total);  %></th>
            <%if(total>0){ %><th scope="col" style="background-color: yellow;"><a href="addressPaymentForOrder.jsp">Proceed to order <i class="fa fa-arrow-circle-right"></i></a></th><% } %>
         
          </tr>
          </thead></table>  <%if(z==0){ %>
	<h1 style="color:red; text-align: center;"><b>Cart is empty</b><i class='fa fa-shopping-cart'></i></h1>
	    <%} %>
        <br>
        
        
        
        
        
        
        
        
        <div style="color: blue; text-align: center; font-size: 30px;"><b>Applicable Coupons </b><i class='fas fa-ticket-alt'></i></div>
<table>
        <thead>
          <tr>
          
          <th scope="col">ID</th>
            
            <th scope="col">Event Name</th>
            
            <th scope="col">From </th>
            <th scope="col">To </th>
            <th scope="col">Coupon Name</th>
            <th scope="col">Brands Applicable</th>
            <th scope="col"><i class="fa fa-inr"></i> Discount</th>
            
            <th scope="col">Apply <i class='fa fa-check'></i></th>
            
            
          </tr>
          
        </thead>
        <tbody>
<%
     ResultSet rs2=st.executeQuery("select * from event inner join cart on event.brand=cart.category and cart.email='"+email+"'and cart.address is NULL");
     while(rs2.next())
        {
        	z=1;
        %>
        
          <tr>
           <td><%=rs2.getString(1) %></td>
           <td><%=rs2.getString(2) %></td>
           <td><%=rs2.getString(4) %></td>
           <td><%=rs2.getString(5) %></td>
           <td><%=rs2.getString(6) %></td>
           <td><%=rs2.getString(7) %></td>
           <td><i class="fa fa-inr"></i><%=rs2.getString(8) %> </td>
            
           <td><a href="applyCoupon.jsp?id=<%=rs2.getString(10) %>&brand=<%=rs2.getString(7) %>&discount=<%=rs2.getString(8) %>">Apply <i class="fa fa-check"></i></a></td>
           
          </tr>   
          </tbody>
 <%
}}
catch(Exception e)
{
	System.out.println(e);
	}
%>
       </table>   
        <%if(z==0){ %>
	<h1 style="color:red; text-align: center;"><b>Add product to cart,to see applicable coupons</b></h1>
	    <%} %> 
	    <br>
</body>
</html>
