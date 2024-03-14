<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../../footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<title>Product Header</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<link rel="stylesheet" href="../../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<style>
       .red{
       text-align:center;
       font-family: "URW Chancery L", cursive;
       }
</style>
</head>
<body>
 <div class="topnav sticky">  
            <h2 class="red"><img src="../../image/apple_raw.png" width="28">Red Mobile Store - Manage Products<i class="fa fa-edit"></i></h2>
            <h2><a href="../adminHome.jsp"><i class='fas fa-arrow-circle-left'>Back to Home</i></a></h2>
            
            <a href="addNewProduct.jsp">Add Product <i class='fa fa-plus-square' style="color:green"></i></a>
            <a href="editProduct.jsp">Edit product <i class='fas fa-edit' style="color:blue"></i></a>
            <a href="delete.jsp">Delete Product <i class='fas fa-trash' style="color:red"></i></a>
            <a href="../../logout.jsp">Logout <i class='fas fa-share-square' style="color:red"></i></a>
            
            <div class="search-container">
             <form action="productSearch.jsp" method="post">
             <input type="text" placeholder="Search" name="search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
            </div>
          </div>
<div style="color: white; text-align: center; font-size: 30px;"><b>Search Results </b><i class="fa fa-search"></i></div>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Image</th>
            <th scope="col">Edit</th>
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
	ResultSet rs=st.executeQuery("select * from products where name like '%"+search+"%' or category like '%"+search+"%' or description like '%"+search+"%'");
	while(rs.next())
	{
		z=1;
%>
          <tr>
             <td><%=rs.getString(1) %></td>
             <td><%=rs.getString(2) %></td>
             <td><%=rs.getString(3) %></td>
             <td><i class="fa fa-inr"></i><%=rs.getString(4) %></td>
             <td> <%=rs.getString(6) %></td>
             <td> <img src="<%=rs.getString(7) %>.jpg" alt="product image" width="120" height="130"> </td>
             <td><a href="editProduct.jsp?id=<%=rs.getString(1) %>">Edit <i class='fa fa-edit'></i></a></td>
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
          <p>All right reserved by Red Mobile Store</p>
      </div>

</body>
</html>