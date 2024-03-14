<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Category</title>
<link rel = "icon" href ="https://upload.wikimedia.org/wikipedia/commons/a/ab/Android_O_Preview_Logo.png" type = "image/x-icon">
<div style="text-align: center; font-size: 30px;"><b>Results based on selected Category </b><i class="fa fa-code-fork"></i></div>
<br>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Status</th>
            <th scope="col">Image</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
        
<%
String category=request.getParameter("category");
int z=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from products where category like '%"+category+"%' and active='Yes'");
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
        <td><img src="<%=rs.getString(7) %>.jpg" alt="product image" style="width:188px;height:218px;"></td>
        
        <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to Cart <i class='fas-fa cart-plus'></i></a></td>
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
</body>
</html>