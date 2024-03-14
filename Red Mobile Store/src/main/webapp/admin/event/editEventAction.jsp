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


try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update event set name = '"+name+"',description = '"+description+"', fromDate = '"+fromDate+"', toDate = '"+toDate+"',coupon = '"+coupon+"',brand = '"+brand+"',discount = '"+discount+"' where id = '"+id+"'");
	response.sendRedirect("editEvent.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("editEvent.jsp?msg=wrong");
}
%>