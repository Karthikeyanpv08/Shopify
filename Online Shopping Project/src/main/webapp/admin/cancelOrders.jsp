<%@page import="com.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Home</title>
<style>
.th-style
{ width: 25%;}

body
{

  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-image: url("https://wallpaperaccess.com/full/2089163.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

</style>
</head>
<body>

<div style="color: white; text-align: center; font-size: 30px;">Cancel Orders <i class='fas fa-window-close'></i></div>

<h3 class="alert">Order Cancel Successfully!</h3>

<h3 class="alert">Successfully Updated!</h3>

<h3 class="alert">Some thing went wrong! Try Again!</h3>


<table id="customers">
          <tr>
          <th>Mobile Number</th>
            <th scope="col">Product Name</th>
            <th scope="col">Quantity</th>
            <th scope="col"><i class="fa fa-inr"></i> Sub Total</th>
            <th>Address</th>
            <th>City</th>
            <th>State</th>
            <th>Country</th>
            <th scope="col">Order Date</th>
             <th scope="col">Expected Delivery Date</th>
             <th scope="col">Payment Method</th>
              <th scope="col">T-ID</th>
              <th scope="col">Status</th>
          </tr>
        
       
          <tr>
          <td></td>
            <td></td>
            <td></td>
            <td><i class="fa fa-inr"></i>  </td>
                <td></td>
               <td></td>
                <td></td>
                 <td></td>
             <td></td>
              <td></td>
               <td></td>
               <td></td>
               <td></td>
               </tr>
 
        </table>
      <br>
      <br>
      <br>

</body>
</html>