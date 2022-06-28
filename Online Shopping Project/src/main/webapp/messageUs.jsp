<%@page import = "com.project.ConnectionProvider" %>
<%@page import = "java.sql.*" %>
<%@include file = "header.jsp" %>
<%@include file = "footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<style>

.input-style {
  width: 60%;
  padding: 12px 20px;
  margin-left:20%;
  box-sizing: border-box;
  border: none;
  background-color:white;
  color: black;
  font-size: 16px;
}

body
{

  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
  background-image: url("https://t4.ftcdn.net/jpg/02/69/27/55/360_F_269275503_fL3Dx8hgvCDgrnuvbm8XLPHJ461QIM4o.jpg");
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: cover;
}

</style>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div><br>
<%
String msg = request.getParameter("msg");

if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>
<form action="messageUsAction.jsp" id="form" method="post">
<input class="input-style" name="email" type="text" value="<% out.println(email); %>">
<hr>

<input class="input-style"  name="subject" type="text" placeholder="subject" required>
<hr>
<textarea class="input-style" name="body" placeholder="Enter Your Message"></textarea>
<hr>
<button class="button" type="submit">Send <i class="far fa-arrow-alt-circle-right"></i></button>
</form>
<br><br><br>
</body>
</html>
