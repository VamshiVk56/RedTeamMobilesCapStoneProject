<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="../../footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<title>Event Header</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<link rel="stylesheet" href="../../css/home-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<body>
 <div class="topnav sticky">  
            <center><h2><img src="../../image/apple_raw.png" width="28">Red Mobile Store - Manage Events<i class="fa fa-edit"></i></h2></center>
            <h2><a href="../adminHome.jsp"><i class='fas fa-arrow-circle-left'>Back to Home</i></a></h2>
            
            <a href="addEvent.jsp">Add Event <i class='fa fa-plus-square' style="color:green"></i></a>
            <a href="editEvent.jsp">Edit Event <i class='fas fa-edit' style="color:blue"></i></a>
            <a href="deleteEvent.jsp">Delete Event <i class='fas fa-trash' style="color:red"></i></a>
            <a href="../../logout.jsp">Logout <i class='fas fa-share-square' style="color:red"></i></a>
            
            <div class="search-container">
             <form action="eventSearch.jsp" method="post">
             <input type="text" placeholder="Search" name="search">
             <button type="submit"><i class="fa fa-search"></i></button>
             </form>
            </div>
          </div>
<div style="color: white; text-align: center; font-size: 30px;">Search results of events </div>
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
int z=0;
try
{
    String search=request.getParameter("search");
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from event where name like '%"+search+"%'");
	while(rs.next())
	{
		z=1;
%>
          <tr>
             <td><%=rs.getString(1) %></td>
             <td><%=rs.getString(2) %></td>
             <td><%=rs.getString(3) %></td>
             <td><%=rs.getString(4) %></td>
             <td> <%=rs.getString(5) %></td>
            
          </tr>
 <%
}
}
catch(Exception e)
{
	System.out.println(e);
}
%>
        </tbody>
      </table>
      	<%if(z==0){ %>
	<h1 style="color:white; text-align: center;">Nothing to show</h1>
	    <%} %>
      <br>
      <br>
      <br>
      <div class="footer">
          <p>All right reserved by Red Mobile Store</p>
      </div>

</body>
</html>