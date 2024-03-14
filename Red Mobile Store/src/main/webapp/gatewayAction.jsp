<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String cardNumber=request.getParameter("cardNumber");
String name=request.getParameter("name");
String month=request.getParameter("month");
String year=request.getParameter("year");
String transactionId=("");
try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps=con.prepareStatement("insert into payment values(?,?,?,?,?,?)");
	ps.setString(1, cardNumber);
	ps.setString(2, name);
	ps.setString(3, month);
	ps.setString(4, year);
	ps.setString(5, transactionId);
	ps.setString(6, email);  
	ps.executeUpdate();
	session.setAttribute("email", email);
	response.sendRedirect("bill.jsp?msg=success");
}
catch(Exception e)
{
	System.out.print(e);
}
%>