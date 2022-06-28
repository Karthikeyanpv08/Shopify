<%@page import = "com.project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%@include file = "changeDetailsHeader.jsp" %>
<%@include file = "footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
<style>
hr
{
width: 30%;
}
body
{

  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-image: url("https://cdn.wallpapersafari.com/75/52/89ZbFC.jpg");
  background-repeat: no-repeat;
  background-size: cover;
}
h3
{
	text-align: center;
	color: white;
}

</style>


</head>
<body>
<%
String msg = request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
 <input class="input-style" type="number" name="mobileNumber" placeholder="Enter Your New Mobile Number" required>
 <hr>
<h3>Enter Password (For Security)</h3>
 <input class="input-style" type="password" name="password" placeholder="Enter Password(For Security)" required>
<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>