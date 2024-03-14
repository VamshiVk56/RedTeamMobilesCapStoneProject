<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@page errorPage="error.jsp" %>
<%@include file="../../footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
<title>All Coupons</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<link rel="stylesheet" href="../../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
    <!--Header-->
    <br>
    <div class="topnav sticky">
            <center><h2 class="red"><img src="../../image/apple_raw.png" width="28">Red Mobile Store - Manage Coupons<i class="fa fa-edit"></i></h2></center>
            <style>
       .red{
       font-family: "URW Chancery L", cursive;
       }
       </style>
            <h2><a href="../adminHome.jsp"><i class='fas fa-arrow-circle-left'>Back to Home</i></a></h2>
            
            <a href="addCoupon.jsp"> Add Coupon <i class='fa fa-plus-square' style="color:green"></i></a>
            <a href="editCoupon.jsp"> Edit Coupon <i class='fas fa-edit' style="color:blue"></i></a>
            <a href="deleteCoupon.jsp"> Delete Coupon <i class='fas fa-trash' style="color:red"></i></a>
            <a href="../../logout.jsp">Logout <i class='fas fa-share-square' style="color:red"></i></a>
         
         <div class="search-container">
             <form action="couponSearch.jsp" method="post">
             <input type="text" placeholder="Search" name="search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
            </div>
         
          </div>
           <br>
           <h2 class="prod">CLICK ON ADD OR EDIT OR DELETE COUPON TO MANAGE COUPONS</h2>
           <style>
           .prod{
           font-family: "URW Chancery L", cursive;
           text-align:center;
           }
           </style>
           <h4 class="special">-All Coupons</h4>
<style>
.special
{
text-align:center;
color:navy;
}
</style>
           
           <!--table-->
            <table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">DISCOUNT</th>
            <th scope="col">APPLICABLE BRAND</th>
            
            
            
          </tr>
        </thead>
        <tbody>
            
            <%
       try{
    	   Connection con=ConnectionProvider.getCon();
    	   Statement st=con.createStatement();
    	   ResultSet rs=st.executeQuery("select * from coupon");
    	   while(rs.next())
    	   {
       %>
        <tr>
            <td><%=rs.getString(1) %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(3) %></td>
            <td><%=rs.getString(4) %></td>
            <td><%=rs.getString(5) %></td>
            
            
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
      <br><br>
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
           
