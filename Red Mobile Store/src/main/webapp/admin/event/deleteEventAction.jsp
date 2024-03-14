<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");

try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
    st.executeUpdate("delete from event where id = '"+id+"'");
	response.sendRedirect("deleteEvent.jsp?msg=done");
    
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("deleteEvent.jsp?msg=wrong");
}
%>