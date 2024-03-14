<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Events</title>
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
<div class="topnav sticky">
            <center><h2>Red Mobile Store - Manage Events<i class="fa fa-edit"></i></h2></center>
            <h2><a href="../adminHome.jsp"><i class='fas fa-arrow-circle-left'>Back to Home</i></a></h2>
            
            <a href="addEvent.jsp"> Add Event <i class='fa fa-plus-square' style="color:green"></i></a>
            <a href="editEvent.jsp"> Edit Event <i class='fas fa-edit' style="color:blue"></i></a>
            <a href="deleteEvent.jsp"> Delete Event <i class='fas fa-trash' style="color:red"></i></a>
          </div>
           <br>
           <h2 class="prod">CLICK ON ADD OR EDIT OR DELETE EVENT FROM ABOVE</h2>
           <style>
           .prod{
           text-align:center;
           }
           </style>
           <h4 class="special">-All Events</h4>
<div style="color: white; text-align: center; font-size: 30px;">All Events <i class='fab fa-elementor'></i></div>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Event Successfully Updated!</h3>
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
            <th scope="col">From</th>
            <th scope="col">To</th>
           
          </tr>
        </thead>
        <tbody>
       <%
       try{
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