<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String description=request.getParameter("description");
String fromDate=request.getParameter("fromDate");
String toDate=request.getParameter("toDate");
String coupon=request.getParameter("coupon");
String brand=request.getParameter("brand");
String discount=request.getParameter("discount");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert event values(?,?,?,?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, description);
	ps.setString(4, fromDate);
	ps.setString(5, toDate);
	ps.setString(6, coupon);
	ps.setString(7, brand);
	ps.setString(8, discount);
	ps.executeUpdate();
	response.sendRedirect("addEvent.jsp?msg=done");
}
catch(Exception e)
{
  response.sendRedirect("addEvent.jsp?msg=wrong");
}%>