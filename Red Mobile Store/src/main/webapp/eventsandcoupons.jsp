<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Events & Coupons</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">

</head>
<body>
<div style="color: blue; text-align: center; font-size: 30px;"><b>Events </b><i class='far fa-calendar-alt'></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">From Date</th>
            <th scope="col">To Date</th>
            <th scope="col">Coupon Name</th>
            <th scope="col">Applicable Brands</th>
            <th scope="col"><i class="fa fa-inr"></i>Discount</th>
          </tr>
        </thead>
        <tbody>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from event");
	while(rs.next())
	{
%>
      <tr>
      
        <td><%=rs.getString(1) %></td>
        <td><%=rs.getString(2) %></td>
        <td><%=rs.getString(3) %></td>
        <td><%=rs.getString(4) %></td>
        <td><%=rs.getString(5) %></td>
        <td><%=rs.getString(6) %></td>
        <td><%=rs.getString(7) %></td>
        <td><i class="fa fa-inr"></i><%=rs.getString(8) %></td>
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