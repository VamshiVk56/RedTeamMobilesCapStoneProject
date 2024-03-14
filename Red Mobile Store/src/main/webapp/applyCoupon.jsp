<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=session.getAttribute("email").toString();
String id=request.getParameter("id");
String brand=request.getParameter("brand");
String discount=request.getParameter("discount");
int z=0;
int total;
int product_price;
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from cart where product_id="+id+",category="+brand+" and email='"+email+"' and address is NULL");
	while(rs.next())
	{
		
	st.executeUpdate("update cart set total= where email='" +email+" ' and product_id='"+id+"' and address is NULL");
	response.sendRedirect("myCart.jsp?msg=dec");		
}}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("myCart.jsp?msg=invalid");
}
%>