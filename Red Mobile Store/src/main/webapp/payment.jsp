<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Online Payment</title>
<link rel = "icon" href ="https://www.queness.com/resources/images/png/apple_raw.png" type = "image/x-icon">
<script>
if(window.history.forward(1) !=null)
	window.history.forward(1);</script>
</head>
<body>
<div style="color: gold; text-align: center; font-size: 30px;">Online Payment <i class='far	fa-credit-card'></i></div>
          
         <button> <a href="addressPaymentForOrder.jsp"><i class="fa fa-arrow-circle-left"> Back</i></a></button>
           <hr style="width: 100%">
<h3 style="color: gold">*Fill your Card Details </h3>

<form action="paymentAction.jsp" method="post">
 <div class="left-div">
 <h3>Enter Card Number</h3>
<input class="input-style" type="text" name="cardNumber" placeholder="Enter Card Number" required>
 </div>

<div class="right-div">
<h3>Enter Name as on Card</h3>
<input class="input-style" type="text" name="name" placeholder="Enter Full Name" required>
</div> 

<div class="left-div">
<h3>Enter Card Expire date</h3>
<input class="input-style" type="month" name="expireDate" placeholder="Select Date" required>
</div>

<div class="right-div">
<h3>Enter CVV</h3>
<input class="input-style" type="password" name="cvv" placeholder="Enter CVV" required>
</div>
<hr style="width: 100%">

<div class="center-div">
<button class="button" type="submit">Pay
<i class="fa fa-inr"></i>
</button>

</div>
</form>

</body>
</html>