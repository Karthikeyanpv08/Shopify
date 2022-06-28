<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>

<style>
   body {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-image: url("https://cdn2.vectorstock.com/i/1000x1000/08/11/discount-background-sale-vector-9280811.jpg");
  background-repeat: no-repeat;
  background-position: float;
  background-size: cover;
}
.button{
margin-left:40%;
}

</style>

</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Coupon Added Successfully!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try Again!</h3>
<%} %>

<form action="CouponAction.jsp" method="post">

<div class="left-div">
 <h3>Enter Coupon Name</h3>
 <input class="input-style" type="text" name="couponName" placeholder="Enter Coupon Name" required>
 
<hr>
</div>

<div class="right-div">
<h3>Enter Coupon Code</h3>
 <input class="input-style" type="text" name="couponCode" placeholder="Enter Coupon Code" required>

<hr>
</div>
<div class="left-div">
<h3>Enter Discount</h3>
 <input class="input-style" type="text" name="discount" placeholder="Enter Discount" required>
</div>
<br><br><br>
 <button class="button" style="width: 20%;">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>