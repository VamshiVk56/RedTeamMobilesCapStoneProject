<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
</head>
<body>
<div style="color: navy; text-align: center; font-size: 30px;"><b>Search Results </b><i class="fa fa-search"></i></div>

<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">STATUS</th>
            <th scope="col">IMAGE</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
int z=0;
try
{
    String search=request.getParameter("search");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from products where name like '%"+search+"%' or description like '%"+search+"%' or category like '%"+search+"%' and active='Yes'");
	while(rs.next())
	{
		z=1;
%>
          <tr>
             <td><%=rs.getString(1) %></td>
             <td><%=rs.getString(2) %></td>
             <td><%=rs.getString(3) %></td>
             <td><%=rs.getString(4) %></td>
             <td><i class="fa fa-inr"></i> <%=rs.getString(5) %></td>
             <td><%=rs.getString(6) %></td>
             <td><img src="<%=rs.getString(7) %>.jpg" alt="product image" style="width:118px;height:128px;"></td>
             <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to Cart<i class='fas-fa cart-plus'></i></a></td>
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
      	<%if(z==0){ %>
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
	    <%} %>
      <br>
      <br>
      <br>
      <div class="footer">
          <p>All rights reserved by Red Mobile Store</p>
      </div>

</body>
</html>