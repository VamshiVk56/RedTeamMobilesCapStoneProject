<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Orders Received</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<style>
.th-style
{ width: 25%;}
</style>
</head>
<body>
<div style="color: blue; text-align: center; font-size: 30px;">Orders Received <i class='fa fa-download'></i></div>
<%
String msg=request.getParameter("msg");
if("cancel".equals(msg))
{
%>
<h3 class="alert">Order Cancelled Successfully!</h3>
<%} %>
<%
if("delivered".equals(msg))
{
%>
<h3 class="alert">Successfully Updated!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>

<h3 class="alert">Something went wrong! Try Again!</h3>
<%} %>
<table id="customers">
          <tr>
            <th scope="col">Mobile Number</th>
            <th scope="col">Product Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th scope="col">Address</th>
            <th scope="col">City</th>
            <th scope="col">State</th>
            <th scope="col">Order Date</th>
            <th scope="col">Expected Delivery Date</th>
            <th scope="col">Payment Method</th>
            <th scope="col">T-ID</th>
          </tr>
       <%
       String email=session.getAttribute("email").toString();
       try
       {
    	   Connection con=ConnectionProvider.getCon();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select * from cart inner join products where cart.product_id=products.id and cart.orderDate is not NULL and cart.status='processing'");
    	   while(rs.next())
    	   {
       %>
          <tr>
             <td><%=rs.getString(10) %></td>
             <td><%=rs.getString(17) %></td>
             <td><%=rs.getString(3) %></td>
             <td><i class="fa fa-inr"></i><%=rs.getString(5) %>  </td>
             <td><%=rs.getString(6) %></td>
             <td><%=rs.getString(7) %></td>
             <td><%=rs.getString(8) %></td>
             <td><%=rs.getString(11) %></td>
             <td><%=rs.getString(12) %></td>
             <td><%=rs.getString(13) %></td>
             <td><%=rs.getString(14) %></td>
            </tr>
            <td><%=rs.getString(1) %></td><td></td><td></td><td></td><td></td><td></td><td></td><td></td>
            <td></td>
             <td><a href="cancelOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Cancel <i class='fas fa-window-close'></i></a></td>
                <td><a href="deliveredOrdersAction.jsp?id=<%=rs.getString(2)%>&email=<%=rs.getString(1)%>">Delivered <i class='fas fa-dolly'></i></i></a></td>
         <%
    	   }
    	   }
         catch(Exception e)
       {
         System.out.println(e);
         }
         %>
        </table>
      <br>
      <br>
      <br>

</body>
</html>