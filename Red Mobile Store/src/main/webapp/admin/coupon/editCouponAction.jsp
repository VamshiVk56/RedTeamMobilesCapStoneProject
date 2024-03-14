<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String description=request.getParameter("description");
String discount=request.getParameter("discount");
String category=request.getParameter("category");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update coupon set name = '"+name+"',description = '"+description+"', discount = '"+discount+"', category = '"+category+"' where id = '"+id+"'");
	response.sendRedirect("editCoupon.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("editCoupon.jsp?msg=wrong");
}
%>