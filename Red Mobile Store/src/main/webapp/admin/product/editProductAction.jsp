<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String description=request.getParameter("description");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");
String image=request.getParameter("image");
try{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("update products set name = '"+name+"',description = '"+description+"', category = '"+category+"', price = '"+price+"', active = '"+active+"',image = '"+image+"' where id = '"+id+"'");
	if(active.equals("No"))
	{
		st.executeUpdate("delete from cart where Product_id='"+id+"' and Address is NULL");
	}
	response.sendRedirect("editProduct.jsp?msg=done");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("editProduct.jsp?msg=wrong");
}
%>