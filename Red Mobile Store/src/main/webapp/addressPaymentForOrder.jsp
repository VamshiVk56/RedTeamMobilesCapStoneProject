<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp" %>

<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Payment Address</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<script>
if(window.history.forward(1) !=null)
	window.history.forward(1);</script>
</head>
<body>
<br>
<table>
<thead>
<%
String email=session.getAttribute("email").toString();
int total=0;
int sno=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+ email +"' and address is NULL");
	while(rs1.next())
	{
		total=rs1.getInt(1);
	}
%>
<div style="color: blue; text-align: center; font-size: 30px;"><b>Payment Address</b> <i class='fa fa-address-card'></i></div>
          
          <th scope="col"><a href="myCart.jsp"><i class="fa fa-arrow-circle-left"> Back</i></a></th>
        </thead>
        <thead>
          <tr>
          <th scope="col">S.No</th>
            <th scope="col">Product Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> price</th>
            <th scope="col">Quantity</th>
            <th scope="col">Sub Total</th>
          </tr>
        </thead>
        <tbody>
        <%
        ResultSet rs=st.executeQuery("select * from products inner join cart on products.id=cart.product_id and cart.email='"+email+"'and cart.address is NULL");
        while(rs.next())
        {
        %>
          <tr>
          <%sno=sno+1; %>
           <td><%out.println(sno); %></td>
            <td><%=rs.getString(2) %></td>
            <td><%=rs.getString(4) %></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(5) %></td>
            <td> <%=rs.getString(10) %></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(12) %></td>
            </tr>
             </tbody>
           <%
        }
        ResultSet rs2=st.executeQuery("select * from users where email='"+email+"'");
        while(rs2.next())
        {
            %>
            <th></th><th></th><th></th><th></th><th></th>
         <th scope="col" style="background-color: yellow;">Total: Rs.<%out.println(total); %> </th>
        </tbody>
       
      </table>
<h3 style="color: blue">*Fill/Check details </h3>
<form action="addressPaymentForOrderAction.jsp" method="post">
 <div class="left-div">
 <h3>Enter Address</h3>
<input class="input-style" type="text" name="address" value="<%=rs2.getString(5)%>" placeholder="Enter Address" required>
 </div>

<div class="right-div">
<h3>Enter City</h3>
<input class="input-style" type="text" name="city" value="<%=rs2.getString(6)%>" placeholder="Enter City" required>
</div> 

<div class="left-div">
<h3>Enter State</h3>
<input class="input-style" type="text" name="state" value="<%=rs2.getString(7)%>" placeholder="Enter State" required>
</div>

<div class="right-div">
<h3>Enter country</h3>
<input class="input-style" type="text" name="country" value="<%=rs2.getString(8)%>" placeholder="Enter Country" required>
</div>
<h3 style="color: black">*If there is no address, it mean that you did not set your address earlier!</h3>
<h3 style="color: black">*This address will also updated to your profile</h3>
<hr style="width: 100%">

<div class="left-div">

<h3>Select Payment Method</h3>
 <select class="input-style" name="paymentMethod" required>
 <option value="Cash on delivery(COD)">Cash on delivery(COD)</option>
 <option value="Online Payment">Online Payment</option>
 
 </select>
</div>
<!-- 
<div class="right-div">
<h3 style="color: lime">If Online Payment, pay on this 'redmobilestore@pay.com'</h3>
<input class="input-style" type="text" name="transactionId" placeholder="Enter Transaction Id">
</div>
<h3 style="color: black">*If you select online Payment, then enter your transaction ID here. If COD, leave it blank</h3>
 -->



<div class="right-div">
<h3>Mobile Number</h3>
<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3)%>" placeholder="Enter Mobile Number" required>

</div>
<h3 style="color: black">*This mobile number will also updated to your profile</h3>
<hr style="width: 100%">



<div class="center-div">
<h3>Click here to Proceed <i class="fa fa-arrow-circle-down" aria-hidden="true"></i></h3>
<button class="button" type="submit">Proceed
<i class='far fa-arrow-alt-circle-right'></i>
</button>
<!--  <h3 style="color: black">*If you enter wrong transaction id, then your order will get cancelled!</h3> -->

</div>
</form>
<% }}
catch(Exception e)
{
    System.out.println(e);
}%>
      <br>
      <br>
      <br>
      <br>

</body>
</html>