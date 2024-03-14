<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Payment</title>
	<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
	<link rel="stylesheet" type="text/css" href="css/payment.css">
</head>
<body>
<%
String email=session.getAttribute("email").toString();
try
{
	int total=0;
	int sno=0;
	Connection con=ConnectionProvider.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"' and status='bill'");
    while(rs.next())
    {
    	total=rs.getInt(1);
    	%>
<header>
	<div class="container">
		<div class="center">
			<h3 align="center">PAYMENT</h3>
			<form action="gatewayAction.jsp" method="post">
				Accepted Cards <br>
				<img src="image/card1.png" width="100">
				<img src="image/card2.png" width="50">
				<br><br>

				Debit/Credit Card Number
			<input type="text" name="cardNumber" placeholder="Enter card number" required><br>
			
			Name as on card
			<input type="text" name="name" placeholder="Enter Name" required><br><br>
				
				Expire Month
				<select name="month" value="month" required>
							<option>Choose Month..</option>
							<option>JanuarY</option>
							<option>Febuary</option>
							<option>March</option>
							<option>April</option>
							<option>May</option>
							<option>June</option>
							<option>July</option>
							<option>August</option>
							<option>September</option>
							<option>October</option>
							<option>November</option>
							<option>December</option>
						</select>
				
					<label>
						Expire Year
						<select name="year" value="year" required>
							<option>Choose Year..</option>
							<option>2022</option>
							<option>2023</option>
							<option>2024</option>
							<option>2025</option>
							<option>2026</option>
							<option>2027</option>
							<option>2028</option>
							<option>2029</option>
						</select>
					</label><br><br>
						<label>
						CVV
						<input type="number" name="cvv" placeholder="CVV" required>
					</label>
				<br>
			
			<input type="submit" name="submit" value="PAY  Rs.<%out.println(total); %>">
		</form>
		</div>
	</div>
</header>
<%}} 
catch(Exception e)
{
   System.out.println(e);	
}
%>
</body>
</html>