<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp" %>

<html>
<head>
<title>Bill</title>
<style>
   body 
   {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-color: white;
}
:root{
    --white-light: rgba(255, 255, 255, 0.5);
    --alice-blue: #f8f9fa;
    --carribean-green: #40c9a2;
    --gray: #ededed;
}

*{
    padding:0;
    margin: 0;
    box-sizing: border-box;
}

#header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 20px 80px;
    background-color: #E3E6F3;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.06);
}

#image{
  width: 100px;
  height:5rem;
}

#navbar {
    display:flex;
    align-items: center;
    justify-content: center;
}

#navbar li {
    list-style: none;
    padding: 0 20px;
    position: relative;

}

#navbar li a {
    text-decoration: none;
    font-size: 16px;
    font-weight: 600;
    color: #1a1a1a;
    transition: 0.3s ease;
}

#navbar li a:hover,
#navbar li a:active {
    color: orange;

}

#navbar li a:active::after {
    content: "";
    width: 30%;
    height: 2px;
    background-color: #088178;
    position: absolute;
    bottom: -4px;
    left: 20px;
}


/footer/
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
  outline: 4px solid var(--white-light);
  background-color:rgb(224, 255, 219);     /* oranges! yey */
}

.button {
  background-color: aqua;
  border: none;
  color: black;
  padding: 8px 15px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  font-size: 16px;
  width: 10%;
   border-radius: 25px;
}

.button:hover {
  background-color: pink;
  color: black;
}
h2
{
  float:left;


}

hr
{
	width: 100%
}
h3
{
	text-align: center;
	color: black;
}
.alert
{
	color:yellow;
}

.profile-style
{
	border-style: dotted;
	
}

.left-button
{
  float:right;
	width: 28%;
	display:inline-block;
}

.right-button
{
	float: right;
	width: 28%;
	display:inline-block;
}

.left-div
{
  float:left;
	width: 33.33%;
	display:inline-block;
}

.right-div
{
	float:right;
	width: 33.33%;
	display:inline-block;
}
.right-div-right
{
	float:right;
	width: 33.33%;
	display:inline-block;
}
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  -moz-box-align:center;
  width: 100%;
}

#customers td, #customers th 
{
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even)
{
  background-color: #f2f2f2;
}

#customers tr:hover 
{
  background-color: #ddd;
}

#customers th 
{
  padding-top: 12px;
  padding-bottom: 12px;
  text-align:center;
  background-color: white;
  color: black;
}
</style>
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
	}
	ResultSet rs2=st.executeQuery("select *from users inner join cart where cart.email='"+email+"' and cart.status='bill'");
	while(rs2.next())
	{
%>
<h3> Products Bill </h3>
<hr>
<div class="left-div"><h3>Name: <%=rs2.getString(1) %> </h3><br></div>
<div class="right-div-right"><h3>Email: <%out.println(email); %></h3><br></div>
<div class="right-div"><h3>Mobile Number: <%=rs2.getString(1) %></h3><br></div>  

<div class="left-div"><h3>Order Date:  <%=rs2.getString(21) %></h3><br></div>
<div class="right-div-right"><h3>Payment Method:  <%=rs2.getString(23) %></h3><br></div>
<div class="right-div"><h3>Expected Delivery:  <%=rs2.getString(22) %></h3><br></div>

<div class="left-div"><h3>Transaction Id:  <%=rs2.getString(24) %></h3><br></div>
<div class="right-div-right"><h3>City:  <%=rs2.getString(17) %></h3><br></div> 
<div class="right-div"><h3>Address:  <%=rs2.getString(16) %></h3><br></div> 

<div class="left-div"><h3>State:  <%=rs2.getString(18) %></h3><br></div>
<div class="right-div-right"><h3>Country:  <%=rs2.getString(19) %></h3><br></div>  
<hr>
<%
break;
}
%>

<br>
<table id="customers">
<h3> Product Details </h3>
<br>
  <tr>
    <th>S.No</th>
    <th>Product Name</th>
    <th>category</th>
    <th>Price</th>
    <th>Quantity</th>
     <th>Sub Total</th>
  </tr>
   <% 
  ResultSet rs1=st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.status='bill'");
  while(rs1.next())
  {
	  sno=sno+1;
  %>
  <tr>
    <td><%out.println(sno); %></td>
    <td><%=rs1.getString(17) %></td>
    <td><%=rs1.getString(18) %></td>
    <td><%=rs1.getString(20) %></td>
    <td><%=rs1.getString(3) %></td>
    <td><%=rs1.getString(5) %></td>
  </tr>
  <tr>
<%
} 
%>
</table>
<br><br><br><br>
<h2>Total:  <%out.println(total); %> </h2>
<a href="continueShopping.jsp"><button class="button left-button">Continue Shopping</button></a>
<a onclick="window.print();"><button class="button right-button">Print</button></a>
<br><br><br><br>
<%
}
catch(Exception e)
{
	System.out.println(e);
}
%>
</body>
</html>