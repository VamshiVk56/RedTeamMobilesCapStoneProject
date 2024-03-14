<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../adminHeader.jsp" %>
<%@include file="../../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Coupons</title>
<link rel = "icon" href ="https://upload.wikimedia.org/wikipedia/commons/a/ab/Android_O_Preview_Logo.png" type = "image/x-icon">
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">All Coupons <i class='fab fa-elementor'></i></div>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Coupon Successfully Updated!</h3>
<%} %>
<% 
if("wrong".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try again!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Description</th>
            <th scope="col">Discount</th>
            
           
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
      <br>
      <br>
      <br>

</body>
</html>