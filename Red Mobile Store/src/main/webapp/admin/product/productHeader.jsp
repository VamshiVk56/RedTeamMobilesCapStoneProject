<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page errorPage="error.jsp" %>

<!DOCTYPE html>
<html>
<head>
<title>All Product</title>
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
    <br> 
    <div class="topnav sticky">  
       <h2 class="red"><img src="../../image/apple_raw.png" width="28">Red Mobile Store - Manage Products<i class="fa fa-edit"></i></h2>
           
            <h2><a href="../adminHome.jsp"><i class='fa fa-arrow-circle-left'>Back to Home</i></a></h2>
            <a href="addNewProduct.jsp">Add Product <i class='fa fa-plus-square' style="color:green"></i></a>
            <a href="editProduct.jsp">Edit product <i class='fa fa-edit' style="color:blue"></i></a>
            <a href="delete.jsp">Delete Product <i class='fa fa-trash' style="color:red"></i></a>
            <a href="../../logout.jsp">Logout <i class='fa fa-share-square' style="color:red"></i></a>
            
            <div class="search-container">
             <form action="productSearch.jsp" method="post">
             <input type="text" placeholder="Search" name="search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
            </div>
          </div>
           <br>
           <h2 class="prod">CLICK ON ADD OR EDIT OR DELETE PRODUCT TO MANAGE PRODUCTS</h2>
           <style>
           .prod{
           font-family: "URW Chancery L", cursive;
           text-align:center;
           }
           </style>
           <!--table-->
           <h4 class="special">-All Products</h4>
<style>
.special
{
text-align:center;
color:navy;
}
</style>
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
            <th scope="col">Edit</th>
            
          </tr>
        </thead>
        <tbody>
       <%
       try{
    	   Connection con=ConnectionProvider.getCon();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select * from products");
    	   while(rs.next())
    	   {
       %>
        <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(5) %></td>
            <td><%=rs.getString(6) %></td>
            <td> <img src="<%=rs.getString(7) %>.jpg" alt="product image" width="120" height="130"> </td>
            <td><a href="editProduct.jsp?id=<%=rs.getString(1) %>">Edit <i class='fa fa-edit'></i></a></td>
          </tr>
         <%
    	   }
         }
         catch(Exception e)
         {
         System.out.println(e);
         }%>
        </tbody>
      </table>
           
           
           
           
           
           
