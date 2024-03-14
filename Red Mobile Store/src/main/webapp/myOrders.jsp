<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Orders</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
</head>
<body>
<button><a class="back" href="home.jsp"><i class='fa fa-arrow-left'> Back to home page</i></a></button>
<div style="color: blue; text-align: center; font-size: 30px;"><b>My Orders </b><i class='fab fa-elementor'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            
            <th scope="col"><i class="fa fa-inr"></i>  Price</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">Status</th>
              
          </tr>
        </thead>
        <tbody>
<%
int sno=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from cart inner join products where cart.product_id=products.id and cart.email='"+email+"' and cart.orderDate is not NULL");
	while(rs.next())
	{
		sno=sno+1;
%>
          <tr>
            <td><%out.println(sno); %></td>
            <td><%=rs.getString(17) %></td>
            
            <td><i class="fa fa-inr"></i><%=rs.getString(20) %> </td>
            <td><%=rs.getString(3) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(5) %> </td>
             <td><%=rs.getString(11) %></td>
              <td><%=rs.getString(12) %></td>
               <td><%=rs.getString(13) %></td>
               <td><%=rs.getString(15) %></td>
            </tr>
         <%}} 
         catch(Exception e)
         {
         System.out.println(e);
         }%>
        </tbody>
      </table>
      <br>
      <%if(sno==0){ %>
	<h1 style="color:red; text-align: center;"><b>No Orders Placed</b><i class='fas fa-money-bill'></i></h1>
	    <%} %>
      <br>
      <br>
      <br>
</body>
</html>