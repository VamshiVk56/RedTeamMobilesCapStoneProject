<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
    st.executeUpdate("delete from coupon where id = '"+id+"'");
	response.sendRedirect("deleteCoupon.jsp?msg=done");
    
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("deleteCoupon.jsp?msg=wrong");
}
%>