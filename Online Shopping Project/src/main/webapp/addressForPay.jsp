<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="java.sql.*"%>
<%@page import="com.project.ConnectionProvider"%>
<%@include file="header.jsp" %>
<%@include file="footer.jsp"%>
<html>
<head>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
if(window.history.forward(1) != null){
	window.history.forward(1);
}
</script>

<style>
    
body
{

  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-image: url("https://cdn4.vectorstock.com/i/1000x1000/34/93/web-page-background-vector-9333493.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

a
{
	text-decoration: none;
}
.sticky {
  position: -webkit-sticky;
  position: sticky;
  top: 0;
}

table {
  border: 1px solid #ccc;
  border-collapse: collapse;
  margin: 0;
  padding: 0;
  width: 100%;
  /*margin-left: 5%;*/
  table-layout: fixed;
}

table caption {
  font-size: 1.5em;
  margin: .5em 0 .75em;
}

table tr {
  background-color: #f8f8f8;
  border: 1px solid #ddd;
  padding: .35em;
}

table th,
table td {
  padding: .625em;
  text-align: center;
}

table th {
  font-size: .85em;
  letter-spacing: .1em;
  text-transform: uppercase;
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }

  table caption {
    font-size: 1.3em;
  }
  
  table thead {
    border: none;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
  }
  
  table tr {
    border-bottom: 3px solid #ddd;
    display: block;
    margin-bottom: .625em;
  }
  
  table td {
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .8em;
    text-align: right;
  }
  
  table td::before {
    /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
    content: attr(data-label);
    float: left;
    font-weight: bold;
    text-transform: uppercase;
  }
  
  table td:last-child {
    border-bottom: 0;
  }
}

/*Header Css*/
* {box-sizing: border-box;}


/*footer*/
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:#ccc;
   color:black;
   text-align: center;
}





.input-style {
  width: 90%;
  padding: 12px 20px;
  margin-left:5%;
  box-sizing: border-box;
  border: none;
  background-color:white;
  color: black;
  font-size: 16px;
}

input[type=text]:focus, textarea:focus,button:focus{
  outline: 4px solid orange;
  background-color:rgb(224, 255, 219);     /* oranges! yey */
}

.button {
  background-color: aqua;
  border: none;
  color: black;
  padding: 12px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  margin-left:5%;
  font-size: 16px;
  width: 90%;
   border-radius: 25px;
}

.button:hover {
  background-color: #555555;
  color: white;
}

hr
{
	width: 90%
}
h3
{
	text-align: center;
	color: white;
}
.alert
{
	color:yellow;
}

.profile-style
{
	border-style: dotted;
	
}

.left-div
{
	width: 50%;
	display:inline-block;
}

.right-div
{
	float:right;
	width: 50%;
	display:inline-block;
}

</style>

</head>


<body>

<form action="addressPaymentForOrderAction.jsp" method="post">
<div class="left-div">
 <h3>Enter Address</h3>
 
 <input  class="input-style" type="text" name="address" value="" placeholder="Enter the address" required>
 </div>

<div class="right-div">
<h3>Enter city</h3>
<input  class="input-style" type="text" name="city" value="" placeholder="Enter the city" required>

</div> 

<div class="left-div">
<h3>Enter State</h3>
<input  class="input-style" type="text" name="state" value="" placeholder="Enter the state" required>

</div>

<div class="right-div">
<h3>Enter country</h3>
<input  class="input-style" type="text" name="country" value="" placeholder="Enter the country" required>

</div>
<h3 style="color: red">*If there is no address its mean that you did not set you address!</h3>
<h3 style="color: red">*This address will also updated to your profile</h3>
<hr style="width: 100%">
<div class="left-div">
<h3>Select way of Payment</h3>
 <select name="paymentMethod" class="input-style">
 <option value="Cash on delivery(COD)">Cash on Delivery(COD)</option>
  <option value="Online Payment">Online Payment</option>
 
 
 </select>
</div>

<div class="right-div">
<h3>Pay online on this shopify@pay.com</h3>

<input  class="input-style" type="text" name="transactionId" placeholder="Enter Transaction Id" required>

<h3 style="color: red">*If you select online Payment then enter you transaction ID here otherwise please type NA</h3>
</div>
<hr style="width: 100%">

<div class="left-div">
<h3>Mobile Number</h3>
<input  class="input-style" type="text" name="mobileNumber" value="" placeholder="Enter mobile Number" required>

<h3 style="color: red">*This mobile number will also updated to your profile</h3>
</div>
<div class="right-div">
<h3 style="color: red">*If you enter wrong transaction id then your order will we can cancel!</h3>
<button class="button" type="submit">Proceed to Save <i class='far fa-arrow-alt-circle-right'></i></button>
<h3 style="color: red">*Fill form correctly</h3>
</div>

</form>


</body>
</html>