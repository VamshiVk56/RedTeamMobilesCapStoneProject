<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String description=request.getParameter("description");
String discount=request.getParameter("discount");
String category=request.getParameter("category");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert coupon values(?,?,?,?,?)");
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, description);
	ps.setString(4, discount);
	ps.setString(5, category);
	ps.executeUpdate();
	response.sendRedirect("addCoupon.jsp?msg=done");
}
catch(Exception e)
{
  response.sendRedirect("addCoupon.jsp?msg=wrong");
}%>